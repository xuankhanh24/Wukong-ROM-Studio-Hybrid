# HƯỚNG DẪN VÁ THỦ CÔNG SETTINGS MOD (COLOROS / OXYGENOS ANDROID 14 - 17+)

> Đồng bộ nguồn `9977840` ngày 21/10/2026: bộ helper hiện có 8 class smali,
> hiển thị media ở chất lượng gốc, không downsample hoặc phủ tint/mask stock.
> Loại bỏ hai class nguồn đã bỏ (`ExternalSyntheticBackport0` và `Hook$3`).
> Giữ hook an toàn A16/A17 của CLI tích hợp; pipeline 31 vô hiệu hóa cache patch cũ.

> Đồng bộ 21/10/2026 từ commit `1407f0c` của nguồn Settings: chèn hook sau
> `setOnTouchListener` trong callback, hoặc sau `invoke-super onBindViewHolder`
> nếu không có touch listener. Không chèn trước return vì OEM có thể đã tái sử dụng
> thanh ghi holder trên A17. Giữ `invoke-static/range`, hỗ trợ anchor `/range`
> và dừng patch nếu không tìm thấy điểm chèn; 10 helper smali trùng SHA-256 nguồn.

> Đối chiếu và đồng bộ 20/10/2026: đủ 10 helper smali từ
> `Downloads/mod_stark/settings/patch_universal/smali` (khác biệt còn lại trước
> lần đồng bộ này chỉ là dòng trống). Giữ CLI tích hợp toolchain chung,
> hook `invoke-static/range` cho thanh ghi cao và nguyên trạng access modifier
> OEM trên A16/A17; không chép APK đầu ra, thư mục work hay tool path cá nhân.

