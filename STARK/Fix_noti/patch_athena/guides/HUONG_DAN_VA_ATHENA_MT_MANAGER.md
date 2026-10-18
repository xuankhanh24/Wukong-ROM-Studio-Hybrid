# HƯỚNG DẪN CHI TIẾT: VÁ ATHENA_CN BẰNG MT MANAGER TRÊN ĐIỆN THOẠI
### Port Tính Năng Global, Mở Khóa Chạy Ngầm & Fix Mất Thông Báo Không Cần Máy Tính (Giữ Chữ Ký Gốc OEM)

---

## MỤC LỤC
1. [Tại sao dùng MT Manager & Những lưu ý sống còn](#1-tại-sao-dùng-mt-manager--những-lưu-ý-sống-còn)
2. [Chuẩn bị trên điện thoại](#2-chuẩn-bị-trên-điện-thoại)
3. [Bước 1: Trích xuất file Athena.apk gốc từ hệ thống](#bước-1-trích-xuất-file-athenaapk-gốc-từ-hệ-thống)
4. [Bước 2: Sửa `resources.arsc` (Bật Master Switch Global)](#bước-2-sửa-resourcesarsc-bật-master-switch-global)
5. [Bước 3: Sửa các file cấu hình XML trong `assets/`](#bước-3-sửa-các-file-cấu-hình-xml-trong-assets)
6. [Bước 4: Tiêm lại chữ ký gốc OEM (OrigSig) trên điện thoại](#bước-4-tiêm-lại-chữ-ký-gốc-oem-origsig-trên-điện-thoại)
7. [Bước 5: Đóng gói và cập nhật Module Magisk / KernelSU](#bước-5-đóng-gói-và-cập-nhật-module-magisk--kernelsu)
8. [Bước 6: Flash Module & Kiểm tra kết quả](#bước-6-flash-module--kiểm-tra-kết-quả)

---

## 1. TẠI SAO DÙNG MT MANAGER & NHỮNG LƯU Ý SỐNG CÒN

**MT Manager** là công cụ quản lý tệp và dịch ngược APK mạnh mẽ nhất chạy trực tiếp trên Android. Bạn có thể mở trực tiếp APK để sửa `resources.arsc` và các file XML trong `assets/` mà không cần cài đặt môi trường Java, Apktool hay máy tính PC.

### ⚠️ 2 NGUYÊN TẮC BẮT BUỘC:
1. **TUYỆT ĐỐI KHÔNG ĐƯỢC CHỌN "KÝ TỆP APK" (SIGN APK)**:
   - `Athena.apk` là ứng dụng hệ thống chạy quyền **UID 1000 (System)**, dùng chung chữ ký gốc của hệ điều hành ColorOS.
   - Nếu bạn chọn ký bằng MT Manager (sẽ dùng chứng chỉ Testkey), máy sẽ bị crash hoặc bootloop vì lỗi `Signature mismatch for shared user android.uid.system`.
   - **Quy tắc**: Mọi thao tác lưu trong MT Manager đều phải **BỎ TÍCH KÝ**.
2. **KHÔNG CHỈNH SỬA FILE `classes.dex`**:
   - Giữ nguyên 100% bytecode Smali gốc, chỉ sửa tài nguyên và XML.

---

## 2. CHUẨN BỊ TRÊN ĐIỆN THOẠI

1. Ứng dụng **MT Manager** (Bản miễn phí hoặc VIP đều được, đã cấp quyền Root).
2. Thiết bị đã root bằng **KernelSU**, **Magisk** hoặc **APatch**.
3. Ứng dụng **Termux** (dùng để chạy script ghép chữ ký gốc) HOẶC dùng tính năng **Terminal** tích hợp sẵn của MT Manager.
4. Tải file Module mẫu: [`Athena_Fix_Notification_Magisk_Module.zip`](file:///C:/Users/KHANHSTARK/Downloads/Athena/Athena_Fix_Notification_Magisk_Module.zip) vào bộ nhớ trong máy.

---

## 3. BƯỚC 1: TRÍCH XUẤT FILE ATHENA.APK GỐC TỪ HỆ THỐNG

1. Mở **MT Manager**, cấp quyền Root khi được hỏi.
2. Tại bảng bên trái, điều hướng đến thư mục hệ thống:
   ```
   /system_ext/app/Athena/
   ```
3. Bạn sẽ thấy file `Athena.apk`.
4. Tại bảng bên phải, tạo một thư mục làm việc trong bộ nhớ máy, ví dụ:
   ```
   /sdcard/Athena_Mod/
   ```
5. Nhấn giữ file `Athena.apk` bên trái -> Chọn **Sao chép** (Copy) sang thư mục `/sdcard/Athena_Mod/` bên phải.
6. Nhân bản thêm một bản copy nữa:
   - Đặt tên bản 1 là `Athena_CN_Orig.apk` (dùng để giữ chữ ký gốc).
   - Đặt tên bản 2 là `Athena_Work.apk` (dùng để thực hiện chỉnh sửa).

---

## 4. BƯỚC 2: SỬA `resources.arsc` (BẬT MASTER SWITCH GLOBAL)

Đây là bước quan trọng nhất quyết định việc vuốt đa nhiệm có bị kill app hay không:

1. Bấm vào file `Athena_Work.apk` -> Chọn **Xem** (View).
2. Bấm vào file `resources.arsc` -> Chọn **Trình chỉnh sửa Arsc** (Arsc Editor).
3. Chọn gói tài nguyên (chạm vào tên gói, ví dụ `com.oplus.athena`).
4. Tìm đến mục loại tài nguyên **bool**:
   - Hoặc bấm biểu tượng **Kính lúp (Tìm kiếm)** ở góc trên bên phải.
   - Nhập tìm kiếm: `peculiar_kill_policy`.
5. Chạm vào `peculiar_kill_policy` -> Sửa giá trị từ `false` thành `true`.
6. Tiếp tục tìm và đổi 2 mục sau thành `true`:
   - `guardelf_associate_with_startup` -> `true`
   - `guardelf_kill_sensor` -> `true`
7. Bấm phím **Quay lại** (Back) trên điện thoại -> Chọn **Lưu và Thoát** (Save and exit).
8. MT Manager sẽ hiện thông báo:
   > *"Tệp resources.arsc đã được sửa đổi, bạn có muốn cập nhật vào tệp nén không?"*
9. **CHÚ Ý**: 
   - Đảm bảo **BỎ TÍCH** ô *"Ký tệp apk"* (Sign apk) nếu có hiển thị.
   - Nhấn nút **CẬP NHẬT** (OK).

---

## 5. BƯỚC 3: SỬA CÁC FILE CẤU HÌNH XML TRONG `assets/`

Vẫn ở bên trong giao diện "Xem" của `Athena_Work.apk`, bấm vào thư mục **`assets/`**. Tất cả file XML ở đây là văn bản thuần UTF-8, có thể mở trực tiếp bằng Trình soạn thảo của MT Manager.

### 5.1. Sửa `sys_athena_config_list.xml`
1. Bấm vào `sys_athena_config_list.xml` -> Chọn **Trình soạn thảo văn bản** (Text Editor).
2. Tìm dòng `ai_battery_adaptive_clear_enabled` -> Đổi giá trị `val="true"` thành `val="false"`.
3. Tìm `<config_list key="swipe_up_force_stop_app_list"`:
   - Xóa bỏ các app nhắn tin bị ColorOS ép force-stop, chỉ giữ lại 2 app nghe nhạc:
   ```xml
   <config_list key="swipe_up_force_stop_app_list" type="String">
       <sub val="com.zing.mp3" />
       <sub val="com.spotify.music" />
   </config_list>
   ```
4. Tìm `<config_list key="swipe_up_protect_app_list"` và `<config_list key="fw_middle_priority_app_list"`:
   - Thêm các ứng dụng bạn muốn nhận thông báo tức thì:
   ```xml
   <sub val="com.zing.zalo" />
   <sub val="org.telegram.messenger" />
   <sub val="tw.nekomimi.nekogram" />
   <sub val="org.telegram.plus" />
   <sub val="org.thunderdog.challegram" />
   <sub val="com.facebook.orca" />
   <sub val="com.facebook.katana" />
   <sub val="com.whatsapp" />
   <sub val="com.whatsapp.w4b" />
   <sub val="com.viber.voip" />
   <sub val="jp.naver.line.android" />
   <sub val="com.discord" />
   <sub val="com.google.android.gm" />
   <sub val="com.instagram.android" />
   <sub val="org.thoughtcrime.securesms" />
   ```
5. Nhấn icon **Lưu (Hình đĩa mềm)** ở góc trên -> Nhấn Back -> Chọn **Cập nhật** vào tệp nén (KHÔNG ký).

---

### 5.2. Sửa `sys_clear_appfilter_list.xml`
1. Mở `sys_clear_appfilter_list.xml` bằng Text Editor.
2. Thêm các dòng sau trước thẻ đóng `</filter-conf>`:
   ```xml
   <p_wl pkg="com.zing.zalo" use_kill="true" kill_restart_service="com.zing.zalo" remove_task_filter="com.zing.zalo" />
   <p_wl pkg="org.telegram.messenger" use_kill="true" kill_restart_service="org.telegram.messenger" remove_task_filter="org.telegram.messenger" />
   <p_wl pkg="tw.nekomimi.nekogram" use_kill="true" kill_restart_service="tw.nekomimi.nekogram" remove_task_filter="tw.nekomimi.nekogram" />
   <p_wl pkg="com.facebook.orca" use_kill="true" kill_restart_service="com.facebook.orca" remove_task_filter="com.facebook.orca" />
   <p_wl pkg="com.whatsapp" use_kill="true" kill_restart_service="com.whatsapp" remove_task_filter="com.whatsapp" />
   <p_wl pkg="com.viber.voip" use_kill="true" kill_restart_service="com.viber.voip" remove_task_filter="com.viber.voip" />
   <p_wl pkg="jp.naver.line.android" use_kill="true" kill_restart_service="jp.naver.line.android" remove_task_filter="jp.naver.line.android" />
   <p_wl pkg="com.discord" use_kill="true" kill_restart_service="com.discord" remove_task_filter="com.discord" />
   <p_wl pkg="com.google.android.gm" use_kill="true" kill_restart_service="com.google.android.gm" remove_task_filter="com.google.android.gm" />
   <p_wl pkg="com.instagram.android" use_kill="true" kill_restart_service="com.instagram.android" remove_task_filter="com.instagram.android" />
   ```
3. Lưu và cập nhật vào APK.

---

### 5.3. Sửa `sys_system_config_list.xml`
1. Mở `sys_system_config_list.xml`.
2. Thêm các dòng bảo vệ tiến trình trước `</sys_system_config_list>`:
   ```xml
   <KillRestartServiceProNew>com.zing.zalo</KillRestartServiceProNew>
   <KillRestartServiceProNew>org.telegram.messenger</KillRestartServiceProNew>
   <KillRestartServiceProNew>tw.nekomimi.nekogram</KillRestartServiceProNew>
   <KillRestartServiceProNew>com.facebook.orca</KillRestartServiceProNew>
   <KillRestartServiceProNew>com.whatsapp</KillRestartServiceProNew>

   <RemoveTaskFilterProcessNew>com.zing.zalo</RemoveTaskFilterProcessNew>
   <RemoveTaskFilterProcessNew>org.telegram.messenger</RemoveTaskFilterProcessNew>
   <RemoveTaskFilterProcessNew>tw.nekomimi.nekogram</RemoveTaskFilterProcessNew>
   <RemoveTaskFilterProcessNew>com.facebook.orca</RemoveTaskFilterProcessNew>
   <RemoveTaskFilterProcessNew>com.whatsapp</RemoveTaskFilterProcessNew>

   <ProtectSelfWhiteList>com.zing.zalo</ProtectSelfWhiteList>
   <ProtectSelfWhiteList>org.telegram.messenger</ProtectSelfWhiteList>
   <ProtectSelfWhiteList>tw.nekomimi.nekogram</ProtectSelfWhiteList>
   <ProtectSelfWhiteList>com.facebook.orca</ProtectSelfWhiteList>
   <ProtectSelfWhiteList>com.whatsapp</ProtectSelfWhiteList>
   ```
3. Lưu và cập nhật.

---

### 5.4. Sửa `sys_athena_lock_app_config.xml` (Tự động khóa app Recent)
1. Mở `sys_athena_lock_app_config.xml`.
2. Thay thế toàn bộ bằng cấu hình khóa app chuẩn Global:
   ```xml
   <?xml version="1.0" encoding="utf-8"?>
   <filter-conf>
       <version>9999123199</version>
       <filter-name>sys_athena_lock_app_config</filter-name>
       <config_map key="default_lock_app" type="Integer">
           <sub key="com.zing.zalo" val="0" />
           <sub key="com.zing.zalo#999" val="0" />
           <sub key="org.telegram.messenger" val="0" />
           <sub key="org.telegram.messenger#999" val="0" />
           <sub key="tw.nekomimi.nekogram" val="0" />
           <sub key="tw.nekomimi.nekogram#999" val="0" />
           <sub key="com.facebook.orca" val="0" />
           <sub key="com.facebook.orca#999" val="0" />
           <sub key="com.whatsapp" val="0" />
           <sub key="com.whatsapp#999" val="0" />
           <sub key="com.viber.voip" val="0" />
           <sub key="com.viber.voip#999" val="0" />
       </config_map>
   </filter-conf>
   ```
3. Lưu và cập nhật.

---

### 5.5. Sửa `sys_elsa_config_list.xml` (Chống HANS đóng băng mạng)
1. Mở `sys_elsa_config_list.xml`.
2. Thêm 2 cấu hình Category 1 (Net White) và Category 100 (Skip Frozen White) trước `</filter-conf>`:
   ```xml
   <pkgConfig category="1" name="com.zing.zalo#org.telegram.messenger#tw.nekomimi.nekogram#com.facebook.orca#com.whatsapp#com.viber.voip#jp.naver.line.android#com.discord#com.google.android.gm#com.instagram.android" />
   <pkgConfig category="100" name="com.zing.zalo#org.telegram.messenger#tw.nekomimi.nekogram#com.facebook.orca#com.whatsapp#com.viber.voip#jp.naver.line.android#com.discord#com.google.android.gm#com.instagram.android" />
   ```
3. Trong mục `<donot_freeze_app_list>`, thêm:
   ```xml
   <item>com.zing.zalo</item>
   <item>org.telegram.messenger</item>
   <item>tw.nekomimi.nekogram</item>
   <item>com.facebook.orca</item>
   <item>com.whatsapp</item>
   ```
4. Lưu và cập nhật.

---

### 5.6. Sửa `sys_alwaysalive_config_list.xml`
1. Mở `sys_alwaysalive_config_list.xml`.
2. Đổi `always_alive_enabled` thành `false` (chuẩn Global):
   ```xml
   <config key="always_alive_enabled" type="Boolean" val="false"/>
   <config key="always_alive_dcs_enabled" type="Boolean" val="false"/>
   <config key="only_enable_whitelist_package" type="Boolean" val="true"/>
   ```
3. Lưu và cập nhật.

---

### 5.7. Đổi version lên `9999123199` cho tất cả 14 file XML
Mở lần lượt từng file `.xml` trong thư mục `assets/`, tìm dòng `<version>...</version>` và đổi thành:
```xml
<version>9999123199</version>
```
*(Thao tác này ngăn máy chủ ColorOS tự động tải đè cấu hình nội địa Trung Quốc về máy của bạn).*

---

## 6. BƯỚC 4: TIÊM LẠI CHỮ KÝ GỐC OEM (ORIGSIG) TRÊN ĐIỆN THOẠI

Khi MT Manager cập nhật file nén, bảng thư mục trung tâm (Central Directory) được ghi lại và khối chữ ký số nhị phân V2/V3 của nhà sản xuất (OPPO/OnePlus) ở cuối file APK có thể bị tách ra.

Để khôi phục khối chữ ký gốc 100% ngay trên điện thoại:

1. Trong thư mục `/sdcard/Athena_Mod/`, tạo một file tên là `inject.py` bằng MT Manager:
2. Dán đoạn mã Python sau vào `inject.py`:

```python
import struct
import os

def extract_block(apk_path):
    magic = b"APK Sig Block 42"
    with open(apk_path, "rb") as f:
        data = f.read()
    pos = data.find(magic)
    if pos == -1:
        raise ValueError("No APK Sig Block in " + apk_path)
    size = struct.unpack("<Q", data[pos - 8 : pos])[0]
    start = pos + 16 - size - 8
    return data[start : pos + 16]

def inject_block(input_apk, block, output_apk):
    with open(input_apk, "rb") as f:
        data = f.read()
    eocd_pos = data.rfind(b"\x50\x4b\x05\x06")
    cd_offset = struct.unpack("<I", data[eocd_pos + 16 : eocd_pos + 20])[0]
    
    entries = data[:cd_offset]
    cd = data[cd_offset:eocd_pos]
    eocd = bytearray(data[eocd_pos:])
    
    new_cd_offset = cd_offset + len(block)
    eocd[16:20] = struct.pack("<I", new_cd_offset)
    
    out = entries + block + cd + bytes(eocd)
    with open(output_apk, "wb") as f:
        f.write(out)
    print("Done! Output: " + output_apk)

if __name__ == "__main__":
    block = extract_block("Athena_CN_Orig.apk")
    inject_block("Athena_Work.apk", block, "Athena_Final.apk")
```

3. **Chạy script `inject.py`**:
   - **Cách 1 (Dùng MT Manager Terminal)**: Vuốt từ cạnh trái MT Manager ra -> Chọn **Terminal** -> Gõ:
     ```bash
     cd /sdcard/Athena_Mod
     python inject.py
     ```
   - **Cách 2 (Dùng Termux)**: Mở Termux -> Gõ:
     ```bash
     cd /sdcard/Athena_Mod
     python inject.py
     ```
4. Kết quả xuất hiện file **`Athena_Final.apk`** mang chữ ký gốc 100% của hệ điều hành!

---

## 7. BƯỚC 5: ĐÓNG GÓI VÀO MODULE MAGISK / KERNELSU BẰNG MT MANAGER

MT Manager xử lý file nén `.zip` cực kỳ nhanh chóng và không làm hỏng cấu trúc phân quyền:

1. Tại bảng bên trái MT Manager: Tìm đến file `Athena_Fix_Notification_Magisk_Module.zip`.
2. Bấm vào file `.zip` -> Chọn **Xem** (View).
3. Tại bảng bên phải: Đổi tên file `Athena_Final.apk` thành `Athena.apk`.
4. Sao chép đè file `Athena.apk` vào 2 đường dẫn bên trong file zip:
   - Đường dẫn 1: `system_ext/app/Athena/Athena.apk`
   - Đường dẫn 2: `system/system_ext/app/Athena/Athena.apk`
5. Nhấn Quay lại để MT Manager lưu và đóng file zip lại.

> **Tệp `service.sh` trong module**: Đã được tích hợp sẵn các lệnh tự động nạp các ứng dụng nhắn tin vào `/data/oplus/os/startup/associate_white_list.txt` và `/data/oplus/os/startup/autostart_white_list.txt` mỗi khi máy khởi động xong, đảm bảo GMS/FCM đẩy thông báo không bao giờ bị chặn.

---

## 8. BƯỚC 6: FLASH MODULE & KIỂM TRA KẾT QUẢ

1. Mở ứng dụng **KernelSU** (hoặc **Magisk / APatch**).
2. Chuyển sang tab **Mô-đun** (Modules) -> Chọn **Cài đặt từ bộ nhớ**.
3. Chọn file `Athena_Fix_Notification_Magisk_Module.zip` bạn vừa cập nhật bằng MT Manager.
4. Quá trình cài đặt hoàn tất -> Nhấn **Khởi động lại** (Reboot).

### Cách kiểm tra sau khi máy lên:
1. Mở MT Manager Terminal (hoặc Termux gõ `su`):
   ```bash
   logcat -d | grep -i peculiar
   ```
   👉 Kết quả hiện: `AthenaContext: updated config info, and peculiar kill policy true` là **thành công 100%**.
2. Mở Telegram / Zalo -> Nhấn Home -> Vuốt đa nhiệm xóa app.
3. Trong Terminal gõ:
   ```bash
   pidof tw.nekomimi.nekogram
   # hoặc
   pidof com.zing.zalo
   ```
   👉 Số tiến trình (PID) **vẫn còn nguyên vẹn**.
4. Lấy máy khác gửi tin nhắn thử: **Thông báo lập tức hiện lên màn hình kèm âm thanh và rung!**
