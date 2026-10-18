# CÔNG CỤ VÁ TỰ ĐỘNG SYSTEMUI: CTS, GEMINI & BYPASS "DOMESTIC" -> "STARK"
**Vị trí**: `C:\Android\Auto_Build_WK\STARK\Cts_Gemini\patch_Cts_Gemini`  
**Tác giả**: KhanhStark & Antigravity  

Công cụ tự động hóa toàn bộ quy trình:
1. **Bypass Vùng Nội Địa ("domestic" -> "stark")**: Vá tự động 9 vị trí chuỗi `"domestic"` thành `"stark"`, kích hoạt `IS_EXP_REGION = true` trên toàn hệ thống ColorOS.
2. **Google Circle to Search (CTS)**: Nhúng 17 class CTS + class trung gian `WukongBridgeCTS` (DEX 039).
3. **Gemini / Google Assistant**: Mở khóa cử chỉ vuốt góc gọi Trợ lý Google, đồng bộ trực tiếp với công tắc trong Cài đặt điều hướng.
4. **Quyền Android 15**: Tự động vá quyền `ACCESS_CONTEXTUAL_SEARCH` vào `AndroidManifest.xml`.
5. **Bảo toàn Chữ Ký OEM (No Re-Sign)**: Giữ nguyên khối `APK Sig Block 42` gốc của OnePlus / OPPO.

---

## 🌟 1. DANH SÁCH 9 VỊ TRÍ VÁ "DOMESTIC" -> "STARK" (CHUẨN MT MANAGER)

Script tự động quét và sửa chính xác 9 vị trí rải đều trên 3 file DEX:

| STT | File DEX | Class smali | Nội dung bytecode |
| :---: | :---: | :--- | :--- |
| **1** | `classes2.dex` | `com.android.systemui.util.HeadsUpToZoomUtils$$ExternalSyntheticLambda0` | `const-string v0, "stark"` |
| **2** | `classes3.dex` | `com.oplus.compatui.OplusCompatUIWindowManager` | `DOMESTIC_AREA = "stark"` |
| **3** | `classes3.dex` | `com.oplus.compatui.OplusCompatUIWindowManager` | `const-string/jumbo v0, "stark"` |
| **4** | `classes3.dex` | `com.oplus.deviceplugin.sdk.utils.SystemPropertiesUtils` | `const-string/jumbo v0, "stark"` |
| **5** | `classes3.dex` | `com.oplus.flexibletask.utils.FlexibleUtils` | `const-string/jumbo v1, "stark"` |
| **6** | `classes3.dex` | `com.oplus.keyguard.util.FeatureOption$IS_EXP_REGION$2` | `const-string/jumbo v0, "stark"` |
| **7** | `classes4.dex` | `com.oplus.systemui.media.seedling.livealert.MediaLiveAlertController` | `const-string/jumbo v3, "stark"` |
| **8** | `classes4.dex` | `com.oplus.systemui.seedlingservice.utils.SeedlingMediaDataHandleUtils` | `const-string/jumbo v1, "stark"` |
| **9** | `classes4.dex` | `com.oplusos.systemui.common.feature.FeatureOption$$ExternalSyntheticLambda3` | `const-string v0, "stark"` |

> **Cơ chế kỹ thuật**: Khi các hàm kiểm tra vùng của ColorOS so sánh chuỗi vùng của máy với `"stark"`, kết quả luôn là `false` (vì máy không bao giờ trả về "stark"), từ đó kích hoạt `IS_EXP_REGION = true` và gỡ bỏ toàn bộ giới hạn vùng nội địa của SystemUI.

---

## 🚀 2. HƯỚNG DẪN SỬ DỤNG

### Cách 1: Giao diện tương tác trực quan (Interactive Mode)
* Nhấp đúp chuột vào file **[`patch_cts_gemini.bat`](file:///C:/Android/Auto_Build_WK/STARK/Cts_Gemini/patch_Cts_Gemini/patch_cts_gemini.bat)** (hoặc mở Terminal gõ `python patch_cts_gemini.py`).
* Thực hiện theo các bước trên màn hình:
  1. **Bước 1**: Nhập hoặc kéo thả tệp APK đầu vào *(Gợi ý mặc định: SystemUI nguyên bản trong MIO-KITCHEN)*.
  2. **Bước 2**: Nhập đường dẫn tệp APK đầu ra *(Gợi ý mặc định: `system_ext/priv-app/SystemUI/SystemUI.apk` của module Cts_Gemini)*.
  3. **Bước 3**: Nhấn Enter để xác nhận. Công cụ sẽ tự động xử lý cả 3 file DEX, AndroidManifest, Zipalign và tiêm chữ ký OEM trong ~30 giây!

---

### Cách 2: Tích hợp vào Pipeline tự động của Auto_Build_WK (CLI Mode)

```bash
# Vá SystemUI nguyên bản và xuất thẳng vào thư mục ROM của module Cts_Gemini:
python patch_cts_gemini.py -i "C:\Android\MIO-KITCHEN-4.1.6-win\port\system_ext\priv-app\SystemUI\SystemUI.apk" -o "C:\Android\Auto_Build_WK\STARK\Cts_Gemini\system_ext\priv-app\SystemUI\SystemUI.apk" --no-interactive
```

---

## 📁 3. CẤU TRÚC THƯ MỤC

```text
C:\Android\Auto_Build_WK\STARK\Cts_Gemini\patch_Cts_Gemini\
├── patch_cts_gemini.py      # Script vá tự động chính (CTS + Gemini + domestic->stark)
├── patch_cts_gemini.bat     # Launcher chạy nhanh trên Windows
├── README.md                # Tài liệu hướng dẫn chi tiết
├── GUIDE_PORT_CTS_COLOROS.md# Cẩm nang chuyên sâu về WukongBridgeCTS
└── tools/                   # Chỉ chứa tài nguyên patch, không chứa công cụ dùng riêng
    ├── classes_cts_gemini.dex
    └── circlesearch/        # Trọn bộ 17 class CTS & WukongBridgeCTS.smali
```

`apktool`, `smali`, `baksmali` dùng chung `bin/Java/`; `zipalign` dùng chung thư mục
native tại gốc dự án (bản cài Windows: `Runtime/Bin/`). Xem `STARK/PATCHING.md`.