> Cập nhật 18/10/2026: `patch_settings.py` đã chuyển sang bộ 10 class universal
> từ `mod_stark/settings/patch_universal/smali`. Hook mới gọi
> `WkOtaCardHook.onBind(Object,Object)` tại cuối `onBindViewHolder`, giữ nguyên
> phạm vi `public/private/static/final` của `getTargetIntentStatic` và các method
> video OEM. Những hướng dẫn chèn nhiều hook bên dưới là tài liệu của bản cũ,
> không áp dụng đồng thời với patch universal. Xem [hợp đồng patch hiện tại](../../PATCHING.md#settings-cli).
**Tác giả:** KhanhStark & Antigravity  
**Phiên bản tài liệu:** v17.0 Universal  
**Áp dụng cho:** Tất cả các phiên bản Settings APK ColorOS / OxygenOS từ Android 14, 15, 16 đến Android 17 (OnePlus Ace 5, OPPO Find series, Realme...).

---

## MỤC LỤC
1. [Tổng Quan Bản MOD & Nguyên Lý Hoạt Động](#1-tổng-quan-bản-mod--nguyên-lý-hoạt-động)
2. [Danh Mục 5 Class Tùy Biến (WkOtaCard)](#2-danh-mục-5-class-tùy-biến-wkotacard)
3. [Quy Trình Vá Bằng MT Manager (Trên Điện Thoại)](#3-quy-trình-vá-bằng-mt-manager-trên-điện-thoại)
4. [Quy Trình Vá Bằng Apktool & VS Code (Trên Máy Tính)](#4-quy-trình-vá-bằng-apktool--vs-code-trên-máy-tính)
5. [CỰC KỲ QUAN TRỌNG: Quy Tắc Bảo Vệ Thanh Ghi ART Verifier (Android 17)](#5-cực-kỳ-quan-trọng-quy-tắc-bảo-vệ-thanh-ghi-art-verifier-android-17)
6. [Kỹ Thuật Tiêm Chữ Ký Gốc OEM (OrigSig Injection)](#6-kỹ-thuật-tiêm-chữ-ký-gốc-oem-origsig-injection)
7. [Bảng Tra Cứu Lỗi Thường Gặp & Cách Khắc Phục (Troubleshooting)](#7-bảng-tra-cứu-lỗi-thường-gặp--cách-khắc-phục-troubleshooting)

---

## 1. TỔNG QUAN BẢN MOD & NGUYÊN LÝ HOẠT ĐỘNG

Bản MOD can thiệp vào trang **"Giới thiệu về thiết bị" (About Device)** trong ứng dụng Cài đặt (`com.android.settings`), mang lại 3 tính năng:
1. **Video / Image Header tùy biến:**
   - Thay thế ảnh nền mặc định hoặc video hệ thống của ColorOS bằng hình nền tĩnh hoặc video lặp vô tận (Looping Video) hiển thị mượt mà trên thẻ OTA Card.
   - Giao tiếp với ứng dụng quản lý `com.wukong.manager` qua ContentProvider: `content://com.wukong.manager.otacard/config`.
   - Hỗ trợ làm mờ nền (Gaussian Blur), tự động tính toán tỷ lệ khung hình (Aspect Ratio Center-Crop), tự động tắt tiếng (`volume = 0`) và quản lý mức tiêu thụ pin (tự động tạm dừng player khi chuyển sang ứng dụng khác).
2. **Đổi màu chữ thẻ sang màu trắng (`#FFFFFFFF`):**
   - Giúp toàn bộ tiêu đề (tên thiết bị, bản dựng, vi xử lý...) hiển thị sắc nét, tương phản rõ ràng trên nền video/ảnh gradient tùy biến.
3. **Chuyển hướng liên kết khi bấm vào thẻ OTA:**
   - Khi chạm vào thẻ cập nhật OTA, thay vì mở trình cập nhật ColorOS mặc định, hệ thống sẽ mở liên kết nhóm Telegram cộng đồng Port (`https://t.me/OnePlus_Ace5_Port`).

---

## 2. DANH MỤC 5 CLASS TÙY BIẾN (WkOtaCard)

Toàn bộ logic tùy biến được đóng gói độc lập trong 5 file Smali, đặt tại package:
`com/oplus/settings/widget/preference/`

| Tên File Smali | Chức Năng |
| :--- | :--- |
| `WkOtaCardHook.smali` | Bộ điều khiển trung tâm: Đọc cấu hình từ Provider, tạo Intent mở Telegram, quản lý chế độ Video/Image, đổi màu chữ trắng đệ quy (`applyHeaderColors`). |
| `WkOtaCardBlur.smali` | Thuật toán làm mờ 2-pass box blur viết bằng pure Java, an toàn bộ nhớ, chống tràn RAM (OOM) khi nạp ảnh lớn. |
| `WkOtaCardHook$CustomVideoListener.smali` | Bộ lắng nghe SurfaceTexture của TextureView: Khởi tạo MediaPlayer, setLooping, setVolume, xử lý vòng đời phát video. |
| `WkOtaCardHook$Snapshot.smali` | Quản lý bộ nhớ đệm (cache) cấu hình để tránh truy vấn IPC liên tục mỗi lần cuộn giao diện. |
| `WkOtaCardHook$$ExternalSyntheticBackport0.smali` | Hàm bổ trợ so sánh số nguyên lớn (Long.compare). |

> [!NOTE]
> 5 file Smali này đã được cung cấp sẵn đầy đủ trong thư mục `smali/com/oplus/settings/widget/preference/`.

---

## 3. QUY TRÌNH VÁ BẰNG MT MANAGER (TRÊN ĐIỆN THOẠI)

### Bước 1: Mở APK và nạp các DEX
1. Mở MT Manager, chọn file `Settings.apk`.
2. Bấm vào file APK $\to$ Chọn **Xem (View)**.
3. Bấm vào bất kỳ file `classes*.dex` nào $\to$ Chọn **Dex Editor Plus**.
4. **Tích chọn TẤT CẢ các file DEX** $\to$ Bấm **OK**.

### Bước 2: Thêm 5 file Smali WkOtaCard
1. Điều hướng cây thư mục đến:
   `com/oplus/settings/widget/preference/`
2. Bấm biểu tượng 3 chấm $\to$ **Thêm (Import)** hoặc chép 5 file `WkOtaCard*.smali` vào thư mục này.

### Bước 3: Sửa `OtaUpdateController$Companion` (hoặc `OtaUpdateController`)
1. Tìm kiếm class `OtaUpdateController` (hoặc `OtaUpdateController$Companion`).
2. Mở file Smali, tìm phương thức:
   ```smali
   .method public static final getTargetIntentStatic()Landroid/content/Intent;
   ```
   *(hoặc `.method public final getTargetIntentStatic()Landroid/content/Intent;`)*
3. Thay thế toàn bộ thân hàm thành:
   ```smali
   .method public static final getTargetIntentStatic()Landroid/content/Intent;
       .locals 1
       .annotation runtime Lkotlin/jvm/JvmStatic;
       .end annotation

       invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getTargetIntent()Landroid/content/Intent;

       move-result-object v0

       return-object v0
   .end method
   ```

### Bước 4: Sửa `AboutDeviceOtaUpdatePreference$setupTopVideo$1`
1. Tìm class `AboutDeviceOtaUpdatePreference$setupTopVideo$1`.
2. Tìm lệnh `MediaPlayer->setDataSource(Ljava/lang/String;)V` trong phương thức `onSurfaceTextureAvailable`.
3. Thay thế bằng hook sau:
   ```smali
       invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

       move-result-object v2

       invoke-static {v2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setCustomVideoDataSource(Landroid/content/Context;Landroid/media/MediaPlayer;)Z

       move-result v2

       if-nez v2, :cond_wk_custom_ds

       invoke-static {p2}, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->access$getMCachedVideoPath$p(Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;)Ljava/lang/String;

       move-result-object v2

       invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

       :cond_wk_custom_ds
   ```

### Bước 5: Sửa `AboutDeviceOtaUpdatePreference.smali`
Mở file `AboutDeviceOtaUpdatePreference.smali` và thực hiện 8 điểm can thiệp sau:

#### 1) `getTargetIntentStatic()`
Thay thế toàn bộ phương thức bằng:
```smali
.method private final getTargetIntentStatic()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
```

#### 2) `isSupportTopVideo()`
Chèn vào ngay đầu phương thức (sau `.locals`):
```smali
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->mode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_wk_stock_video_support

    const/4 v1, 0x2

    if-ne v0, v1, :cond_wk_not_video

    const/4 v0, 0x1

    return v0

    :cond_wk_not_video
    const/4 v0, 0x0

    return v0

    :cond_wk_stock_video_support
```

#### 3) `getColorOSVideoPath()`
Chèn vào ngay đầu phương thức:
```smali
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->customVideoMarker(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_wk_stock_video_path

    return-object v0

    :cond_wk_stock_video_path
```

#### 4) `applyVideoTransform(Landroid/view/TextureView;)V`
Chèn vào ngay đầu phương thức:
```smali
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCustomVideoTransform(Landroid/content/Context;Landroid/view/TextureView;)Z

    move-result v0

    if-eqz v0, :cond_wk_stock_video_transform

    return-void

    :cond_wk_stock_video_transform
```

#### 5) `setupTopVideo()`
Tăng `.locals` lên tối thiểu 3 (ví dụ `.locals 3`), sau đó chèn vào đầu phương thức:
```smali
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceTopVideoBg:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceVideoMask:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceTopBg:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupCustomVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_wk_stock_setup_top_video

    return-void

    :cond_wk_stock_setup_top_video
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceVideoMask:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyVideoStyle(Landroid/view/TextureView;Landroid/widget/ImageView;)V
```

#### 6) `getTopDrawableBg(Ljava/lang/String;)V`
Chèn vào ngay đầu phương thức:
```smali
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceTopBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyImage(Landroid/content/Context;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_wk_stock_bg

    return-void

    :cond_wk_stock_bg
```

#### 7) `showEasterEggVideo(Z)`
Tìm dòng gọi `invoke-direct {p0, ...}, ...->getTopDrawableBg(...)V`, chèn ngay sau nó:
```smali
    if-eqz p1, :cond_wk_easter_egg

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceTopBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_wk_easter_egg

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_wk_easter_egg
```

#### 8) `onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V`
Trong phương thức này, thực hiện 2 can thiệp quan trọng:

**a) Đổi màu chữ thẻ sang màu trắng:**
Tìm dòng gán số hiệu bản dựng (build number):
```smali
iput-object v0, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mModelBuildNumber:Landroid/widget/TextView;
```
*(hoặc `mDeviceBuildNumber` trên một số phiên bản cũ)*  
Chèn ngay bên dưới:
```smali
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyHeaderColors(Landroid/content/Context;Landroid/view/View;)V
```

**b) Hook phát video tùy biến & Bảo vệ thanh ghi ART:**
Tìm dòng gọi `isSupportTopVideo()Z` bên trong `onBindViewHolder`:
```smali
invoke-direct {p0}, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->isSupportTopVideo()Z
```
Chèn đoạn mã sau vào **ngay trước** lệnh gọi trên:
```smali
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceTopVideoBg:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceVideoMask:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mAboutDeviceTopBg:Landroid/widget/ImageView;

    invoke-static {v0, v5, v4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupCustomVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)Z

    move-result v5

    if-eqz v5, :cond_wk_not_custom_video

    iget-boolean v5, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mIsTopMediaPlayerInitialized:Z

    if-eqz v5, :cond_wk_rel_mp

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->releaseAllMediaPlayers()V

    :cond_wk_rel_mp
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mIsTopMediaPlayerInitialized:Z

    sget-object v5, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference$VideoPlayState;->IDLE:Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference$VideoPlayState;

    iput-object v5, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mVideoState:Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference$VideoPlayState;

    const v2, 0x7f0600bf

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;->mIsFirstBind:Z

    goto :goto_2

    :cond_wk_not_custom_video
    const v2, 0x7f0600bf

    const/4 v4, 0x0
```

---

## 5. CỰC KỲ QUAN TRỌNG: QUY TẮC BẢO VỆ THANH GHI ART VERIFIER (ANDROID 17)

Nếu bạn bỏ qua phần này trên Android 17, Settings sẽ bị sập ngay khi mở trang "Giới thiệu về thiết bị" với lỗi `VerifyError`.

### Nguyên nhân kỹ thuật:
Android Runtime (ART) trên Android 17 thực hiện kiểm tra suy diễn kiểu thanh ghi (Type Inference & Register Merge) rất chặt chẽ:
1. **Lỗi thanh ghi `v2` (Kiểu Số vs Đối Tượng):**
   - Dọc theo luồng thực thi thông thường, `v2` nhận mã màu Resource ID: `const v2, 0x7f0600bf` (kiểu số nguyên `Integer`).
   - Sau đó tại điểm nhảy tiếp theo, mã nguồn ColorOS gọi lệnh:
     `invoke-virtual {..., v2}, Landroid/content/Context;->getColor(I)I` (yêu cầu thanh ghi `v2` phải là `Integer`).
   - Nếu trong nhánh rẽ `setupCustomVideo`, bạn vô tình gán một đối tượng (Reference) vào `v2`, ART Verifier sẽ thấy hai luồng kiểu dữ liệu khác nhau hội tụ tại một điểm $\to$ Ném `VerifyError: register v2 has type Reference but expected Integer`.
   - **Cách giải quyết:** Dùng thanh ghi `v5` cho các đối tượng tạm thời, và luôn nạp lại `const v2, 0x7f0600bf` tại `:cond_wk_not_custom_video` và ngay trước lệnh `Context.getColor(v2)`.
2. **Lỗi thanh ghi `v4` (Kiểu Boolean vs Đối Tượng):**
   - Lệnh lưu thuộc tính `iput-boolean v4, p0, ...->mPlayWhenBind:Z` yêu cầu giá trị trong thanh ghi `v4` là kiểu số `Boolean` (`0` hoặc `1`).
   - Nhưng lệnh `setupCustomVideo(v0, v5, v4)` trước đó truyền `v4` là đối tượng `ImageView` (`Reference`).
   - Khi luồng điều khiển nhảy xuống lệnh `iput-boolean`, ART thấy `v4` vẫn đang giữ tham chiếu `ImageView` $\to$ Ném `VerifyError: unexpected value in v4 of type Reference but expected Boolean for put`.
   - **Cách giải quyết:** Luôn chèn `const/4 v4, 0x0` tại `:cond_wk_not_custom_video`, trước `:goto_2`, và ngay trước lệnh `iput-boolean v4`.

---

## 6. KỸ THUẬT TIÊM CHỮ KÝ GỐC OEM (ORIGSIG INJECTION)

> [!CAUTION]
> **TUYỆT ĐỐI KHÔNG KÝ APK BẰNG TESTKEY KHI THAY THẾ SETTINGS HỆ THỐNG!**  
> `Settings.apk` là ứng dụng hệ thống đặc quyền (`priv-app`). Nếu bạn tick "Auto sign" trong MT Manager hoặc dùng `apksigner` với testkey, thiết bị sẽ từ chối nạp APK hoặc sập `system_server` do lệch chữ ký hệ thống của OnePlus/OPPO.

### Cơ chế hoạt động:
- Các bản Android hiện đại lưu trữ chữ ký Scheme v2/v3 trong một khối đặc biệt gọi là **APK Signing Block 42**, nằm ngay trước khối **Central Directory** của file ZIP.
- Khi ta chỉ sửa đổi file `.dex` và căn chỉnh 4-byte (`zipalign -p -f 4`), ta có thể trích xuất chính xác khối 8,192 bytes APK Signing Block từ file Stock APK gốc của OnePlus, rồi tiêm nguyên vẹn vào file APK đã vá.
- Hệ thống Android sẽ đọc đúng khối chữ ký OEM nguyên bản, cho phép ứng dụng khởi chạy với đầy đủ đặc quyền hệ thống.

### Script Python tiêm chữ ký 1-click (Có sẵn trong `patch_settings.py`):
```python
import struct

def inject_orig_sig(input_aligned_apk, oem_sig_block, output_apk):
    with open(input_aligned_apk, "rb") as f:
        data = f.read()
    eocd_pos = data.rfind(b"\x50\x4b\x05\x06")
    cd_offset = struct.unpack("<I", data[eocd_pos + 16 : eocd_pos + 20])[0]
    
    entries_data = data[:cd_offset]
    cd_data = data[cd_offset:eocd_pos]
    eocd_data = bytearray(data[eocd_pos:])
    
    new_cd_offset = cd_offset + len(oem_sig_block)
    eocd_data[16:20] = struct.pack("<I", new_cd_offset)
    
    with open(output_apk, "wb") as f:
        f.write(entries_data + oem_sig_block + cd_data + bytes(eocd_data))
```

---

## 7. BẢNG TRA CỨU LỖI THƯỜNG GẶP & CÁCH KHẮC PHỤC

| Hiện Tượng Lỗi | Nguyên Nhân Thực Tế | Cách Khắc Phục |
| :--- | :--- | :--- |
| **Crash ngay khi mở Cài đặt** (`NoSuchFieldError: No field mDeviceName`) | Bản Smali cũ cố gắng đọc trường `mDeviceName`, nhưng trên Android 17 trường này đã đổi thành `mModelName`. | Áp dụng hàm `WkOtaCardHook.applyHeaderColors(Context, View)`, duyệt đệ quy cây View động mà không đọc trực tiếp tên trường. |
| **Crash khi vào "Giới thiệu thiết bị"** (`VerifyError: register v2 has type Reference but expected Integer`) | Nhánh rẽ video gán Object vào `v2`, nhưng điểm nhảy tiếp theo gọi `Context.getColor(v2: Integer)`. | Đổi thanh ghi tạm sang `v5` và nạp rõ ràng `const v2, 0x7f0600bf` trước mọi điểm nhảy. |
| **Crash khi vào "Giới thiệu thiết bị"** (`VerifyError: unexpected value in v4 of type Reference but expected Boolean for put`) | Thanh ghi `v4` chứa tham chiếu `ImageView` từ lệnh `setupCustomVideo` bị đưa vào lệnh `iput-boolean v4`. | Luôn chèn `const/4 v4, 0x0` tại `:cond_wk_not_custom_video` và ngay trước lệnh `iput-boolean`. |
| **Crash GraphicsEnvironment / NullPointerException Resources** | Tệp APK đẩy vào hệ thống mang nhãn SELinux `shell_data_file`, `system_app` bị từ chối truy cập tài nguyên. | Đặt đúng nhãn SELinux: `chcon u:object_r:system_file:s0 /system_ext/priv-app/Settings/Settings.apk` và quyền `chmod 0644`. |
| **Treo logo / Bootloop khi flash module** | Ký lại APK bằng testkey làm hỏng chữ ký hệ thống OEM. | Sử dụng kỹ thuật **OrigSig Injection** để khôi phục khối chữ ký gốc của máy. |
