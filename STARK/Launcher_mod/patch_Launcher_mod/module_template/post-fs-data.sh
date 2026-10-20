#!/system/bin/sh
MODDIR=${0%/*}
if [ -f "$MODDIR/system_ext/priv-app/OplusLauncher/OplusLauncher.apk" ]; then
    mount -o bind "$MODDIR/system_ext/priv-app/OplusLauncher/OplusLauncher.apk" /system_ext/priv-app/OplusLauncher/OplusLauncher.apk
fi
