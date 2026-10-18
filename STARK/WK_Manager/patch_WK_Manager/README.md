# WK Manager: script patch theo tính năng và JAR

## Trạng thái chuẩn hóa ngày 2026-10-17

`patch_multi_window.py` và `patch_power_button_remap.py` chứa logic biến đổi
smali riêng của từng tính năng và có CLI chạy độc lập. `patch_features.py` giữ
việc chọn tính năng, tìm class, kiểm tra target, ghép thay đổi và cài bridge vào
framework. API của runner hiện tại được giữ tương thích.

Đối chiếu ba guide do người dùng cung cấp:

| Tên tính năng yêu cầu | Bridge | Trạng thái trong lần chuẩn hóa này |
| --- | --- | --- |
| Keybox Manager | `WukongFrameworkBridge` | Chưa tạo script riêng; guide có sửa khóa/chứng thư attestation |
| Play Integrity Spoof | `WukongInstrumentationHook` | Chưa tạo script spoof |
| GameSpoof | `WukongInstrumentationHook` | Chưa tách; guide dùng cùng hook khởi tạo Application với nhóm trên |
| HMA Privacy Spoof | `WukongHmaPolicyBridge` | Chưa tách; guide gồm cả thay đổi kiểm tra quyền |
| Power Button Remap | `WukongPowerKeyBridge` | Logic riêng trong `patch_power_button_remap.py` |
| Multi Window | `WukongMultiWindowBridge` | Logic riêng trong `patch_multi_window.py` |
| Kernel Manager | `WukongHmaPolicyBridge` | Chưa tách; guide không phân định với HMA theo bridge |

Guide không chứa `WukongPowerKeyBridge` hoặc `WukongMultiWindowBridge`;
hai script tương ứng được chuẩn hóa từ implementation có sẵn trong workspace.
Nội dung hướng dẫn chèn code trong guide được dùng làm dữ liệu đối chiếu.
Các module legacy bên dưới vẫn là dependency của luồng build hiện tại nên chưa
bị xóa. Đây là kết quả chuẩn hóa một phần, chưa phải bộ bảy script hoàn chỉnh.

Kiểm tra hồi quy cho lần tách module: 20 test, 18 qua và 2 bỏ qua do chưa đặt
`WK_SMALI_JAR`; chưa xác nhận rebuild JAR thật hoặc chạy trên thiết bị.

Mã legacy trước đây trong `wk_manager_patcher.py` đã được chuyển nguyên nội dung sang các module sau để bảo trì tại một chỗ:

| File | Trách nhiệm |
| --- | --- |
| `patch_framework.py` | Hàm patch `framework.jar` và hàm import smali legacy |
| `patch_services.py` | Hàm patch `services.jar` và entry legacy disable-flag-secure cho JAR này |
| `patch_oplus_services.py` | Hàm patch `oplus-services.jar`, helper Gemini và entry legacy disable-flag-secure cho JAR này |
| `smali_helpers.py` | Tìm class/method, kiểm tra anchor, chỉnh thanh ghi, ghi LF và kiểu báo cáo/lỗi |
| `patch_wk_manager.py` | CLI và registry legacy, giữ nguyên các tham số cũ |
| `__init__.py` | Export API cho luồng build hiện có |

`wk_manager_patcher.py` ở gốc source chỉ còn lớp tương thích nạp package này từ STARK. Luồng build vẫn import các tên hàm cũ; nội dung patch chỉ nằm trong thư mục này. Phần thân 31 định nghĩa hàm/lớp đã được đối chiếu AST trước/sau khi di chuyển và giữ nguyên. Việc tách module không thêm hoặc sửa logic hook legacy.

CLI mới dùng cùng tập tham số với CLI cũ. Có thể kiểm tra bằng:

```powershell
python STARK\WK_Manager\patch_WK_Manager\patch_wk_manager.py --help
```

Ba file `guide-framework.smali`, `guide-services.smali`, `guide-oplus-services.smali` được dùng để đối chiếu nội dung, không được chạy như script hoặc dùng để tự động bổ sung hook. Trong ba guide không có `WukongPowerKeyBridge`/`WukongMultiWindowBridge`; hai tính năng đó vẫn dùng bộ script riêng bên dưới.

## Các lựa chọn cửa sổ và nút nguồn

Bốn lựa chọn đã triển khai độc lập:

| Recipe ID | Bridge | Method đích trong oplus-services.jar |
| --- | --- | --- |
| `multi_window` | `WukongMultiWindowBridge` | `FlexibleWindowManagerService.getMaxWinNum(I)I`, `FlexibleWindowUtils.getMaxFlexibleTaskNum()I` |
| `power_button_remap` | `WukongPowerKeyBridge` | `SinglePowerKeyMonitor$OplusPowerKeyRule.onKeyGesture(...)V`, `getMaxMultiPressCount()I` |
| `black_window` | `android.preference.SettingsHelper` | Năm method tương thích cửa sổ trong `FlexibleWindowUtils` |
| `multi_audio` | `android.preference.SettingsHelper` | `MediaFocusControl.requestAudioFocus(...)I` trong **services.jar** |

