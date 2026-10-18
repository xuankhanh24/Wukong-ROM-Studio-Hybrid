# Oplus Camera Auto Patcher (STARK / Wukong ROM Studio)

Công cụ tự động hóa vá ứng dụng **OplusCamera** độc lập, thông minh và sạch sẽ cho các dòng máy OPPO / OnePlus chạy ColorOS 14, ColorOS 15, ColorOS 16 và ColorOS 17 (Android 14 -> 17).

---

## 🌟 Các Tính Năng Nổi Bật

1. **Mở khóa Dải Zoom Động (Dynamic Zoom Range Override)**:
   * Cho phép tùy biến dải zoom từ mặc định lên tới 30x, 60x, 120x hoặc 240x.
   * Điều khiển động qua biến hệ thống `Settings.Global` mà không cần sửa lại APK:
     * `wk_camera_zoom_mod_enabled`: `1` (Bật) / `0` (Tắt).
     * `wk_camera_zoom_max_ratio_x100`: Tỷ lệ zoom tối đa x100 (Ví dụ: `3000` = 30.0x, `6000` = 60.0x, `12000` = 120.0x).
2. **Mở khóa Hướng dẫn Chuyên Nghiệp (Hasselblad Lumo & Video Guide)**:
   * Tự động bật `com.oplus.video.guide.support` và `com.oplus.lumo.setting.guide.support` trực tiếp tại gốc `CameraConfig`.
3. **Nhận diện Ngữ nghĩa (Semantic Bytecode Signature)**:
   * Hoàn toàn không phụ thuộc vào tên class/method bị obfuscate (như `j8/h1` trên bản cũ hay `bb/g1` trên bản A17).
   * Tự động nhận diện DEX mục tiêu trong kiến trúc Multidex (`classes.dex` -> `classesN.dex`).
4. **Căn chỉnh 16KB Page Alignment (-P 16 4)**:
   * Đạt chuẩn tương thích tuyệt đối với kernel Linux 16KB của Android 17 / ColorOS 15+.
   * Giải quyết triệt để lỗi crash `java.lang.UnsatisfiedLinkError: dlopen failed: library ".../libmmkv.so" not found`.
5. **Bảo tồn Khối Chữ Ký Gốc OEM (APK Sig Block 42)**:
   * Tự động trích xuất chứng chỉ OEM từ APK đầu vào và tiêm lại vào APK đầu ra.
   * Tránh xung đột chữ ký hệ thống của ROM gốc.

---

## 🚀 Cách Sử Dụng

### Cách 1: Chạy Tương Tác (Giao diện dòng lệnh thân thiện)
* Nhấp đúp vào file `patch_camera.bat` hoặc mở terminal chạy:
  ```cmd
  python patch_camera.py
  ```
* Công cụ sẽ hiển thị 2 bước đơn giản:
  * **[BƯỚC 1/2]**: Nhập đường dẫn file APK đầu vào (có thể kéo thả file APK vào terminal hoặc nhấn `Enter` để chọn đường dẫn gợi ý mặc định).
  * **[BƯỚC 2/2]**: Nhập đường dẫn file APK đầu ra (có thể nhập đường dẫn thư mục ROM, tên file tùy thích, hoặc nhấn `Enter` để ghi đè vào thư mục ROM `my_product/app/OplusCamera/OplusCamera.apk`).

### Cách 2: Chạy Dòng Lệnh Trực Tiếp (CLI)
```cmd
python patch_camera.py -i <duong_dan_apk_goc> -o <duong_dan_apk_dau_ra>
```
*Ví dụ:*
```cmd
python patch_camera.py -i "C:\Users\KHANHSTARK\Downloads\mod_stark\camera\OplusCamera_a17.apk" -o "C:\Android\Auto_Build_WK\STARK\Camera_mod\my_product\app\OplusCamera\OplusCamera.apk"
```

---

## ⚙️ Kích Hoạt & Tùy Biến Sau Khi Flash ROM / Cài Đặt

Mở Termux hoặc ADB Shell (yêu cầu quyền root):

```bash
# 1. Bật tính năng Mod Zoom:
su -c "settings put global wk_camera_zoom_mod_enabled 1"

# 2. Điều chỉnh mức Zoom tối đa (ví dụ 30x hoặc 60x):
su -c "settings put global wk_camera_zoom_max_ratio_x100 3000"  # 30.0x
su -c "settings put global wk_camera_zoom_max_ratio_x100 6000"  # 60.0x

# 3. Khởi động lại ứng dụng Camera:
su -c "am force-stop com.oplus.camera"
```
