import hashlib
import http.client
import io
import json
from http.server import BaseHTTPRequestHandler, HTTPServer
from pathlib import Path
import tempfile
import threading
import unittest
from unittest.mock import patch
from urllib.error import HTTPError
from urllib.request import HTTPSHandler, ProxyHandler, build_opener

from wukong.adapters import SourceIntegrityError
from wukong.content_packs import ContentPackManager, create_content_pack_archive, validate_content_index
from wukong.github_content import GitHubReleases, archive_parts, publish_release_packs


class FakeReleases:
    def __init__(self, fail=False):
        self.fail = fail
        self.uploads = {}
        self.published = False

    def create(self, tag):
        return {'id': 42, 'tag_name': tag}

    def upload(self, release, path, progress=None):
        if self.fail:
            raise RuntimeError('upload interrupted')
        data = path.read_bytes()
        self.uploads[path.name] = data
        return {'browser_download_url': f"https://github.com/test/repo/releases/download/untagged-placeholder/{path.name}",
                'name': path.name,
                'size': len(data), 'digest': 'sha256:' + hashlib.sha256(data).hexdigest()}

    def publish(self, release):
        self.published = True


class GitHubContentTests(unittest.TestCase):
    def test_create_release_through_real_urllib_redirect_handling(self):
        from wukong.github_http import _NoRedirect
        received = []

        class Handler(BaseHTTPRequestHandler):
            def do_POST(self):
                received.append((self.path, self.rfile.read(int(self.headers['Content-Length'])),
                                 self.headers['Authorization']))
                if self.path.startswith('/repos/'):
                    self.send_response(307)
                    self.send_header('Location', '/repositories/123/releases')
                    self.end_headers()
                else:
                    self.send_response(201)
                    self.end_headers()
                    self.wfile.write(b'{"id":42}')

            def log_message(self, *args):
                pass

        with HTTPServer(('127.0.0.1', 0), Handler) as server:
            class LocalTransport(HTTPSHandler):
                def https_open(self, request):
                    return self.do_open(
                        lambda host, **kwargs: http.client.HTTPConnection('127.0.0.1', server.server_port, **kwargs),
                        request)

            worker = threading.Thread(target=server.serve_forever, daemon=True)
            worker.start()
            try:
                opener = build_opener(ProxyHandler({}), _NoRedirect(), LocalTransport())
                with patch('wukong.github_http._opener', opener):
                    self.assertEqual(GitHubReleases('test/repo', 'secret').create('test')['id'], 42)
            finally:
                server.shutdown()
                worker.join()
        self.assertEqual([row[0] for row in received], ['/repos/test/repo/releases', '/repositories/123/releases'])
        self.assertEqual(received[0][1:], received[1][1:])

    def test_create_release_follows_307_preserving_post_and_payload(self):
        destination = 'https://api.github.com/repositories/123/releases'
        redirect = HTTPError('https://api.github.com/repos/test/repo/releases', 307,
                             'Temporary Redirect', {'Location': destination}, io.BytesIO())
        with patch('wukong.github_http._opener.open', side_effect=[redirect, io.BytesIO(b'{"id":42}')]) as api:
            self.assertEqual(GitHubReleases('test/repo', 'secret').create('content-test')['id'], 42)
        original = api.call_args_list[0].args[0]
        redirected = api.call_args_list[1].args[0]
        self.assertEqual(redirected.full_url, destination)
        self.assertEqual(redirected.get_method(), 'POST')
        self.assertEqual(redirected.data, original.data)
        self.assertEqual(redirected.get_header('Authorization'), 'Bearer secret')

    def test_release_redirects_preserve_write_methods(self):
        for status in (301, 302, 307, 308):
            for method in ('POST', 'PATCH', 'PUT', 'DELETE'):
                with self.subTest(status=status, method=method):
                    redirect = HTTPError('https://api.github.com/repos/test/repo/releases', status,
                                         'Redirect', {'Location': '/repositories/123/releases'}, io.BytesIO())
                    with patch('wukong.github_http._opener.open', side_effect=[redirect, io.BytesIO(b'{}')]) as api:
                        GitHubReleases('test/repo', 'secret').request('releases', {'draft': False}, method=method)
                    request = api.call_args.args[0]
                    self.assertEqual(request.get_method(), method)
                    self.assertEqual(json.loads(request.data), {'draft': False})

    def test_release_redirect_rejects_unsafe_destinations_and_loops(self):
        for destination in ('https://evil.example/releases', 'http://api.github.com/releases',
                            'https://api.github.com:444/releases', 'https://user@api.github.com/releases', None):
            with self.subTest(destination=destination):
                headers = {} if destination is None else {'Location': destination}
                redirect = HTTPError('https://api.github.com/repos/test/repo/releases', 307,
                                     'Redirect', headers, io.BytesIO())
                with patch('wukong.github_http._opener.open', side_effect=redirect) as api:
                    with self.assertRaises(RuntimeError):
                        GitHubReleases('test/repo', 'secret').create('test')
                self.assertEqual(api.call_count, 1)
        def loop(*args, **kwargs):
            raise HTTPError(args[0].full_url, 307, 'Redirect', {'Location': '/loop'}, io.BytesIO())
        with patch('wukong.github_http._opener.open', side_effect=loop) as api:
            with self.assertRaisesRegex(RuntimeError, 'redirect limit'):
                GitHubReleases('test/repo', 'secret').create('test')
        self.assertEqual(api.call_count, 6)

    def test_split_assets_roundtrip_and_cleanup(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'archive.tar.zst'
            data = b'abcdefghij'
            path.write_bytes(data)
            pieces = []
            names = []
            for part in archive_parts(path, limit=3):
                pieces.append(part.read_bytes())
                names.append(part)
            self.assertEqual(b''.join(pieces), data)
            self.assertTrue(all(not part.exists() for part in names))
            self.assertEqual(path.read_bytes(), data)

    def test_publish_new_hashes_without_overwriting_previous_assets(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            mod = root / 'Content/MOD/Test'
            mod.mkdir(parents=True)
            apk = mod / 'app.apk'
            apk.write_bytes(b'first pack')
            index = root / 'index.json'
            client = FakeReleases()

            def create(root, pack, output):
                # Exercise real TAR member/hash checks without external zstd.
                tar = output.with_suffix('')
                record = create_content_pack_archive(root, pack, tar)
                tar.rename(output)
                return record

            with patch('wukong.github_content.create_content_pack_archive', side_effect=create), \
                 patch('wukong.github_content.publish_index_to_github', return_value='commit') as publish:
                first = publish_release_packs(root, index, repository='test/repo', token='secret', client=client)
                self.assertTrue(client.published)
                old = json.loads(index.read_text())['packs'][0]
                self.assertNotIn('untagged-', old['archive']['uri'])
                apk.write_bytes(b'updated pack')
                second = publish_release_packs(root, index, repository='test/repo', token='secret', client=client)
                new = json.loads(index.read_text())['packs'][0]
                self.assertNotEqual(old['archive']['uri'], new['archive']['uri'])
                self.assertNotEqual(old['files'][0]['sha256'], new['files'][0]['sha256'])
                self.assertNotEqual(first['tag'], second['tag'])
                self.assertEqual(publish.call_count, 2)
                before = index.read_bytes()
                with self.assertRaisesRegex(RuntimeError, 'upload interrupted'):
                    publish_release_packs(root, index, repository='test/repo', token='secret', client=FakeReleases(fail=True))
                self.assertEqual(index.read_bytes(), before)
                with patch('wukong.github_content.publish_index_to_github', side_effect=RuntimeError('commit failed')):
                    with self.assertRaisesRegex(RuntimeError, 'commit failed'):
                        publish_release_packs(root, index, repository='test/repo', token='secret', client=client)
                self.assertEqual(index.read_bytes(), before)

    def test_https_multipart_install_needs_no_drive_and_corruption_preserves_target(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'source/MOD/Test'
            source.mkdir(parents=True)
            (source / 'app.apk').write_bytes(b'unchanged APK bytes')
            from wukong.content_packs import build_content_pack_record
            pack = build_content_pack_record(root / 'source', remote='https://github.com/test/repo/releases/download/v1', pack_id='MOD/Test')
            tar = root / 'pack.tar'
            archive = create_content_pack_archive(root / 'source', pack, tar)
            data = tar.read_bytes()
            parts = [data[:500], data[500:]]
            urls = [f'https://github.com/test/repo/releases/download/v1/part{i}' for i in range(2)]
            archive.update(uri=urls[0], parts=[{'uri': url, 'sizeBytes': len(part), 'sha256': hashlib.sha256(part).hexdigest()}
                                              for url, part in zip(urls, parts)])
            pack['archive'] = archive
            index = {'schemaVersion': 1, 'packs': [pack]}
            manager = ContentPackManager(root / 'installed', run_command=lambda *args: self.fail('rclone must not run'))
            with patch('wukong.content_packs.urlopen', side_effect=lambda req, **kwargs: io.BytesIO(parts[urls.index(req.full_url)])):
                installed = manager.install(index, 'MOD/Test')
            self.assertEqual((installed / 'app.apk').read_bytes(), b'unchanged APK bytes')
            with patch('wukong.content_packs.urlopen', return_value=io.BytesIO(b'corrupt')):
                with self.assertRaises(SourceIntegrityError):
                    manager.install(index, 'MOD/Test')
            self.assertEqual((installed / 'app.apk').read_bytes(), b'unchanged APK bytes')

    def test_git_stark_is_not_overwritten_by_old_drive_archive(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'STARK').mkdir()
            (root / 'STARK/new.py').write_bytes(b'new shared version')
            pack = {'id': 'STARK/common', 'target': 'STARK', 'source': 'git', 'files': [], 'sizeBytes': 0}
            index = {'schemaVersion': 1, 'packs': [pack]}
            validate_content_index(index)
            manager = ContentPackManager(root, run_command=lambda *args: self.fail('no remote STARK replacement'))
            self.assertEqual(manager.install(index, 'STARK/common'), (root / 'STARK').resolve())

    def test_release_catalog_refresh_uses_matching_new_manifest_not_old_hashes(self):
        from wukong.content_packs import load_content_index
        with tempfile.TemporaryDirectory() as directory:
            index = Path(directory) / 'index.json'
            old = {'schemaVersion': 1, 'packs': [], 'catalogUri': 'https://raw.githubusercontent.com/test/repo/main/content-packs/index.json'}
            index.write_text(json.dumps(old))
            current = {**old, 'releaseTag': 'new-snapshot'}
            with patch('wukong.content_packs.urlopen', return_value=io.BytesIO(json.dumps(current).encode())):
                self.assertEqual(load_content_index(index), current)
            with patch('wukong.content_packs.urlopen', side_effect=OSError('offline')):
                with self.assertWarns(RuntimeWarning):
                    self.assertEqual(load_content_index(index), old)
            with patch('wukong.content_packs.urlopen', return_value=io.BytesIO(b'{bad')):
                with self.assertRaises(ValueError):
                    load_content_index(index)

    def test_legacy_drive_sync_index_does_not_shadow_new_installer_catalog(self):
        from wukong.content_packs import preferred_content_index
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            bundled = root / 'Runtime/Scripts/content-packs/index.json'
            synced = root / 'Data/ContentSync/index.json'
            synced.parent.mkdir(parents=True)
            synced.write_text(json.dumps({'schemaVersion': 1, 'packs': []}))
            self.assertEqual(preferred_content_index(root / 'Content', bundled), bundled)
            synced.write_text(json.dumps({'releaseTag': 'new', 'catalogUri': 'https://raw.githubusercontent.com/test/repo/main/content-packs/index.json'}))
            self.assertEqual(preferred_content_index(root / 'Content', bundled), synced)

    def test_git_checkout_catalog_includes_patch_only_shared_mods_without_empty_directories(self):
        from tools import export_mini_app_catalog as exporter
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            patcher = root / 'STARK/Settings_mod/patch_Settings_mod/patch_settings.py'
            patcher.parent.mkdir(parents=True)
            patcher.write_text('# actual shared patch entry')
            index = root / 'index.json'
            index.write_text(json.dumps({'schemaVersion': 1, 'packs': [
                {'id': 'MOD/Test', 'target': 'MOD/Test', 'files': [], 'sizeBytes': 0,
                 'archive': {'uri': 'https://github.com/test/repo/releases/download/v1/pack.tar',
                             'sha256': 'a'*64, 'md5': 'b'*32, 'sizeBytes': 1}}]}))
            devices = root / 'devices.json'
            devices.write_text('[]')
            with patch.object(exporter, 'BUNDLED_SHARED_MOD_ROOT', root / 'STARK'):
                catalog = exporter.export_catalog(index, devices, root / 'catalog.json')
            self.assertIn('Settings_mod', catalog['modsByVersion']['Test'])

    def test_github_manifest_publish_merges_unselected_packs_and_uses_cas(self):
        import base64
        from wukong.content_sync import publish_index_to_github
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'index.json'
            def pack(name, digest):
                return {'id': 'MOD/' + name, 'target': 'MOD/' + name, 'sizeBytes': 0, 'files': [],
                        'archive': {'uri': 'https://github.com/test/repo/releases/download/a/file.tar', 'sha256': digest * 64,
                                    'md5': 'b' * 32, 'sizeBytes': 1}}
            local = {'schemaVersion': 1, 'packs': [pack('A', 'a'), pack('B', 'b')]}
            remote = {'schemaVersion': 1, 'packs': [pack('A', 'c'), pack('B', 'd')]}
            path.write_text(json.dumps(local))
            replies = [io.BytesIO(json.dumps({'sha': 'current-sha', 'content': base64.b64encode(json.dumps(remote).encode()).decode()}).encode()),
                       io.BytesIO(b'{"commit":{"sha":"new-commit"}}')]
            with patch('wukong.content_sync.urlopen', side_effect=replies) as api:
                self.assertEqual(publish_index_to_github(path, repository='test/repo', token='secret', merge_pack_ids={'MOD/A'}), 'new-commit')
            uploaded = json.loads(api.call_args_list[1].args[0].data)
            self.assertEqual(uploaded['sha'], 'current-sha')
            merged = json.loads(base64.b64decode(uploaded['content']))
            self.assertEqual(merged['packs'][0], local['packs'][0])
            self.assertEqual(merged['packs'][1], remote['packs'][1])
            self.assertEqual(json.loads(path.read_text()), merged)


if __name__ == '__main__':
    unittest.main()
