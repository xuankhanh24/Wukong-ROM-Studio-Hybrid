package com.android.launcher.settings;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.preference.Preference;

/**
 * ClickListener cho các mục chọn ứng dụng/lối tắt trong Tweaks
 * Mở hộp thoại SearchPackagePickerDialog để người dùng chọn ứng dụng.
 */
public final class SearchPackagePreferenceClickListener implements Preference.OnPreferenceClickListener {
    private final Context fallbackContext;
    private final String keyPackage;
    private final String emptySummary;

    public SearchPackagePreferenceClickListener(Context context) {
        this(context, SearchPackagePickerDialog.KEY_PACKAGE, null);
    }

    public SearchPackagePreferenceClickListener(Context context, String key, String defaultSummary) {
        this.fallbackContext = context;
        this.keyPackage = key;
        this.emptySummary = defaultSummary;
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
        Context ctx = (preference != null && preference.getContext() != null)
                ? preference.getContext() : this.fallbackContext;
        if (ctx == null) return true;

        Activity act = findActivity(ctx);
        Context targetContext = (act != null) ? act : ctx;

        String defSum = this.emptySummary;
        if (defSum == null || defSum.isEmpty()) {
            defSum = I18n.str("Bấm để chọn ứng dụng", "Tap to select application");
        }

        SearchPackagePickerDialog.showForKey(targetContext, preference, this.keyPackage, defSum);
        return true;
    }
}
