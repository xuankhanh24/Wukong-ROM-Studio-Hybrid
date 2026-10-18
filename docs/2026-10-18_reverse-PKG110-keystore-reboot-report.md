# Sửa lỗi KeyStore gây khởi động lại trên PKG110

Ngày: 2026-10-18, Asia/Bangkok. Mẫu báo cáo: reverse engineering, flavor=null.

## Kết luận và giới hạn

Log ghi nhận system_server chết lặp lại vì KeyStore2.getKeyEntry gọi hàm tạo không tồn tại trong framework.jar. Patch WK Manager dùng cố định ExternalSyntheticLambda9; trên firmware này lớp đó phục vụ grant và nhận ba tham số, không phải getKeyEntry nhận một tham số. Đã sửa nguồn patch để chọn lớp theo thao tác OEM, interface và chữ ký hàm tạo, đồng thời dừng nếu thiếu hoặc mơ hồ.

Đã tạo system.img chứa bản sửa tối thiểu cho JAR lấy từ chính điện thoại. Chưa flash, chưa xác nhận boot hoặc kiểm thử các chức năng trên thiết bị. Người dùng đã chọn tự flash. Bộ cài AssemblyFix trước đó chưa chứa bản sửa KeyStore lần này; không dùng lại ROM lỗi do bộ cài cũ tạo ra để đánh giá kết quả sửa.

## Phạm vi và công cụ

[Phạm vi được người dùng cho phép](../desktop/artifacts/bootloop-fix-20261018/scope.md). Đọc log bằng ADB qua USB trong recovery root; system được mount chỉ đọc tại /tmp/wk-system-readonly. Không ghi system, không sửa /data và không reboot điện thoại. Không phân tích manifest APK vì đối tượng là JAR framework không có manifest Android. Không phân tích native; tombstone camera chỉ ghi nhận binderDied sau khi dịch vụ hệ thống chết, không được coi là nguyên nhân độc lập.

Công cụ: ADB 37.0.0, baksmali/smali 3.0.9, Python, công cụ EROFS và trình kiểm tra metadata của dự án.

## Evidence

### E-001: Log crash của thiết bị

- source_ref: `.tmp/recovery-20261018-a9cb46d6/dropbox/system_server_crash@1792306349325.txt`
- content_hash: n/a; tệp gốc được giữ cục bộ.
- repro_command: `adb -s a9cb46d6 shell cat /data/system/dropbox/system_server_crash@1792306349325.txt`
- observation: `NoSuchMethodError` cho `KeyStore2$$ExternalSyntheticLambda9.<init>(KeyDescriptor)V`; gọi từ KeyStore2.getKeyEntry, qua keystore provider tới WifiApConfigStore và OplusSoftApManager tại boot-completed. Nhiều log ứng dụng và system_server khác lặp lại cùng lỗi.

### E-002: JAR thực tế và kiểm tra liên kết

- source_ref: `.tmp/recovery-20261018-a9cb46d6/framework-device.jar`
- content_hash: SHA256 `03cc80545789065df30ccfbe1f0650e923675f63beb795ed72289282d8dbba68`.
- repro_command: từ gốc repo, `python .tmp/recovery-20261018-a9cb46d6/repair_framework.py`.
- observation: lần chạy đầu trên smali giải mã từ điện thoại báo FAIL: getKeyEntry gọi Lambda9 nhưng thực thi đúng nằm ở Lambda8. deleteKey dùng Lambda4 đã đúng. Lambda9 nhận `(KeyDescriptor;II)V` và gọi lambda$grant$3; Lambda8 nhận `(KeyDescriptor;)V` và gọi lambda$getKeyEntry$5.
- Lưu ý: sau sửa, thư mục decoded của script chứa bản đã sửa; muốn tái hiện FAIL cần dùng thư mục giải mã mới từ framework-device.jar, không tái sử dụng thư mục decoded đã sửa.

### E-003: Đầu ra và kiểm tra

