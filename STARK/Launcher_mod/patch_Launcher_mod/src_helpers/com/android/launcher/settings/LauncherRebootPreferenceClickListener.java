package com.android.launcher.settings;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.widget.Toast;
import androidx.preference.Preference;

/**
 * ClickListener cho mục "Áp dụng" / "Apply" trong Tweaks
 * Khởi động lại Launcher để nạp toàn bộ cấu hình mới.
 */
public final class LauncherRebootPreferenceClickListener implements Preference.OnPreferenceClickListener {
    private final Context context;

    public LauncherRebootPreferenceClickListener(Context context) {
        this.context = context;
    }

    private Activity findActivity(Context ctx) {
        if (ctx instanceof Activity) return (Activity) ctx;
        if (ctx instanceof ContextWrapper) {
            Context base = ctx;
            while (base instanceof ContextWrapper) {
                if (base instanceof Activity) return (Activity) base;
                base = ((ContextWrapper) base).getBaseContext();
            }
        }
        return null;
    }

    @Override
    public boolean onPreferenceClick(Preference preference) {
        Context targetCtx = (preference != null && preference.getContext() != null)
                ? preference.getContext() : this.context;
        if (targetCtx == null) return true;

        try {
            String msg = I18n.str("Đang khởi động lại Launcher để áp dụng cấu hình...",
                                  "Restarting Launcher to apply configuration...");
            Toast.makeText(targetCtx, msg, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {}

        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            home.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            targetCtx.startActivity(home);
        } catch (Throwable ignored) {}

        try {
            Activity act = findActivity(targetCtx);
            if (act != null) {
                act.finish();
            }
        } catch (Throwable ignored) {}

        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    Process.killProcess(Process.myPid());
                } catch (Throwable ignored) {}
            }
        }, 450L);

        return true;
    }
}
