import io
import tempfile
import unittest
import sys
from pathlib import Path
from unittest.mock import patch

from wukong.adapters import HttpSourceAdapter, RcloneStorageAdapter


class TransferProgressTests(unittest.TestCase):
    def test_truncated_http_body_does_not_report_transfer_complete(self):
        class Response(io.BytesIO):
            headers = {'Content-Length': '100', 'Content-Type': 'application/zip'}
            status = 200
            def geturl(self): return 'https://example.com/rom.zip'
            def getcode(self): return self.status
        class Opener:
            def open(self, *args, **kwargs): return Response(b'incomplete')
        samples = []
        adapter = HttpSourceAdapter(opener=Opener(), attempts=1)
        adapter.progress_callback = samples.append
        with tempfile.TemporaryDirectory() as directory, patch('wukong.adapters.validate_http_url'):
            with self.assertRaises(Exception):
                adapter.materialize('https://example.com/rom.zip', Path(directory) / 'rom.zip')
        self.assertFalse(any(sample.get('status') == 'complete' for sample in samples))

    def test_stream_upload_reads_network_stats_without_blocking_stdin(self):
        code = ("import sys,json;data=sys.stdin.buffer.read();"
                "print(json.dumps({'stats':{'bytes':len(data),'totalBytes':len(data),'speed':3,'eta':0}}),"
                "file=sys.stderr,flush=True)")
        samples = []
        storage = RcloneStorageAdapter()
        def write(output):
            output.write(b'abc')
            return 'digest', 3
        result = storage._upload_stream([sys.executable, '-c', code], write, progress_callback=samples.append)
        self.assertEqual(result, ('digest', 3))
        self.assertEqual(samples[-1]['bytes'], 3)
        self.assertEqual(samples[-1]['speedBytesPerSecond'], 3)

    def test_resume_bytes_are_not_counted_as_network_speed(self):
        from wukong.transfer_progress import TransferMeter
        samples = []
        now = [10.0]
        meter = TransferMeter(samples.append, total=1000, initial=400, clock=lambda: now[0])
        now[0] = 12.0
        meter.advance(100)
        self.assertEqual(samples[-1]['bytes'], 500)
        self.assertEqual(samples[-1]['percent'], 50)
        self.assertEqual(samples[-1]['speedBytesPerSecond'], 50)
        self.assertEqual(samples[-1]['etaSeconds'], 10)
        now[0] = 14.0
        meter.advance(500)
        meter.finish()
        self.assertEqual(samples[-1]['percent'], 100)

    def test_unknown_total_never_invents_a_percentage_before_eof(self):
        from wukong.transfer_progress import TransferMeter
        samples = []
        meter = TransferMeter(samples.append, clock=lambda: 1.0)
        meter.advance(10)
        self.assertIsNone(samples[0]['percent'])
        self.assertIsNone(samples[0]['etaSeconds'])
        meter.finish()
        self.assertEqual(samples[-1]['percent'], 100)
        self.assertEqual(samples[-1]['totalBytes'], 10)

    def test_http_stream_reports_real_bytes_and_validates_before_completion(self):
        class Response(io.BytesIO):
            headers = {'Content-Length': '6', 'Content-Type': 'application/zip'}
            status = 200
            def geturl(self): return 'https://example.com/rom.zip'
            def getcode(self): return self.status
        class Opener:
            def open(self, *args, **kwargs): return Response(b'abcdef')
        samples = []
        adapter = HttpSourceAdapter(opener=Opener(), attempts=1)
        adapter.progress_callback = samples.append
        with tempfile.TemporaryDirectory() as directory, patch('wukong.adapters.validate_http_url'):
            result = adapter.materialize('https://example.com/rom.zip', Path(directory) / 'rom.zip')
        self.assertEqual(result.size_bytes, 6)
        self.assertEqual(samples[-1]['bytes'], 6)
        self.assertEqual(samples[-1]['percent'], 100)

