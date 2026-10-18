"""Shared launcher for existing patch scripts; compatible with drag-and-drop."""
from pathlib import Path
import runpy
import sys

PATCHES = {
    'camera': 'Camera_mod/patch_Camera_mod/patch_camera.py',
    'bubbles': 'Chat_bubbles/patch_Chat_bubbles/patch_chat_bubbles.py',
    'cts': 'Cts_Gemini/patch_Cts_Gemini/patch_cts_gemini.py',
    'athena': 'Fix_noti/patch_athena/patch_athena.py',
    'hasselblad': 'Hasselblad_filter/patch_Hasselblad_filter/patch_hasselblad.py',
    'settings': 'Settings_mod/patch_Settings_mod/patch_settings.py',
    'launcher': 'Launcher_mod/patch_Launcher_mod/patch_launcher.py',
}


def normalize_arguments(name, arguments):
    args = list(arguments)
    if name in {'camera', 'bubbles', 'cts', 'athena'} and args and not args[0].startswith('-'):
        source = args.pop(0)
        if args and not args[0].startswith('-'):
            output = args.pop(0)
        else:
            path = Path(source)
            output = str(path.with_name(path.stem + '_mod' + path.suffix))
        return ['-i', source, '-o', output, *args]
    return args


def main():
    if sys.version_info < (3, 10):
        raise SystemExit('Python 3.10+ is required')
    if len(sys.argv) < 2 or sys.argv[1] not in PATCHES:
        raise SystemExit('Usage: run_patch.py {' + ','.join(PATCHES) + '} [patch arguments]')
    name = sys.argv[1]
    script = Path(__file__).resolve().parent / PATCHES[name]
    sys.argv = [str(script), *normalize_arguments(name, sys.argv[2:])]
    sys.path.insert(0, str(script.parent))
    runpy.run_path(str(script), run_name='__main__')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
