# CÔNG CỤ VÁ TỰ ĐỘNG ATHENA (COLOROS 14 / 15 / 16 / 17)
**Vị trí**: `C:\Android\Auto_Build_WK\STARK\Fix_noti`  
**Tác giả**: KhanhStark & Antigravity  

Công cụ tự động hóa quá trình tối ưu hóa và vá bộ quản lý tài nguyên **Athena** cho ROM ColorOS / OxygenOS (OPPO, OnePlus, Realme). Hỗ trợ bảo toàn **100% chữ ký gốc OEM (APK Sig Block 42)** mà không cần ký lại testkey.

---

## 1. CÁC CẤP ĐỘ VÁ (PATCH LEVELS)

### 🟢 Level 1: True Global Baseline *(Khuyến nghị: Mát máy, Tiết kiệm pin, Cân bằng)*
* **Nền tảng**: Sử dụng trọn vẹn 15 tệp XML cấu hình gốc của **Athena Global** (`Athena_Global.apk`).
* **Triết lý**:
  * Tắt hoàn toàn `always_alive_enabled = false` (CPU ngủ sâu, không giữ app thức 24/7).
  * Tắt hoàn toàn `always_alive_dcs_enabled = false` (Triệt tiêu toàn bộ telemetry gửi ngầm về server).
  * Giữ nguyên cơ chế thu hồi RAM (`LMK - Low Memory Killer`) trơn tru, không gây giật lag khi chơi game nặng hay dùng Camera quay phim 4K.
* **Lean Profile (14 ứng dụng thiết yếu)**:
  * Zalo, Telegram, Nekogram, Telegram Plus, Telegram X, Messenger, Facebook, WhatsApp, Gmail.
  * Hạ tầng Push: Google Play Services (`com.google.android.gms`), GSF, HeyTap MCS.
  * Báo thức: Google Clock, AOSP Clock, OnePlus Clock.
* **Phiên bản**: Khóa version `9999123199` để chống ROMUpdate (RUS) tự ý ghi đè cấu hình China.

---

### 🟡 Level 2: Fix Thông Báo Hoàn Toàn *(Heavy-duty Whitelist 42 Apps)*
* **Nền tảng**: Lưới quét diện rộng bảo vệ 42 ứng dụng không bao giờ bị Force-Stop khi vuốt đa nhiệm (`KILL_PROCESS_ONLY=1`).
* **Bao gồm**:
  * Toàn bộ ứng dụng nhắn tin OTT quốc tế (Zalo, Nekogram, Telegram, Messenger, WhatsApp, Line, Viber, Discord, Skype, Signal, Snapchat, IMO...).
  * Ứng dụng công việc & Mail: Gmail, Outlook, Teams, LinkedIn, Localsend, Instagram.
  * Ứng dụng gọi xe & giao hàng: Grab, ShopeeFood (Now), Shopee VN, Lazada, Uber, Twitter, KakaoTalk.
  * Hạ tầng: GMS, GSF, MCS, Google Calendar, Google Keep, và toàn bộ 3 loại Đồng hồ.
* **Cơ chế đặc quyền**:
  * Kích hoạt rã đông thông minh 10 giây của ELSA (`<imPkg>`) cho hơn 20 app OTT mỗi khi thiết bị chuyển đổi mạng (Wi-Fi ↔ 4G/5G).
  * Đưa GMS, GSF, MCS, Báo thức vào `<strong >` của GuardElf (không bao giờ bị kẹp CPU hay cắt wakelock).

---

## 2. HƯỚNG DẪN SỬ DỤNG

### Cách 1: Giao diện tương tác trực quan (Dễ nhất)
* Nhấp đúp chuột vào tệp: **`patch_athena.bat`** (hoặc gõ lệnh `python patch_athena.py`).
* Làm theo hướng dẫn trên màn hình:
  1. Nhập đường dẫn tệp APK đầu vào *(Nhấn Enter để dùng mặc định)*.
  2. Nhập đường dẫn tệp APK đầu ra *(Nhấn Enter để dùng mặc định)*.
  3. Chọn cấp độ: Nhập **`1`** (Level 1) hoặc **`2`** (Level 2).
  4. Xác nhận và công cụ sẽ tự động hoàn tất trong vài giây!

