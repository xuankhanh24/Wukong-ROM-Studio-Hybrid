"""Compile Java helpers into a build-local smali tree; never mutate source files."""
import argparse
from pathlib import Path
import shutil
import tempfile
import zipfile

from .paths import ROOT, SCRATCH
from .toolchain import run_tool, android_jar, find_tool
from .features import java_feature_source


def compile_helpers(output, selected=None):
    output = Path(output).resolve()
    if not output.is_relative_to(SCRATCH.resolve()) or output == SCRATCH.resolve():
        raise ValueError('Generated helper output must be a subdirectory of scratch/')
    if output.exists():
        raise FileExistsError(f'Helper output already exists: {output}')
    SCRATCH.mkdir(exist_ok=True)
    platform = android_jar()
    with tempfile.TemporaryDirectory(prefix='launcher-helpers-', dir=SCRATCH) as temporary:
        work = Path(temporary)
        source, classes, dex = (work / name for name in ('source', 'classes', 'dex'))
        shutil.copytree(ROOT / 'compile_stubs', source)
        shutil.copytree(ROOT / 'src_helpers', source, dirs_exist_ok=True)
        (source / 'android/preference/BuildFeatures.java').write_text(java_feature_source(selected), encoding='utf-8')
        classes.mkdir()
        dex.mkdir()
        java_files = sorted(str(path) for path in source.rglob('*.java'))
        print(f'[*] Compiling {len(java_files)} Java sources', flush=True)
        run_tool([find_tool('javac'), '-encoding', 'utf-8', '-cp', platform,
                        '-d', str(classes), *java_files], check=True)
        # Compile-only AndroidX/COUI stubs must never enter the APK.
        class_files = [str(path) for path in sorted(classes.rglob('*.class'))
                       if not path.relative_to(classes).as_posix().startswith(('androidx/', 'com/coui/'))]
        # One JAR avoids the Windows batch command-length limit for deep paths.
        helper_jar = work / 'helpers.jar'
        with zipfile.ZipFile(helper_jar, 'w') as archive:
            for filename in class_files:
                path = Path(filename)
                archive.write(path, path.relative_to(classes).as_posix())
        run_tool([find_tool('d8'), '--output', str(dex), '--lib', platform,
                        str(helper_jar)], check=True)
        run_tool([find_tool('java'), '-jar', find_tool('baksmali'), 'd',
                        str(dex / 'classes.dex'), '-o', str(output)], check=True)
    return output


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('output', help='New smali directory under scratch/')
    compile_helpers(parser.parse_args().output)
