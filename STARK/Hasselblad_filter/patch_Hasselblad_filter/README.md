# HƯỚNG DẪN SỬ DỤNG - OPLUS CAMERA HASSELBLAD AUTO PATCHER

Công cụ tự động mở khóa bộ lọc màu **Hasselblad Master Filters**, chế độ **Hasselblad XPAN** và **Custom Watermark** cho OPlus Camera Unit SDK trên mọi phiên bản ROM (ColorOS 12, 13, 14, 15, 16, Android 12 - 17+).

---

## 1. CÁC CÁCH CHẠY TOOL

### Cách 1: Click đúp chạy trực tiếp (Giao diện nhập input trực quan)
* Click đúp vào file `patch_hasselblad.bat`.
* Cửa sổ hiển thị nhắc bạn nhập input:
  * Bạn có thể **kéo & thả** file (`.jar`, `.apk`, `.dex`) hoặc thư mục Smali trực tiếp vào cửa sổ rồi nhấn `Enter`.
  * Hoặc dán đường dẫn file rồi nhấn `Enter`.
  * Nếu nhấn `Enter` luôn mà không nhập gì: Tool sẽ tự nhận diện file `com.oplus.camera.unit.sdk.jar` trong thư mục `my_product` gần kề.

### Cách 2: Kéo & Thả file trực tiếp lên file `.bat`
* Trong File Explorer, nắm kéo file `.jar` / `.apk` cần vá và thả đè lên biểu tượng `patch_hasselblad.bat`.
* Tool sẽ tự động xử lý và xuất ra file `<tên_gốc>_mod.<đuôi>` cùng thư mục!

### Cách 3: Chạy qua dòng lệnh (CLI / Script tự động trong Build ROM)
```cmd
# Cú pháp:
patch_hasselblad.bat <đường_dẫn_input> [đường_dẫn_output_tùy_chọn]

# Hoặc dùng python:
python patch_hasselblad.py <đường_dẫn_input> [đường_dẫn_output_tùy_chọn]
```

Ví dụ:
```cmd
python patch_hasselblad.py "..\my_product\product_overlay\framework\com.oplus.camera.unit.sdk.jar"
```

---

## 2. ĐẶC ĐIỂM KỸ THUẬT & TÍNH KHÁNG PHIÊN BẢN

1. **Kháng thay đổi thanh ghi (Auto-Register Detection):**
   * Tự động quét method để nhận diện thanh ghi mang giá trị `"1"` hiện tại của D8/R8 (ví dụ: `v1`, `v2`, `v3`...).
   * Tự động kiểm tra tính an toàn của thanh ghi, nếu thanh ghi bị ghi đè sau đó sẽ kích hoạt chế độ **Dynamic Injection** (`const-string <target_reg>, "1"` ngay trước lệnh gọi put).
2. **Kháng thay đổi số dòng / offset:**
   * Không hardcode số dòng hay offset, tìm kiếm trực tiếp theo hằng số Vendor Tag của OPlus Camera.
3. **Chuẩn nén `ZIP_STORED` (Uncompressed):**
   * Đối với file `.jar` framework Android, tool tự động đóng gói `classes.dex` ở chuẩn không nén (`compress_type: 0`), đảm bảo runtime ART có thể `mmap` trực tiếp, không gây crash hay bootloop hệ thống.

---

## 3. CÁC TỆP TRONG THƯ MỤC NÀY

* `patch_hasselblad.bat`: File thực thi Windows tiện lợi (hỗ trợ kéo thả).
* `patch_hasselblad.py`: Script lõi Python thực hiện quá trình vá.
* Công cụ dùng chung: `bin/Java/` và `bin/Windows/AMD64/` ở gốc dự án; khi cài Windows là `Runtime/Bin/`. Không cần bản riêng trong module.
* `diffs/`: Chứa các file Smali Diff đối chiếu cho bản cũ và bản A17.
* `com.oplus.camera.unit.sdk_a17_mod.jar`: Bản SDK A17 đã được port và đóng gói sẵn.
