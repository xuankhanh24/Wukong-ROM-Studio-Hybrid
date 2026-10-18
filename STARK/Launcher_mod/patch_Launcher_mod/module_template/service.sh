#!/system/bin/sh
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Đợi hệ thống ổn định và PackageManager sẵn sàng
sleep 5

# Kiểm tra nếu Launcher chưa được AOT compile thì tiến hành biên dịch ngay trong nền
STATUS=$(dumpsys package dexopt 2>/dev/null | grep -A 4 -F '[com.android.launcher]' | grep -F 'status=speed')
if [ -z "$STATUS" ]; then
    cmd package compile -m speed -f com.android.launcher >/dev/null 2>&1
fi
