# HƯỚNG DẪN CHI TIẾT: THAY THẾ BỘ CONFIG UNIVERSAL CHO MỌI PHIÊN BẢN ATHENA
### Áp Dụng Cho ColorOS 14 / 15 / 16 / 17 (Android 14 - 17) Trên OPPO / OnePlus / Realme

---

## 🌟 GIỚI THIỆU TỔNG QUAN

Để khắc phục triệt để tình trạng **chậm trễ thông báo**, **bị tắt tiến trình khi vuốt đa nhiệm (Swipe-up Clear)**, và **hạn chế nóng máy / hao pin** do các daemon dọn dẹp ngầm của ColorOS nội địa Trung Quốc (CN), chúng tôi đã nghiên cứu và tạo ra **Bộ cấu hình Master chuẩn Quốc tế (Universal Config Set)**.

Bộ cấu hình này nằm tại thư mục:
- **Thư mục cấu hình**: [`C:\Users\KHANHSTARK\Downloads\Athena\Universal_Athena_Configs\assets\`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Universal_Athena_Configs/assets) (chứa 15 file XML).
- **Gói ZIP nén sẵn**: [`C:\Users\KHANHSTARK\Downloads\Athena\Universal_Athena_Configs\Universal_Athena_Assets.zip`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Universal_Athena_Configs/Universal_Athena_Assets.zip) (sẵn sàng copy vào điện thoại để MT Manager thay thế trong 1 chạm).
- **Cấu hình boolean hệ thống**: [`C:\Users\KHANHSTARK\Downloads\Athena\Universal_Athena_Configs\res\values\bools.xml`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Universal_Athena_Configs/res/values/bools.xml).

---

## 📋 MỤC LỤC
1. [Cơ chế hoạt động & Nguyên tắc tương thích đa phiên bản](#1-cơ-chế-hoạt-động--nguyên-tắc-tương-thích-đa-phiên-bản)
2. [Cách 1: Thay thế bằng MT Manager trên điện thoại (Không cần PC)](#2-cách-1-thay-thế-bằng-mt-manager-trên-điện-thoại-không-cần-pc)
3. [Cách 2: Tự động 1-Click trên máy tính PC (Khuyên dùng)](#3-cách-2-tự-động-1-click-trên-máy-tính-pc-khuyên-dùng)
4. [Phân tích chi tiết 15 file cấu hình XML trong Assets](#4-phân-tích-chi-tiết-15-file-cấu-hình-xml-trong-assets)
5. [Khắc phục sự cố & Kiểm tra hiệu quả sau khi cài đặt](#5-khắc-phục-sự-cố--kiểm-tra-hiệu-quả-sau-khi-cài-đặt)

---

## 1. CƠ CHẾ HOẠT ĐỘNG & NGUYÊN TẮC TƯƠNG THÍCH ĐA PHIÊN BẢN

### Tại sao bộ config này áp dụng được cho MỌI bản Athena?
1. **Toàn bộ cấu hình trong `assets/` là XML văn bản thuần UTF-8**:
   - Khác với thư mục `res/` bị biên dịch thành nhị phân (Binary XML) gắn chặt với từng phiên bản, thư mục `assets/` được `com.oplus.athena` nạp động qua `AssetManager.open("sys_*.xml")` và băm bằng trình phân tích `PullParser`.
   - Vì vậy, bạn có thể **thay thế trực tiếp** 15 file này vào bên trong bất kỳ tệp `Athena.apk` nào mà không làm hỏng cấu trúc APK.
2. **Khóa phiên bản `9999123199` chống ROMUpdate**:
   - Bình thường, ColorOS Cloud ROMUpdate (`com.oplus.romupdate`) sẽ âm thầm tải các file xml của Trung Quốc đè lên `/data/oplus/os/bpm/`.
   - Bằng cách đặt `<version>9999123199</version>`, Athena khi khởi động sẽ so sánh số phiên bản nội bộ với số phiên bản từ Cloud. Vì số phiên bản nội bộ là lớn nhất, **hệ thống luôn luôn ưu tiên dùng bộ cấu hình tùy chỉnh của bạn và miễn nhiễm với việc bị máy chủ OPPO ghi đè**.
3. **Công tắc Master `peculiar_kill_policy = true`**:
   - Ở bản nội địa (CN), ColorOS mặc định gán cờ `FORCE_STOP = 2` khi bạn vuốt xóa đa nhiệm.
   - Khi bật `peculiar_kill_policy = true`, Athena chuyển sang nhánh logic `KILL_PROCESS_ONLY = 1`, kích hoạt chuỗi khôi phục Service (`kill_restart_service`) và bảo vệ các tiến trình nằm trong danh sách trắng (Whitelist).

---

## 2. CÁCH 1: THAY THẾ BẰNG MT MANAGER TRÊN ĐIỆN THOẠI (KHÔNG CẦN PC)

Phương pháp này dành cho bạn khi tải một bản ROM mới hoặc khi cập nhật hệ thống ngay trên điện thoại:

### Chuẩn bị:
- Ứng dụng **MT Manager** (đã cấp quyền Root).
- Tải file [`Universal_Athena_Assets.zip`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Universal_Athena_Configs/Universal_Athena_Assets.zip) vào bộ nhớ trong máy (ví dụ `/sdcard/Download/`).

### Thao tác từng bước:

#### Bước 1: Trích xuất và sao lưu `Athena.apk` gốc
1. Mở MT Manager, bảng bên trái mở đường dẫn:
   ```text
   /system_ext/app/Athena/
   ```
2. Bảng bên phải mở thư mục làm việc, ví dụ `/sdcard/ModAthena/`.
3. Nhấn giữ file `Athena.apk` bên trái -> Chọn **Sao chép** (Copy) sang bảng bên phải.
4. Tạo thêm 1 bản copy dự phòng đặt tên là `Athena_Orig.apk` (dùng để trích xuất chữ ký gốc nếu cần).

#### Bước 2: Sửa công tắc Master trong `resources.arsc`
1. Bấm vào file `Athena.apk` -> Chọn **Xem** (View).
2. Bấm vào file `resources.arsc` -> Chọn **Trình chỉnh sửa Arsc** (Arsc Editor).
3. Chạm vào tên gói tài nguyên (`com.oplus.athena`).
4. Tìm kiếm từ khóa: `peculiar_kill_policy`.
5. Đổi giá trị từ `false` thành `true`.
6. (Tùy chọn) Tìm thêm `guardelf_associate_with_startup` và `guardelf_kill_sensor` đổi sang `true`.
7. Nhấn phím **Quay lại** (Back) -> Chọn **Lưu và Thoát** (Save and exit).
8. Khi MT Manager hỏi cập nhật file nén:
   > ⚠️ **CỰC KỲ QUAN TRỌNG**: **BỎ TÍCH** ô *"Ký tệp apk"* (Sign apk) -> Nhấn **OK**.

#### Bước 3: Thay thế toàn bộ thư mục `assets/` trong 1 chạm
1. Vẫn đang ở bên trong giao diện "Xem" của `Athena.apk`.
2. Ở bảng đối diện của MT Manager, mở file [`Universal_Athena_Assets.zip`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Universal_Athena_Configs/Universal_Athena_Assets.zip) -> Bạn sẽ thấy thư mục `assets`.
3. Nhấn giữ vào thư mục `assets` -> Chọn **Thêm** (Add) để ghi đè vào `Athena.apk`.
4. MT Manager sẽ tự động thay thế toàn bộ 15 file XML chỉ trong 2 giây!
5. Nhấn Back thoát khỏi APK.

#### Bước 4: Tiêm lại chữ ký gốc OEM (OrigSig)
Vì MT Manager sửa file APK sẽ làm đứt khối chữ ký OEM (APK Signing Block v2/v3), bạn cần tiêm lại chữ ký từ file gốc `Athena_Orig.apk`:
- Mở **Terminal** trong MT Manager hoặc **Termux** và chạy lệnh:
  ```bash
  python -c "
  import struct
  orig = open('/sdcard/ModAthena/Athena_Orig.apk', 'rb').read()
  pos = orig.find(b'APK Sig Block 42')
  size = struct.unpack('<Q', orig[pos-8:pos])[0]
  block = orig[pos+16-size-8 : pos+16]

  mod = open('/sdcard/ModAthena/Athena.apk', 'rb').read()
  eocd = mod.rfind(b'\x50\x4b\x05\x06')
  cd = struct.unpack('<I', mod[eocd+16:eocd+20])[0]
  out = mod[:cd] + block + mod[cd:eocd] + mod[eocd:eocd+16] + struct.pack('<I', cd + len(block)) + mod[eocd+20:]
  open('/sdcard/ModAthena/Athena_Patched.apk', 'wb').write(out)
  print('Inject OEM Sig thanh cong!')
  "
  ```
- *Lưu ý: Nếu máy bạn đã cài module tắt kiểm tra chữ ký (Core-Patch), bạn có thể bỏ qua bước tiêm chữ ký này.*

#### Bước 5: Cập nhật vào Module Magisk / KernelSU
1. Mở file zip [`Athena_Fix_Notification_Magisk_Module.zip`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Athena_Fix_Notification_Magisk_Module.zip).
2. Chép đè file `Athena_Patched.apk` vào:
   - `system/system_ext/app/Athena/Athena.apk`
   - `system_ext/app/Athena/Athena.apk`
3. Mở KernelSU / Magisk -> Chọn **Cài đặt từ bộ nhớ** -> Flash file zip và Khởi động lại máy.

---

## 3. CÁCH 2: TỰ ĐỘNG 1-CLICK TRÊN MÁY TÍNH PC (KHUYÊN DÙNG)

Nếu bạn có máy tính Windows, toàn bộ quy trình trên được tự động hóa 100%:

1. Copy file `Athena.apk` (hoặc `Athena_CN.apk` từ bất kỳ bản ROM nào) vào thư mục:
   ```text
   C:\Users\KHANHSTARK\Downloads\Athena\
   ```
2. **Kéo thả** file APK đó vào tệp:
   ```text
   Run_Universal_Patcher.bat
   ```
3. Script sẽ tự động:
   - Trích xuất khối chữ ký gốc OEM.
   - Decompile APK.
   - Nạp toàn bộ 15 file XML từ kho `Universal_Athena_Configs/assets/`.
   - Kích hoạt `peculiar_kill_policy=true` trong `bools.xml`.
   - Rebuild lại APK bằng Apktool 2.12.0.
   - Zipalign căn chỉnh chuẩn 4-byte.
   - Tiêm lại chữ ký gốc OEM (OrigSig Injection).
   - Đóng gói thành Module Magisk/KernelSU sẵn sàng flash: `Athena_Universal_Fix_Notification_Module.zip`.
4. Bạn chỉ việc copy file `.zip` vào điện thoại và flash!

---

## 4. PHÂN TÍCH CHI TIẾT 15 FILE CẤU HÌNH XML TRONG ASSETS

Dưới đây là bảng phân tích kỹ thuật từng file XML và lý do chỉnh sửa:

### 1. `sys_athena_config_list.xml` (File Điều Hành Trung Tâm)
- **Tác dụng**: Kiểm soát các bộ lọc dọn dẹp RAM, hành vi khi vuốt xóa Recent Tasks, và cơ chế AI Battery Killer.
- **Điểm chỉnh sửa**:
  - `ai_battery_adaptive_clear_enabled = false`: Tắt tính năng AI tự động kill ứng dụng chạy nền dựa theo phán đoán pin.
  - `sys_level_deep_clear_switch = false`: Vô hiệu hóa tính năng dọn dẹp sâu cấp hệ thống làm ngắt tiến trình nền.
  - `camera_start_clear_improve_appcare = false`: Ngăn hệ thống dọn sạch app nhắn tin mỗi khi mở máy ảnh chụp ảnh.
  - `swipe_up_protect_app_list`: Bổ sung toàn bộ danh sách 29 app (Zalo, Telegram, Messenger, WhatsApp, Viber, Gmail...).
  - `swipe_up_force_stop_app_list`: Chỉ giữ lại 2 ứng dụng phát nhạc (`com.zing.mp3`, `com.spotify.music`) để khi người dùng vuốt xóa thì nhạc tắt, còn các app nhắn tin KHÔNG BAO GIỜ bị force-stop.

### 2. `sys_alwaysalive_config_list.xml` (Tối Ưu Nhiệt Độ & Pin)
- **Tác dụng**: Ở bản China, file này định nghĩa các app nội địa Trung Quốc được phép chạy liên tục trong nền (Always Alive).
- **Điểm chỉnh sửa**:
  - `always_alive_enabled = false`: Tắt toàn bộ cơ chế ép giữ sống ứng dụng bloatware của ColorOS China.
  - `always_alive_dcs_enabled = false`: Tắt báo cáo thống kê dữ liệu DCS.
  - **Kết quả**: Máy mát hơn rõ rệt, không còn tình trạng chạy ngầm nóng máy và hao pin vô lý.

### 3. `sys_athena_dcs_config.xml` (Triệt Tiêu Telemetry Ngầm)
- **Tác dụng**: Quản lý việc gửi dữ liệu phân tích hành vi người dùng về máy chủ DCS của HeyTap/OPPO.
- **Điểm chỉnh sửa**:
  - `app_status_enable = false`: Vô hiệu hóa việc liên tục thăm dò trạng thái tiến trình để gửi báo cáo.
  - Giảm tải CPU và giải phóng chu kỳ xử lý của nhân vi xử lý.

### 4. `sys_athena_lock_app_config.xml` (Khóa Recent Tự Động)
- **Tác dụng**: Tự động đánh dấu khóa ứng dụng (Lock Recent Tasks) để tránh việc vô tình bấm nút "Xóa tất cả" làm mất app.
- **Điểm chỉnh sửa**:
  - Thêm cấu hình khóa mặc định cho cả bản chính và bản nhân bản (`#999`) của Zalo, Telegram, Messenger, v.v.

### 5. `sys_elsa_config_list.xml` (Miễn Trừ HANS Đóng Băng Mạng Nền)
- **Tác dụng**: Quản lý HANS (Heterogeneous Auto-freeze Networking System - Hệ thống tự động đóng băng mạng của ColorOS).
- **Điểm chỉnh sửa**:
  - `category="1"` (HANS Net Whitelist): Miễn trừ toàn bộ app liên lạc khỏi việc bị cắt kết nối Socket/TCP khi tắt màn hình.
  - `category="100"` (HANS Skip Frozen Whitelist): Ngăn chặn HANS đưa tiến trình vào cgroup `freezer`.
  - `category="80"`: Tương thích đặc thù cho Android 16+ (GMS Push, FCM, WhatsApp).
  - `<donot_freeze_app_list>`: Bổ sung trực tiếp danh sách ứng dụng không bao giờ được đóng băng.

### 6. `sys_clear_appfilter_list.xml` (Cơ Chế Khởi Động Lại Dịch Vụ)
- **Tác dụng**: Xác định phương thức xử lý khi tiến trình bị dọn dẹp.
- **Điểm chỉnh sửa**:
  - Gán nhãn `use_kill="true"` kết hợp với `kill_restart_service="{package}"` và `remove_task_filter="{package}"` cho từng ứng dụng.
  - Khi hệ thống cần giải phóng RAM, Athena chỉ kill tiến trình UI và lập tức khôi phục Service thông báo ngầm, không để app chết hẳn.

### 7. `sys_athena_appfilter_list.xml` (Mặt Nạ Bảo Vệ Bitmask)
- **Tác dụng**: Gán cờ bảo vệ nhị phân cho các ứng dụng trong hệ thống.
- **Điểm chỉnh sửa**:
  - Bản CN mặc định chỉ cấp quyền tối cao (`v="16543"`) cho WeChat (`com.tencent.mm`) và QQ (`com.tencent.mobileqq`).
  - Chúng tôi đã gán quyền bảo vệ tối cao `v="16543"` cho toàn bộ Zalo, Telegram, Messenger, WhatsApp, Viber, Teams, v.v.

### 8. `sys_appfrozen_config_list.xml` (Danh Sách Trắng Không Đóng Băng)
- **Tác dụng**: Chống ngủ đông ở tầng framework ColorOS.
- **Điểm chỉnh sửa**:
  - Bổ sung tất cả ứng dụng nhắn tin vào danh sách `<no_frozen>`.

### 9. `sys_clear_config.xml` (Tắt Daemon Quét Ép Kill)
- **Tác dụng**: Quản lý các daemon giám sát RAM và CPU ngầm.
- **Điểm chỉnh sửa**:
  - `em_debugger_version_switch_for_version_user = false`
  - `force_kill_monitor_enable = false`
  - `itgsa_fg_abnormal_handle_enable = false`
  - Chấm dứt các vòng lặp kiểm tra ép kill ứng dụng gây giật lag và tốn pin.

### 10. `sys_guardelf_config_list.xml` (Đánh Thức Thông Báo GuardElf)
- **Tác dụng**: Quản lý hệ thống bảo vệ năng lượng GuardElf của OPPO.
- **Điểm chỉnh sửa**:
  - Bổ sung thẻ `<notify>`: Cho phép app luôn được quyền đẩy thông báo Heads-up / Notification bar.
  - Bổ sung thẻ `<killrestart>`: Tương tự như bản Global, cho phép GuardElf tự động đánh thức app khi có sự kiện Intent.

### 11. `sys_system_config_list.xml` (Cấu Hình Dịch Vụ Hệ Thống)
- **Tác dụng**: Quản lý liên lạc giữa các tiến trình cấp hệ thống.
- **Điểm chỉnh sửa**:
  - Bổ sung thẻ `<KillRestartServiceProNew>` và `<ProtectSelfWhiteList>` cho tất cả các ứng dụng mục tiêu.

### 12. `sys_athena_livelock_config_list.xml` (Bảo Vệ Phát Nhạc Nền)
- **Tác dụng**: Giữ sống các trình phát âm thanh khi màn hình tắt.
- **Điểm chỉnh sửa**:
  - Bổ sung YouTube Music, Spotify, Zing MP3, Apple Music, SoundCloud, Poweramp vào `default_livelock_audio_keep`.

### 13. `sys_cpulimit_config.xml` (Chống Giới Hạn Xung Nhịp CPU)
- **Tác dụng**: Kiểm soát việc hạ xung nhịp các tiến trình nền.
- **Điểm chỉnh sửa**:
  - Đảm bảo `cpuSetConfig enable="false"` để các tác vụ đồng bộ tin nhắn không bị bóp nghẽn CPU.

### 14. `sys_athena_hybrid_swap_config.xml` (Cân Bằng Bộ Nhớ zRAM / NAND Swap)
- **Tác dụng**: Tối ưu ngưỡng swap dữ liệu giữa RAM thực và bộ nhớ ảo, giúp đa nhiệm mượt mà mà không gây nghẽn I/O bộ nhớ trong.

### 15. `sys_elsa_config_list_abnormal.xml`
- **Tác dụng**: Danh sách ngoại lệ bất thường của ELSA, giữ chuẩn sạch để không gây xung đột framework.

---

## 5. KHẮC PHỤC SỰ CỐ & KIỂM TRA HIỆU QUẢ SAU KHI CÀI ĐẶT

Sau khi flash module và khởi động lại máy, bạn có thể kiểm tra hiệu lực ngay bằng các lệnh sau qua ADB hoặc Termux:

### 1. Kiểm tra Whitelist Swipe-Up trong RAM:
```bash
adb shell dumpsys activity service com.oplus.athena | grep -A 35 "swipe_up_protect_app_list"
```
*Kết quả thành công: Sẽ hiển thị đầy đủ `com.zing.zalo`, `org.telegram.messenger`, `com.facebook.orca`, v.v.*

### 2. Kiểm tra cờ Master Switch Global:
```bash
adb shell dumpsys activity service com.oplus.athena | grep "peculiar_kill_policy"
```
*Kết quả thành công: Hiển thị giá trị `true`.*

### 3. Thử nghiệm thực tế:
1. Mở Zalo / Telegram / Messenger và nhắn một vài tin.
2. Vuốt mở màn hình Recent Tasks -> Vuốt đẩy ứng dụng lên trên để Xóa (Swipe-up Clear).
3. Khóa màn hình điện thoại.
4. Lấy một máy khác gửi tin nhắn đến: **Chuông thông báo sẽ vang lên ngay lập tức (0 giây trễ)!**
