"""Build the restored settings resources from stock, with a verified cache."""
import hashlib
import copy
import json
from pathlib import Path
import tempfile
import xml.etree.ElementTree as ET
import zipfile

from .paths import ROOT
from .toolchain import run_tool, find_tool
from .features import validate_features, preference_enabled, needs_mod_settings
ANDROID_KEY = '{http://schemas.android.com/apk/res/android}key'


def merge_settings(stock_xml, recipe_xml, selected=None):
    selected = validate_features(selected)
    if not needs_mod_settings(selected):
        return stock_xml
    stock = ET.fromstring(stock_xml)
    recipe = ET.fromstring(recipe_xml)
    categories = [node for node in recipe if node.get(ANDROID_KEY) == '111']
    keys = {child.get(ANDROID_KEY) for category in categories for child in category
            if child.get(ANDROID_KEY) and preference_enabled(child.get(ANDROID_KEY), selected)}
    # Move only preferences intentionally managed by the mod; keep OEM extras.
    for parent in stock.iter():
        for child in list(parent):
            if child.get(ANDROID_KEY) in keys or (child.get(ANDROID_KEY) == 'key_dock_expand' and 'taskbar' in selected):
                parent.remove(child)
    for index, category in enumerate(categories):
        category = copy.deepcopy(category)
        for child in list(category):
            if not preference_enabled(child.get(ANDROID_KEY), selected):
                category.remove(child)
        if not len(category):
            continue
        category.set(ANDROID_KEY, f'wk_category_{index}')
        stock.append(category)
    # Native onResume owns this preference's parent; retain its OEM category.
    if 'quick_search' in selected and not any(n.get(ANDROID_KEY) == 'launcher_dock_search_for_qsb' for n in stock.iter()):
        native = [n for n in recipe.iter() if n.get(ANDROID_KEY) == 'launcher_dock_search_for_qsb']
        layout = [n for n in stock.iter() if n.get(ANDROID_KEY) == 'category_launcher_layout']
        if len(native) == 1 and len(layout) == 1:
            layout[0].append(copy.deepcopy(native[0]))
    return ET.tostring(stock, encoding='unicode')


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def prepare_resources(apk, selected=None):
    selected = validate_features(selected)
    if not needs_mod_settings(selected):
        return str(apk)
    recipe_path = ROOT / 'patches/coloros_a17_resources.json'
    recipe = json.loads(recipe_path.read_text(encoding='utf-8'))
    with zipfile.ZipFile(apk) as archive:
        stock_hash = hashlib.sha256(archive.read('resources.arsc')).hexdigest()
    expected = {'recipe': digest(recipe_path), 'builder': digest(__file__), 'stock': digest(apk),
                'features': sorted(selected), 'feature_rules': digest(Path(__file__).with_name('features.py'))}
    cache_key = hashlib.sha256(json.dumps(expected, sort_keys=True).encode()).hexdigest()[:24]
    cache = ROOT / 'scratch/resource-cache' / cache_key
    cache.mkdir(parents=True, exist_ok=True)
    output = cache / 'resources.apk'
    stamp = cache / 'cache.json'
    if output.exists() and stamp.exists():
        cached = json.loads(stamp.read_text(encoding='utf-8'))
        if all(cached.get(k) == v for k, v in expected.items()) and cached.get('output') == digest(output):
            return str(output)
    apktool = find_tool('apktool')
    (ROOT / 'scratch').mkdir(exist_ok=True)
    directory = Path(tempfile.mkdtemp(prefix='launcher-resources-', dir=ROOT / 'scratch'))
    project = directory / 'decoded'
    run_tool([find_tool('java'), '-jar', str(apktool), 'd', '-s', str(Path(apk).resolve()), '-o', str(project)], check=True)
    public = project / 'res/values/public.xml'
    public_tree = ET.parse(public)
    public_root = public_tree.getroot()
    ids = {(n.get('type'), n.get('name')): int(n.get('id'), 16) for n in public_root}
    next_string = max(value for (kind, _), value in ids.items() if kind == 'string') + 1
    for name in recipe['strings_en']:
        if ('string', name) not in ids:
            ET.SubElement(public_root, 'public', type='string', name=name, id=f'0x{next_string:08x}')
            next_string += 1
    if ('layout', 'wk_taskbar_seekbar_preference') not in ids:
        next_layout = max(value for (kind, _), value in ids.items() if kind == 'layout') + 1
        ET.SubElement(public_root, 'public', type='layout', name='wk_taskbar_seekbar_preference', id=f'0x{next_layout:08x}')
    import re
    next_id = max(value for (kind, _), value in ids.items() if kind == 'id') + 1
    for name in sorted(set(re.findall(r'@id/([\w]+)', recipe['layout_xml']))):
        if ('id', name) not in ids:
            ET.SubElement(public_root, 'public', type='id', name=name, id=f'0x{next_id:08x}')
            next_id += 1
    public_tree.write(public, encoding='utf-8', xml_declaration=True)
    for folder, key in [('values', 'strings_en'), ('values-vi', 'strings_vi')]:
        path = project / 'res' / folder / 'strings.xml'
        tree = ET.parse(path) if path.exists() else ET.ElementTree(ET.Element('resources'))
        existing = {node.get('name'): node for node in tree.getroot()}
        for name, value in recipe[key].items():
            if name == 'launcher_dock_search_for_qsb' and 'quick_search' not in selected:
                continue
            node = existing.get(name)
            if node is None:
                node = ET.SubElement(tree.getroot(), 'string', name=name)
            node.text = value.replace("'", "\\'")
        path.parent.mkdir(parents=True, exist_ok=True)
        tree.write(path, encoding='utf-8', xml_declaration=True)
    (project / 'res/layout/wk_taskbar_seekbar_preference.xml').write_text(recipe['layout_xml'], encoding='utf-8')
    settings = project / 'res/xml/launcher_settings.xml'
    settings.write_text(merge_settings(settings.read_text(encoding='utf-8'), recipe['settings_xml'], selected), encoding='utf-8')
    staged = directory / 'resources.apk'
    run_tool([find_tool('java'), '-jar', str(apktool), 'b', str(project), '-o', str(staged)], check=True)
    # Publish the cache only after apktool completes successfully.
    output.write_bytes(staged.read_bytes())
    stamp.write_text(json.dumps({**expected, 'output': digest(output)}, indent=2), encoding='utf-8')
    return str(output)