- source_ref: `desktop/artifacts/bootloop-fix-20261018/system.img`; log `.tmp/recovery-20261018-a9cb46d6/repack.log`.
- content_hash: SHA256 `ecf6224c3a5218d126f17b0e63c23c2043bcf2c88123f7c99f37a9a7ee801ec8`.
- repro_command: `Get-FileHash -Algorithm SHA256 desktop/artifacts/bootloop-fix-20261018/system.img`.
- observation: ảnh EROFS 988274688 byte, bằng kích thước ảnh system cũ; metadata 4504 đường dẫn qua kiểm tra; giải nén lại 4272 tệp, không có tệp thiếu/thừa hoặc sai SHA256 so với cây đóng gói.
- framework-fixed.jar: SHA256 `d944953bf49e26ffb44518cd9c942608cc0394df436b59d6aef5e870f135f0a5`; chỉ classes3.dex thay đổi, các entry khác giữ nguyên nội dung, DEX STORED, ZIP CRC và DEX checksum/signature hợp lệ.

## Finding và đường gọi

F-001: severity=n/a_re; category=other; status=validated; confidence=high; evidence_ids=[E-001,E-002]; location=`STARK/WK_Manager/patch_WK_Manager/patch_framework.py`, KeyStore2.getKeyEntry. Kết luận được xác nhận cho liên kết sai gây lỗi trong log, không đồng nghĩa thiết bị đã boot thành công sau sửa.

P-001: path_type=callflow. Oplus Wi-Fi boot-completed → đọc khóa để tạo MAC ổn định → KeyStore2.getKeyEntry đã patch → new Lambda9 với sai constructor → NoSuchMethodError → system_server chết → giao diện khởi động lại. Bằng chứng E-001/E-002, finding F-001. Rủi ro còn lại: có thể tồn tại lỗi mod khác sau khi vượt qua lỗi này; cần kiểm tra log sau flash.

## Sửa đổi và kiểm thử

- Nguồn patch không còn nhúng số lambda cố định cho getKeyEntry/deleteKey; chọn lớp có CheckedRemoteRequest, constructor một KeyDescriptor và execute gọi đúng lambda OEM.
- Marker phiên bản mới cho phép thay lại phương thức từng được patch sai; áp dụng lặp lại không đổi.
- Test cũ khẳng định Lambda9 cố định đã được sửa thành kiểm tra tính tương thích; thêm test firmware đổi số, cùng constructor nhưng khác chức năng, thiếu/mơ hồ, và sửa lại bản patch cũ.
- Lệnh: `python -m unittest tests.test_keystore_request_binding tests.test_wk_manager_patcher tests.test_wk_manager_features tests.test_smali_assembly -v`.
- Kết quả: 34 test, OK, bỏ qua 2 integration test thiếu điều kiện môi trường. Đã biên dịch và giải mã lại DEX thật riêng biệt; điều này không thay thế ART/device boot test.

## Timeline và bàn giao

1. ADB ban đầu không thấy thiết bị; sau kết nối lại và khởi động lại ADB server đã nhận recovery.
2. Sao chép 56 tệp DropBox và tombstone mới nhất; giữ nguyên log thiết bị.
3. Tái hiện liên kết constructor sai bằng JAR lấy từ system đang flash.
4. Sửa nguồn patch, test hồi quy và DEX/JAR trên bản sao cục bộ.
5. Xác nhận JAR trong system.img cũ có SHA256 trùng JAR trên thiết bị; tạo ảnh system mới và kiểm tra roundtrip.
6. Giao ảnh; người dùng tự flash. Ảnh system cũ còn ở `C:/WukongROMStudio/ROM_BUILD_DONE/Wukong_Plus_V6.0_PKG110_16.0.10.500(CN01)_China_Stable_a2842aca/images/super/system_a.img` để khôi phục. Không cần wipe/format để áp dụng bản sửa mã này.

## Checklist

- [x] Log và tệp gốc được giữ, có bằng chứng runtime và static độc lập.
- [x] Sửa đúng liên kết quan sát được, không thay hàng loạt chức năng.
- [x] DEX, ZIP, metadata và nội dung ảnh đã kiểm tra.
- [x] Không flash hoặc reboot theo lựa chọn của người dùng.
- [ ] Boot, Wi-Fi, khóa màn hình và chức năng ứng dụng sau flash: chưa xác minh.