Class bridge tương ứng chỉ được thêm vào `framework.jar`. Không sao chép thư mục `com/wukong/manager` vào `oplus-services.jar`. Script dùng hai file smali bridge hiện có trong thư mục này; không biên dịch Java từ đường dẫn máy khác. Hai key guide chỉ nhập `SettingsHelper` một lần vào framework; không nhập cả bộ manager. `patch_guide_keys.py` giữ riêng các hook này, loại trừ `multi_window` cũ và `gemini_button`.

Chọn WK_Manager trong Windows hoặc Telegram Mini App rồi bật các checkbox mong muốn. Build gửi trường sau qua recipe tới runner:

```json
{
  "wkManagerPatches": ["multi_window", "power_button_remap"]
}
```

Trong recipe Telegram, đặt trường này trong `build`. Recipe desktop dùng trường ở cấp BuildSpec. `[]` nghĩa là không thêm hook WK nào, nhưng vẫn cài các asset hệ thống của WK Manager theo luồng sẵn có. Bỏ trường hoặc dùng `null` giữ luồng patch legacy; hai patch `multi_window` kiểu SettingsHelper cũ đã bị bỏ khỏi các script legacy.

## Chạy riêng trên cây smali đã decode

```powershell
python patch_multi_window.py framework C:\work\framework_decoded
python patch_multi_window.py oplus-services C:\work\oplus_services_decoded
python patch_power_button_remap.py framework C:\work\framework_decoded
python patch_power_button_remap.py oplus-services C:\work\oplus_services_decoded
python patch_black_window.py framework C:\work\framework_decoded
python patch_black_window.py oplus-services C:\work\oplus_services_decoded
python patch_multi_audio.py framework C:\work\framework_decoded
python patch_multi_audio.py services C:\work\services_decoded
```

Có thể dùng `patch_features.py` với nhiều `--patch` để chọn cả hai. Các lệnh trên chỉ chỉnh cây smali, không tự decode/build JAR, flash hoặc reboot. Luồng build Studio đảm nhiệm decode/rebuild JAR.

Script dò class trên các thư mục dex, không đoán classes2/classes3. Nó kiểm tra đủ các target đã chọn trước khi ghi, chống chèn hook trùng và dừng khi method không tương thích. Khi tắt multi-window trong Manager, hook giữ giá trị fallback của ROM. Method giới hạn số lần nhấn nút nguồn giữ logic gốc trước khi gọi bridge.

`black_window` và `multi_window` có thể cùng chỉnh `FlexibleWindowUtils`; runner ghép hai thay đổi trong bộ nhớ trước khi ghi. `multi_audio` hỗ trợ hai chữ ký `requestAudioFocus` trong guide/source cũ và giữ nhánh xử lý gốc khi key tắt. Các key này đọc từ Settings.System như guide. Checkbox chọn có thêm hook vào ROM; giá trị key lúc chạy vẫn do Manager quản lý.

Khi chọn multi-window, script nhận diện và gỡ block SettingsHelper `multi_window` cũ trong `getMaxWinNum` và `isSupportMultiMode`. Block không nhận diện được sẽ báo lỗi và yêu cầu input stock. Muốn bỏ một feature khỏi ROM đã patch, hãy build lại từ ROM stock với lựa chọn mới; bỏ checkbox không hoàn tác một JAR đã chỉnh sửa.

## Phạm vi và kiểm tra

Đã thêm test lựa chọn recipe, patch riêng/lặp, gỡ hook cũ, thanh ghi, annotation, tránh ghi dở khi thiếu target và import bridge. Đặt biến `WK_SMALI_JAR` trỏ tới smali fat JAR để chạy thêm test assemble hook cùng hai bridge thật:

```powershell
python -m unittest -v tests.test_wk_manager_features
python -m unittest -v tests.test_wk_manager_guide_keys
```

## Kết quả build ngày 2026-10-17

- App Windows self-contained: `desktop/artifacts/wk-manager-options/App/WukongStudio.exe`.
- Telegram Mini App đã bundle: `.vercel-static/`.
- Đây là bản publish app, chưa tạo installer hoặc cập nhật thư mục cài đặt. App cần runtime/backend và Content tương ứng với source hiện tại; chỉ thay EXE trên một runtime cũ sẽ chưa cập nhật bộ patch.
- Chưa deploy mini app hoặc Cloudflare Worker. Worker cần được cập nhật cùng mini app để nhận hai ID `black_window` và `multi_audio` mới.
- Python regression: 358 tests, 2 skipped; kiểm tra assemble DEX riêng cho hai bridge và các key guide đều qua khi đặt `WK_SMALI_JAR`.
- .NET: 59 tests qua; mini app: 8 tests qua; Worker jobs: 14 tests qua và TypeScript typecheck qua.

