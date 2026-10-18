"""Compatibility entry point; maintain patches in STARK/WK_Manager/patch_WK_Manager."""
from __future__ import annotations

import importlib.util
import sys

from studio_paths import STARK_ROOT


def _load_patch_bundle():
    name = "_wk_manager_patch_bundle"
    directory = STARK_ROOT / "WK_Manager" / "patch_WK_Manager"
    if name not in sys.modules:
        spec = importlib.util.spec_from_file_location(
            name, directory / "__init__.py", submodule_search_locations=[str(directory)]
        )
        if spec is None or spec.loader is None:
            raise ImportError(f"Cannot load WK Manager patch modules: {directory}")
        module = importlib.util.module_from_spec(spec)
        sys.modules[name] = module
        try:
            spec.loader.exec_module(module)
        except BaseException:
            sys.modules.pop(name, None)
            raise
    return sys.modules[name]


_bundle = _load_patch_bundle()
__all__ = _bundle.__all__
for _name in __all__:
    globals()[_name] = getattr(_bundle, _name)


if __name__ == "__main__":
    raise SystemExit(main())
