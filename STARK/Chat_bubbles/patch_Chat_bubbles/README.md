# BỘ CÔNG CỤ VÁ TỰ ĐỘNG CHAT BUBBLES & SỐ THÔNG BÁO (NOTIFICATIONCENTER.APK)
> **Tác giả:** KhanhStark & Antigravity  
> **Dự án:** Wukong ROM Studio / STARK  
> **Tương thích:** ColorOS 14 / 15 / 16 / 17 (Android 14 - 17)

---

## 1. GIỚI THIỆU
Công cụ tự động hóa toàn bộ quy trình dịch ngược, vá mã nguồn bytecode (Smali), tối ưu hoá bộ nhớ và tiêm lại chữ ký gốc OEM cho file `NotificationCenter.apk`.

### Các tính năng được kích hoạt:
1. **Bật bong bóng chat (Chat Bubbles)**:
   - Sửa `BaseFeatureOption.isExpVersion()Z` $\rightarrow$ `return true`.
   - Hiển thị công tắc `key_notification_bubbles_switch` trong cài đặt More Settings.
2. **Bật số thông báo (Number Badge) cho mọi ứng dụng**:
   - Sửa `NotificationBackend.isNumBadgeSupportForPackage(...)Z` $\rightarrow$ `return true`.
   - Cho phép hiển thị chấm số đỏ thông báo cho toàn bộ các app cài đặt (không bị giới hạn danh sách trắng).
3. **Đổi máy chủ RomUpdate Provider**:
   - Thay thế `content://com.oplus.romupdate.provider.db/update_list` thành `content://com.wk.romupdate.provider.db/update_list`.
4. **Tiêm chữ ký gốc OEM (OrigSig Injection)**:
   - Trích xuất khối `APK Sig Block 42` từ APK gốc và tiêm lại vào APK thành phẩm.
   - Tránh 100% lỗi `Signature mismatch for shared user android.uid.system` gây bootloop.

---

## 2. HƯỚNG DẪN SỬ DỤNG

### Cách 1: Chạy tương tác bằng 1 click chuột (Khuyến nghị)
1. Nhấp đúp chuột vào file **`patch_chat_bubbles.bat`**.
2. **[Bước 1] Chọn APK đầu vào:**
   - Script tự động phát hiện và gợi ý đường dẫn APK có sẵn (nhấn `Enter` để dùng ngay).
   - Hoặc bạn có thể kéo thả bất kỳ file `NotificationCenter.apk` nào vào cửa sổ rồi nhấn `Enter`.
3. **[Bước 2] Chọn APK đầu ra:**
   - Nhấn `Enter` để cập nhật trực tiếp vào module ROM: `..\system_ext\app\NotificationCenter\NotificationCenter.apk`.
   - Hoặc nhập đường dẫn/tên file mong muốn.
4. Xác nhận và đợi quá trình hoàn tất trong khoảng 10-15 giây!

---

### Cách 2: Chạy dòng lệnh (CLI / Auto_Build_WK Pipeline)
Dùng cho kịch bản tự động hóa hoặc tích hợp vào tool build ROM:

```cmd
python patch_chat_bubbles.py -i <duong_dan_apk_goc> -o <duong_dan_apk_dau_ra>
```

**Ví dụ:**
```cmd
python patch_chat_bubbles.py -i "C:\Android\Auto_Build_WK\STARK\Chat_bubbles\system_ext\app\NotificationCenter\NotificationCenter.apk" -o "C:\Android\Auto_Build_WK\STARK\Chat_bubbles\system_ext\app\NotificationCenter\NotificationCenter.apk"
```

---

## 3. CẤU TRÚC THƯ MỤC
```
Chat_bubbles/
├── system_ext/
│   └── app/NotificationCenter/
│       └── NotificationCenter.apk    # APK thành phẩm nạp vào ROM
└── patch_Chat_bubbles/
    ├── patch_chat_bubbles.bat        # Launcher chạy nhanh trên Windows
    ├── patch_chat_bubbles.py         # Script vá chính (Python)
    └── README.md                     # Tài liệu hướng dẫn
```

Công cụ Java dùng chung ở `bin/Java/`, native ở `bin/Windows/AMD64/` tại gốc dự án
(bản cài Windows: `Runtime/Bin/`). Không còn thư viện công cụ riêng trong module.