---

### Cách 2: Tích hợp vào Pipeline tự động của Auto_Build_WK
Bạn có thể gọi trực tiếp qua dòng lệnh CLI với các tham số:
```bash
# Vá theo Level 1 (True Global Baseline):
python patch_athena.py -i "C:\path\to\Athena_CN.apk" -o "C:\path\to\Athena_Patched.apk" -l 1

# Vá theo Level 2 (Fix Thông Báo Hoàn Toàn):
python patch_athena.py -i "C:\path\to\Athena_CN.apk" -o "C:\path\to\Athena_Patched.apk" -l 2
```

**Các tham số:**
* `-i`, `--input`: Đường dẫn tệp APK đầu vào cần vá.
* `-o`, `--output`: Đường dẫn tệp APK đầu ra sau khi vá.
* `-l`, `--level`: Cấp độ vá (`1` hoặc `2`).

---

## 3. CẤU TRÚC THƯ MỤC
```text
C:\Android\Auto_Build_WK\STARK\Fix_noti\
├── my_region/                   # Cấu hình Doze & Startup mở rộng của ROM
├── system_ext/
│   └── app/Athena/
│       └── Athena.apk           # Tệp APK Athena đầu ra đã vá sẵn sàng đóng ROM
└── patch_athena/                # Bộ công cụ vá tự động & tài liệu
    ├── patch_athena.bat         # Launcher chạy nhanh trên Windows
    ├── patch_athena.py          # Script vá tự động chính (Python)
    ├── README.md                # Tài liệu hướng dẫn sử dụng công cụ
    ├── HUONG_DAN_THAY_THE_CONFIG_CHO_MOI_BAN_ATHENA.md
    ├── HUONG_DAN_VA_ATHENA_MT_MANAGER.md
    ├── configs/
    │   ├── level1_global/       # 15 tệp XML chuẩn True Global Baseline
    │   └── level2_full_fix/     # 15 tệp XML chuẩn Heavy-duty Whitelist (42 apps)
    └── guides/
        ├── HUONG_DAN_THAY_THE_CONFIG_CHO_MOI_BAN_ATHENA.md
        ├── HUONG_DAN_VA_ATHENA_MT_MANAGER.md
        ├── 2026-09-23_reverse-athena-gemini-report.md
        └── Universal_Athena_Assets.zip
```

---

## 4. TÀI LIỆU HƯỚNG DẪN KỸ THUẬT ĐI KÈM
Bên trong thư mục `guides/` đã được bổ sung đầy đủ các cẩm nang kỹ thuật chuyên sâu:
1. **[HUONG_DAN_THAY_THE_CONFIG_CHO_MOI_BAN_ATHENA.md](HUONG_DAN_THAY_THE_CONFIG_CHO_MOI_BAN_ATHENA.md)**: Hướng dẫn chi tiết nguyên lý hoạt động của 15 file XML, cơ chế khóa version `9999123199` chống ROMUpdate (RUS) ghi đè, và cơ chế chuyển đổi chính sách `peculiar_kill_policy`.
2. **[HUONG_DAN_VA_ATHENA_MT_MANAGER.md](HUONG_DAN_VA_ATHENA_MT_MANAGER.md)**: Hướng dẫn vá thủ công trực tiếp trên điện thoại bằng MT Manager mà không cần máy tính PC, quy tắc sống còn về bảo lưu chữ ký gốc OEM (không ký lại testkey).
3. **[2026-09-23_reverse-athena-gemini-report.md](guides/2026-09-23_reverse-athena-gemini-report.md)**: Báo cáo phân tích Reverse Engineering chuyên sâu về cấu trúc tiến trình Athena trên ColorOS 14 / 15 / 16 / 17.
4. **`Universal_Athena_Assets.zip`**: Gói ZIP nén sẵn 15 XML cấu hình để sao chép vào điện thoại thay thế nhanh bằng MT Manager.

