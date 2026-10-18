ui_print "***************************************************"
ui_print "*   OplusLauncher Reviewed Feature Patches  *"
ui_print "*           KhanhStark and Antigravity            *"
ui_print "***************************************************"

ui_print "- Thiet lap phan quyen..."
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
toybox chcon -R u:object_r:system_file:s0 "$MODPATH/system" 2>/dev/null
toybox chcon -R u:object_r:system_file:s0 "$MODPATH/system_ext" 2>/dev/null

ui_print "- Kich hoat AOT compiler (speed mode) cho Launcher..."
cmd package compile -m speed -f com.android.launcher >/dev/null 2>&1 &

ui_print "- Cai dat hoan tat! Vui long khoi dong lai thiet bi."
