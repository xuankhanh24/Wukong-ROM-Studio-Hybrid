from __future__ import annotations

import ast
import os
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def _load_remove_stock_ota_feature_lines():
    source = (ROOT / "Build-main.py").read_text(encoding="utf-8")
    module = ast.parse(source)
    function = next(
        node
        for node in module.body
        if isinstance(node, ast.FunctionDef)
        and node.name == "remove_stock_ota_feature_lines"
    )
    namespace = {"os": os}
    exec(compile(ast.Module(body=[function], type_ignores=[]), "Build-main.py", "exec"), namespace)
    return namespace["remove_stock_ota_feature_lines"]


class BuildMainBlockOtaTests(unittest.TestCase):
    def test_removes_ota_and_update_lines_from_my_stock_a(self) -> None:
        remove_lines = _load_remove_stock_ota_feature_lines()
        with tempfile.TemporaryDirectory() as temp:
            xml = (
                Path(temp)
                / "my_stock_a"
                / "my_stock"
                / "etc"
                / "extension"
                / "com.oplus.app-features.xml"
            )
            xml.parent.mkdir(parents=True)
            xml.write_text(
                "<features>\n"
                "<feature name=\"ota.agent\"/>\n"
                "<feature name=\"system_update.agent\"/>\n"
                "<feature name=\"keep.agent\"/>\n"
                "</features>\n",
                encoding="utf-8",
            )

            self.assertEqual(2, remove_lines(temp))
            content = xml.read_text(encoding="utf-8")
            self.assertIn("keep.agent", content)
            self.assertNotIn("ota", content.lower())
            self.assertNotIn("update", content.lower())


if __name__ == "__main__":
    unittest.main()
