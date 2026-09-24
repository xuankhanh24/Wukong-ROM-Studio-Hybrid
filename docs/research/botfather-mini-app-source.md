# Mã nguồn Mini App @BotFather: kết quả tra cứu

Kiểm tra ngày 2026-09-25. Phạm vi: các trang chính thức của Telegram, liên kết công khai của @BotFather, kho mã Telegram Web do Telegram liên kết, và kho tác giả của thư viện UI liên quan. Đây là kết quả tìm kiếm, **không phải chứng minh rằng mã nguồn riêng của @BotFather không tồn tại ở nơi khác**.

## Kết luận

**Chưa tìm thấy kho mã nguồn hay thư viện thành phần/thiết kế gốc được Telegram công bố cho Mini App @BotFather.** Telegram [xác nhận sự tồn tại của Mini App này và dẫn tới nó](https://core.telegram.org/bots/features#botfather), nhưng không dẫn tới mã nguồn của riêng nó. [Trang mã nguồn chính thức của Telegram](https://telegram.org/apps#source-code) liệt kê các ứng dụng khách và TDLib, không liệt kê @BotFather Mini App. [Liên kết @BotFather](https://t.me/BotFather?startapp=) chỉ có nút mở ứng dụng.

## Các loại mã dễ nhầm

| Nguồn | Thực chất là gì | Có phải mã Mini App @BotFather? |
| --- | --- | --- |
| [Telegram Web K](https://github.com/morethanwords/tweb), được [telegram.org/apps](https://telegram.org/apps#source-code) dẫn trực tiếp | Mã ứng dụng khách Telegram tại `web.telegram.org/k/`, nơi mở webview Mini App | Không. Có thể nghiên cứu phần khung Telegram, không phải HTML/CSS/logic của @BotFather. |
| [Telegram Web A](https://github.com/Ajaxy/telegram-tt), cũng được [telegram.org/apps](https://telegram.org/apps#source-code) dẫn trực tiếp | Ứng dụng khách Telegram khác | Không. |
| [Telegram Mini Apps API và design guidelines](https://core.telegram.org/bots/webapps) | Tham số theme, giao tiếp với Telegram, nút native, vùng an toàn và quy tắc thiết kế | Không cung cấp source hay token/component riêng của @BotFather. |
| [`@telegram-apps/telegram-ui`](https://github.com/telegram-mini-apps-dev/TelegramUI) | Thư viện React tự mô tả là *inspired by Telegram interface*, tác giả `mainsmirnov`, tài trợ bởi TON Foundation | Không phải thư viện nội bộ của @BotFather. |
| [Telegram Bot API server](https://core.telegram.org/bots/features#local-bot-api) | Mã máy chủ Bot API có thể tự host; đường dẫn “source code is available here” trên tài liệu nói về thành phần này | Không phải mã bot @BotFather hay Mini App của nó. |

Lưu ý về xác thực nguồn: tổ chức GitHub tên [`TelegramOrg`](https://github.com/TelegramOrg) tự ghi “non official organization, i will transfer it to Durov” và “I am not related to telegram at all”. Không nên xem tên tổ chức này là bằng chứng mã chính thức; dùng đường dẫn kho từ chính [telegram.org/apps](https://telegram.org/apps#source-code).

## Hướng khai thác hợp lệ cho Wukong

Có thể nghiên cứu giao diện chạy thực tế của @BotFather và các ảnh người dùng cung cấp để đo màu, typography, khoảng cách, hình dạng, trạng thái và luồng; dùng [API theme chính thức](https://core.telegram.org/bots/webapps#themeparams) để hòa với Telegram. Mã HTML/CSS/JavaScript được trình duyệt tải khi mở Mini App, nếu quan sát được, chỉ là **tài nguyên frontend được triển khai**, không chứng minh có repo gốc, source map, mã backend hoặc giấy phép tái sử dụng. Không sao chép bundle hay nhận diện @BotFather như một thư viện có thể dùng lại nếu không có nguồn và giấy phép tương ứng.

## Quan sát trực tiếp trong phiên người dùng

Sau khi người dùng đăng nhập Telegram Web, Mini App @BotFather mở trong một iframe trên `webappinternal.telegram.org`. Tài liệu trang đang chạy liên kết tới các đường dẫn `/css/botfather.css` và `/js/botfather.js`. Đây là các asset triển khai có thể quan sát trong phiên đã đăng nhập, **không phải kho source gốc hoặc giấy phép tái sử dụng**; truy cập trực tiếp bên ngoài phiên không thành công trong lần kiểm tra này. Không cần tải/copy các asset đó để dựng Wukong.

Một số giá trị đo qua CSS đang chạy ở giao diện tối: nền `rgb(26, 32, 38)`, nhóm `rgb(33, 42, 51)`, accent `#4cb2ff`, nút chính `rgb(36, 139, 218)`, chữ phụ `#8794a1`, góc nhóm mặc định `8px`. Hàng điều hướng có chữ 14px, padding `9px 24px 9px 14px`, nền nhóm có độ trong suốt 0.9. Font khai báo `ProductSans, -apple-system, system-ui, sans-serif`; Wukong dùng font hệ thống thay cho việc nhập font độc quyền.
