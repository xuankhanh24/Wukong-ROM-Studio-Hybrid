# HƯỚNG DẪN VÁ VÀ TÙY BIẾN COLOROS LAUNCHER MOD (COLOROS 15 / 16 / 17 - ANDROID 15 - 17+)
**Tác giả:** KhanhStark & Antigravity  
**Thư mục làm việc:** `C:\Android\Auto_Build_WK\STARK\Launcher_mod\patch_Launcher_mod`  
**Phiên bản tài liệu:** v17.0 Universal Full Edition  
**Áp dụng cho:** Tất cả các phiên bản OplusLauncher APK trên ColorOS / OxygenOS từ Android 15, 16 đến Android 17 (OnePlus 13, OnePlus Ace 5, OPPO Find X8, Realme GT7...).

---

## MỤC LỤC
1. [Tổng Quan 8 Nhóm Tính Năng Bản MOD](#1-tổng-quan-8-nhóm-tính-năng-bản-mod)
2. [GIẢI ĐÁP CHUYÊN SÂU: Vì Sao Làm Mờ Dock, Mở Rộng Taskbar & Thanh Tìm Kiếm Cần Đủ Bộ Hook?](#2-giải-đáp-chuyên-sâu-vì-sao-làm-mờ-dock-mở-rộng-taskbar--thanh-tìm-kiếm-cần-đủ-bộ-hook)
3. [Danh Mục Các Class Helper Độc Lập (classes8.dex)](#3-danh-mục-các-class-helper-độc-lập-classes8dex)
4. [Quy Trình Vá Tự Động Bằng Công Cụ (Khuyên Dùng)](#4-quy-trình-vá-tự-động-bằng-công-cụ-khuyên-dùng)
5. [Quy Trình Vá Thủ Công Bằng MT Manager (Trên Điện Thoại)](#5-quy-trình-vá-thủ-công-bằng-mt-manager-trên-điện-thoại)
6. [Quy Trình Vá Bằng PC (Smali / Baksmali / Apktool)](#6-quy-trình-vá-bằng-pc-smali--baksmali--apktool)
7. [Kỹ Thuật Tiêm Chữ Ký Gốc OEM Block 42 & Căn Chỉnh 16KB Page-Align](#7-kỹ-thuật-tiêm-chữ-ký-gốc-oem-block-42--căn-chỉnh-16kb-page-align)
8. [Bảng Tra Cứu Lỗi Thường Gặp & Cách Khắc Phục (Troubleshooting)](#8-bảng-tra-cứu-lỗi-thường-gặp--cách-khắc-phục-troubleshooting)

---

## 1. TỔNG QUAN 8 NHÓM TÍNH NĂNG BẢN MOD

Bản mod áp dụng triết lý **Minimal Hooking Architecture** (chỉ can thiệp 1-3 dòng bytecode bytecode cho mỗi method ở tầng OEM), đẩy toàn bộ logic giao diện, cấu hình, i18n và tương tác vào DEX mở rộng độc lập (`classes8.dex`). Điều này đảm bảo **Zero Overhead**, giữ nguyên độ mượt mà 120 FPS của Launcher gốc.

| Nhóm Mod | Tên Tính Năng | Mô Tả Kỹ Thuật |
| :--- | :--- | :--- |
| **recents** | Đa nhiệm máy tính bảng | Mở khóa bố cục 2 hàng dạng lưới (Tablet Grid) chuẩn ColorOS khi vuốt đa nhiệm từ Home và từ App; tự động bảo vệ không bị lỗi co giật layout khi xoay ngang Landscape. |
| **dock** | Làm mờ thanh dock | Kích hoạt hiệu ứng nền mờ gương mờ (Gaussian Blur / Acrylic) cho Dock bar ở màn hình chính thông qua `OplusHotseat` mà không gây méo tỷ lệ màn hình. |
| **taskbar** | Mở rộng thanh tác vụ | Kích hoạt cụm ứng dụng đề xuất / gần đây ở bên phải thanh Taskbar, bổ sung Slider SeekBar điều chỉnh số lượng icon (từ 1 đến 6 app). |
| **feed** | Google Feed | Mở khóa trang tin tức Google Discover bên trái Màn hình chính (thay thế hoặc bổ sung cho HeyTap Assistant). |
| **search** | Thanh tìm kiếm dưới cùng | Cho phép gán bất kỳ ứng dụng hoặc lối tắt (shortcut) tùy biến nào vào nút/thanh tìm kiếm dưới chân trang, kèm hiệu ứng mở 120 FPS mượt mà. |
| **quick_search** | Google QSB trên Home | Khôi phục mục cài đặt và widget Search Box (Quick Search Box) của Google lên màn hình chính. |
| **gestures** | Cử chỉ vuốt xuống | Tùy biến cử chỉ vuốt xuống trên màn hình chính: Vuốt toàn màn hình, vuốt nửa trái màn hình, vuốt nửa phải màn hình để mở app hoặc hạ thanh thông báo. |
| **ram** | Hiển thị thông tin RAM | Mở khóa hiển thị dung lượng RAM khả dụng và tổng RAM thực tế ở góc dưới đa nhiệm Recents (ColorOS A15, A16, A17). |

---

## 2. GIẢI ĐÁP CHUYÊN SÂU: VÌ SAO LÀM MỜ DOCK, MỞ RỘNG TASKBAR & THANH TÌM KIẾM CẦN ĐỦ BỘ HOOK?

Nhiều người dùng gặp hiện tượng: **"Công tắc trong Cài đặt đã bật (ON) nhưng thanh dock không mờ, thanh tác vụ không mở rộng, hoặc thanh tìm kiếm dưới cùng bấm không có tác dụng"**. Dưới đây là nguyên nhân kỹ thuật gốc rễ:

### 2.1. Vì sao "Làm mờ thanh dock" (`wk_dock`) không hoạt động nếu thiếu hook?
- **Cơ chế gốc của ColorOS:**  
  Trong ColorOS gốc, thanh dock (`com.android.launcher3.OplusHotseat`) chỉ khởi tạo đối tượng làm mờ `mDockerBackgroundDrawable` và bộ điều khiển `mBlurProp` khi hệ thống kiểm tra thấy máy là Tablet hoặc Fold:
  ```smali
  invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z
  ```
  Trên điện thoại thông thường (Candybar như OnePlus 13, OPPO Find X8), hàm này trả về `false`. Do đó, dù có bật switch trong SharedPreferences, `OplusHotseat` vẫn **hoàn toàn bỏ qua việc vẽ background blur**.
- **Giải pháp chính xác:**
  1. Trong `OplusHotseat.smali`, chuyển điều kiện kiểm tra `hasLargeDisplayFeatures()` hoặc can thiệp nhánh kiểm tra để khởi tạo `mDockerBackgroundDrawable` khi `TweaksHelper.isWkDockBlurEnabled()` trả về `true`.
  2. Đồng thời phải bọc kiểm tra `ScreenUtils.isDeviceProfileInLandscape()` để khi người dùng xoay ngang màn hình, thanh dock tự động ẩn nền mờ, tránh hiện tượng thanh dock bị giãn đè lên icon ứng dụng.

### 2.2. Vì sao "Mở rộng thanh tác vụ" (`wk_thanh`) không hoạt động nếu chỉ có SeekBar?
- **Cơ chế gốc của ColorOS:**  
  Tính năng mở rộng thanh tác vụ phân tán qua **4 class khác nhau** trong hệ thống:
  1. `TaskbarSettingsConfig.smali`: Chứa hàm `isTaskbarExpandAreaSettingEnable()Z`. Nếu hàm này trả về `false`, thanh taskbar lập tức vô hiệu hóa vùng mở rộng.
  2. `ExpandSwitchHelper.smali`: Điều khiển công tắc logic cấp launcher.
  3. `ExpandDataManager.smali`: Quản lý nạp danh sách ứng dụng đề xuất vào bộ nhớ đệm.
  4. `ExpandConfig.smali`: Hàm `getExpandMaxCount()I` quy định số icon hiển thị.
- **Giải pháp chính xác:**
  - Nếu chỉ thêm SeekBar vào file XML cài đặt mà không hook `isTaskbarExpandAreaSettingEnable()` trong `TaskbarSettingsConfig.smali` và `ExpandConfig.smali::getExpandMaxCount()`, hệ thống sẽ đọc giá trị mặc định của máy (trả về 0) khiến vùng mở rộng không bao giờ xuất hiện!
  - Cần phải hook chuyển tiếp cả 4 vị trí này về `android.preference.TweaksHelper::isWkTaskbarExpandEnabled()` và `getWkTaskbarExpandCount()`.

### 2.3. Vì sao "Thanh tìm kiếm dưới cùng" (`search`) không khởi chạy app tùy chỉnh?
- **Cơ chế gốc của ColorOS:**  
  Nút tìm kiếm dưới cùng (`com.android.launcher3.search.IndicatorEntry`) theo mặc định chỉ mở Breeno Search hoặc HeyTap Search thông qua hardcode package `com.heytap.speechassist`.
- **Giải pháp chính xác:**
  1. Trong `IndicatorEntry$Companion.smali`: Phải hook phương thức `getIndicatorAppLaunchIntent(Context)` để gọi `SearchPackageLaunchHelper.getIndicatorLaunchIntent(Context)`. Nếu có cấu hình tùy chọn, trả về Intent của app/shortcut người dùng đã chọn.
  2. Trong `IndicatorEntry.smali`: Phải thay thế lệnh gọi `startActivitySafely` sang `SearchPackageLaunchHelper.startIndicatorSafely` để kích hoạt hiệu ứng Morphing Window Animation 120 FPS mượt mà thay vì mở giật cục.
  3. Trong `OplusPageIndicator.smali`: Phải hook hàm `apply()` và `tintIndicatorIcon()` để hiển thị icon/nhãn tùy chỉnh và ngăn ColorOS tự động nhuộm icon thành màu trắng đơn sắc.

---

## 3. DANH MỤC CÁC CLASS HELPER ĐỘC LẬP (classes8.dex)

Toàn bộ mã Java nguồn nằm trong thư mục `src_helpers/` và được biên dịch thành `classes8.dex`:

| Class Java / Smali | Chức Năng |
| :--- | :--- |
| `android.preference.TweaksHelper` | **Bộ nhớ đệm in-memory trung tâm:** Lưu trữ trạng thái của toàn bộ 8 mod (`sWkTablet`, `sWkDockBlur`, `sWkTaskbarExpand`...), lắng nghe thay đổi SharedPreferences với độ trễ 0ms. |
| `android.preference.WkTaskbarSeekBarPreference` | **Thanh trượt COUI tùy chỉnh:** Cho phép kéo chỉnh số lượng app đề xuất trên Taskbar từ 1 đến 6 ngay trong Cài đặt Màn hình chính. |
| `com.android.launcher.settings.TweaksPreferenceInjector` | **Bộ tiêm giao diện động:** Tự động chèn các Card Tinh chỉnh (COUI Preference Card) vào trang Cài đặt mà không cần sửa file `resources.arsc` gốc. |
| `com.android.launcher.settings.SearchPackagePickerDialog` | **Hộp thoại chọn App & Lối tắt:** Giao diện 2 tab (Ứng dụng & Lối tắt) với thanh tìm kiếm trực quan để gán hành động cho thanh tìm kiếm và cử chỉ vuốt. |
| `com.android.launcher.settings.SearchPackageLaunchHelper` | **Điều phối mở app & hiệu ứng:** Đảm bảo hiệu ứng mở ứng dụng từ thanh tìm kiếm có animation đồng bộ với icon dưới chân màn hình. |
| `com.android.launcher.settings.SearchPackageIndicatorHelper` | **Quản lý hiển thị icon/nhãn:** Nạp icon độ phân giải cao và tiêu đề ứng dụng đã chọn lên thanh Page Indicator. |
| `com.android.launcher.settings.WorkspacePullDownHelper` | **Điều phối cử chỉ vuốt xuống:** Nhận diện vị trí chạm (toàn màn hình, nửa trái, nửa phải) và khởi chạy ứng dụng hoặc bảng điều khiển tương ứng. |

---

## 4. QUY TRÌNH VÁ TỰ ĐỘNG BẰNG CÔNG CỤ (KHUYÊN DÙNG)

Thư mục `patch_Launcher_mod` đã được trang bị công cụ tự động thông minh:

### Cách 1: Kéo & Thả (Đơn giản nhất)
1. Kéo file `OplusLauncher.apk` thả trực tiếp vào file **`patch_launcher.bat`**.
2. Công cụ sẽ tự động nhận diện phiên bản ColorOS (Android 16 hay 17), đối chiếu 62 rules bytecode, biên dịch helpers, tiêm chữ ký OEM và đóng gói thành phẩm trong thư mục `dist/`.

### Cách 2: Chạy menu tương tác
1. Nhấp đúp vào **`patch_launcher.bat`**.
2. Menu sẽ tự động quét file APK trong ROM STARK tại:
   `../system_ext/priv-app/OplusLauncher/OplusLauncher.apk`
3. Nhập số `1` để chọn file APK.
4. Chọn chế độ vá:
   - `[1]`: Vá toàn bộ 8 tính năng (Khuyên dùng).
   - `[2]`: Tùy chỉnh tick chọn từng tính năng (`--select`).
   - `[3]`: Chỉ mở khóa RAM Info (`--features ram`).
5. Khi hoàn tất, công cụ sẽ hỏi:
   `Bạn có muốn tự động cập nhật file APK đã vá vào STARK ROM không? (Y/n)`
   $\to$ Nhấn `Y` để cập nhật trực tiếp vào cây ROM STARK sẵn sàng build ROM!

---

## 5. QUY TRÌNH VÁ THỦ CÔNG BẰNG MT MANAGER (TRÊN ĐIỆN THOẠI)

Dành cho các nhà phát triển muốn can thiệp trực tiếp trên thiết bị Android:

### Bước 1: Mở APK và nạp DEX
1. Mở MT Manager, chọn file `OplusLauncher.apk` $\to$ Chọn **Xem (View)**.
2. Bấm vào file `classes.dex` bất kỳ $\to$ Chọn **Dex Editor Plus** $\to$ Tích chọn **TẤT CẢ các file DEX** $\to$ Bấm **OK**.

### Bước 2: Thêm các class Helper
1. Chép toàn bộ thư mục `custom_smali` (chứa package `android/preference/` và `com/android/launcher/settings/`) vào một file DEX mới (ví dụ `classes8.dex` hoặc nhập vào DEX cuối cùng).

### Bước 3: Vá Đa nhiệm Tablet Grid & RAM Info (classes2.dex)
1. **Tìm class `OplusGridRecentsConfig` (hoặc class chứa gọi `isFoldScreenExpanded` và `isTablet`):**
   Thay thế thân hàm kiểm tra bằng:
   ```smali
   invoke-static {}, Landroid/preference/TweaksHelper;->isGridRecentsEnabled()Z
   move-result v0
   return v0
   ```
2. **Mở khóa hiển thị RAM trong `MemoryInfoManager.smali`:**
   Tìm method trả về boolean trạng thái RAM (`g()` hoặc `h()`), đổi giá trị trả về thành:
   ```smali
   const/4 v0, 0x1
   return v0
   ```

### Bước 4: Vá Làm mờ Dock (`OplusHotseat.smali`)
1. Tìm kiếm `OplusHotseat.smali`.
2. Trong hàm cập nhật nền dock, tìm điều kiện kiểm tra `hasLargeDisplayFeatures()Z`.
3. Thay thế bằng hook:
   ```smali
   invoke-static {}, Landroid/preference/TweaksHelper;->isWkDockBlurEnabled()Z
   move-result v0
   ```

### Bước 5: Vá Mở rộng Taskbar (`TaskbarSettingsConfig.smali` & `ExpandConfig.smali`)
1. Trong `TaskbarSettingsConfig.smali`:
   Tại hàm `isTaskbarExpandAreaSettingEnable()Z`, chèn ngay đầu hàm:
   ```smali
   invoke-static {}, Landroid/preference/TweaksHelper;->isWkTaskbarExpandEnabled()Z
   move-result v0
   if-eqz v0, :cond_stock
   const/4 v0, 0x1
   return v0
   :cond_stock
   ```
2. Trong `ExpandConfig.smali`:
   Tại hàm `getExpandMaxCount()I`, chèn ngay đầu hàm:
   ```smali
   invoke-static {}, Landroid/preference/TweaksHelper;->isWkTaskbarExpandEnabled()Z
   move-result v0
   if-eqz v0, :cond_stock_count
   invoke-static {}, Landroid/preference/TweaksHelper;->getWkTaskbarExpandCount()I
   move-result p0
   return p0
   :cond_stock_count
   ```

### Bước 6: Vá Cài đặt Màn hình chính (`LauncherSettingsFragment.smali`)
1. Tại phương thức `onResume()V` và `onStop()V`, thêm lệnh gọi tiêm giao diện:
   ```smali
   invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
   move-result-object v0
   invoke-static {p0, v0}, Lcom/android/launcher/settings/TweaksPreferenceInjector;->inject(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/Context;)V
   ```
2. **CỰC KỲ QUAN TRỌNG (Chống crash NPE):**
   Trong phương thức `updateExpandDockEntry()`, trước lệnh gọi `removePreference`:
   ```smali
   iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;
   if-nez p0, :cond_rem
   goto :goto_done
   :cond_rem
   invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->f(Landroidx/preference/Preference;)Z
   ```

---

## 6. QUY TRÌNH VÁ BẰNG PC (SMALI / BAKSMALI / APKTOOL)

Nếu sử dụng dòng lệnh thuần trên máy tính:
1. Decompile Multi-DEX:
   ```powershell
   java -jar baksmali.jar d OplusLauncher.apk -o smali_out
   ```
2. Áp dụng các file patch tương ứng từ thư mục `patches/a17/` hoặc `patches/a16/`.
3. Biên dịch lại mã nguồn Java helper:
   ```powershell
   javac -cp android.jar -d bin src_helpers/**/*.java
   d8 bin/**/*.class --output classes8.dex
   ```
4. Đóng gói lại Multi-DEX với `smali.jar`.

---

## 7. KỸ THUẬT TIÊM CHỮ KÝ GỐC OEM BLOCK 42 & CĂN CHỈNH 16KB PAGE-ALIGN

Android 15, 16 và 17 trên ColorOS sử dụng Linux Kernel hỗ trợ kích thước trang bộ nhớ **16KB Page Size**. Nếu APK không được căn chỉnh đúng, hệ điều hành sẽ từ chối tải thư viện hoặc gây lag giao diện.

1. **Căn chỉnh 16KB (Zipalign):**
   ```powershell
   zipalign -f -P 16 4 input_mod.apk temp_aligned.apk
   ```
2. **Tiêm khối chữ ký OEM (OrigSig Injection):**
   - File APK gốc của ColorOS chứa khối **APK Signing Block** với ID `0x7109871a` (Magic: `APK Sig Block 42`).
   - Sau khi thay đổi bytecode DEX, ta dùng script Python `inject_signature.py` trích xuất khối chữ ký từ APK gốc và ghép lại vào file APK mới ngay trước Central Directory.
   - Thao tác này giúp APK vượt qua kiểm tra tính toàn vẹn của hệ thống khi chạy dưới dạng System App trong ROM.

---

## 8. BẢNG TRA CỨU LỖI THƯỜNG GẶP & CÁCH KHẮC PHỤC (TROUBLESHOOTING)

| Hiện Tượng / Lỗi | Nguyên Nhân Gốc Rễ | Cách Khắc Phục |
| :--- | :--- | :--- |
| **`NoSuchMethodError` khi mở Cài đặt** | Gọi method trong DEX phụ (`classes8.dex`) nhưng method đó chưa được biên dịch hoặc bị lệch signature. | Kiểm tra lại `classes8.dex`, đảm bảo đã copy đủ các class Helper mới nhất từ `src_helpers/`. |
| **`NullPointerException: Preference.onPrepareForRemoval()`** | File `launcher_settings.xml` thiếu thẻ `key_dock_expand`, khiến `findPreference` trả về `null` rồi truyền vào `removePreference(null)`. | Thêm null-check `if-nez p0` trong `LauncherSettingsFragment.smali` tại method `updateExpandDockEntry`. |
| **Thanh dock bị vỡ hình / co giật khi xoay ngang** | Khi bật dock blur, launcher coi thiết bị như máy tính bảng ở mọi hướng xoay. | Thêm kiểm tra `isDeviceProfileInLandscape()` để vô hiệu hóa dock blur khi ở chế độ ngang. |
| **Icon tìm kiếm bị phủ màu trắng đơn sắc** | ColorOS tự động gọi `drawable.setTint()` đè màu hệ thống lên icon ứng dụng bên thứ ba. | Chuyển hướng lệnh gọi `setTint` sang `SearchPackageIndicatorHelper.tintIndicatorIcon()` để bảo toàn màu icon gốc. |
| **Bàn phím che mất danh sách app trong Dialog** | Cửa sổ Dialog mặc định không có cờ `SOFT_INPUT_ADJUST_RESIZE`. | Đã xử lý trong `SearchPackagePickerDialog`: tự động co giãn chiều cao danh sách khi bàn phím ảo xuất hiện. |

---
**Chúc bạn thực hiện thành công bản MOD ColorOS Launcher mượt mà và hoàn hảo nhất!**
