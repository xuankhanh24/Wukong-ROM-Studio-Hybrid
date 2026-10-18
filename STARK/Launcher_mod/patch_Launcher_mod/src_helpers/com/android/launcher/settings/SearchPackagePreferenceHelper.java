package com.android.launcher.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import androidx.preference.Preference;

/**
 * Helper cập nhật tóm tắt (summary) và nhãn hiển thị cho Preference chọn ứng dụng
 * Hỗ trợ đa ngôn ngữ không phụ thuộc resources.arsc.
 */
public final class SearchPackagePreferenceHelper {
    public static final String KEY_PACKAGE = "wk_search_package";
    public static final String SUFFIX_SHORTCUT_LABEL = "_shortcut_label";
    public static final String SUFFIX_TARGET_TYPE = "_target_type";
    public static final String TARGET_TYPE_SHORTCUT = "shortcut";

    private SearchPackagePreferenceHelper() {}

    private static CharSequence buildSelectedAssignment(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return I18n.str("Mặc định", "Default");
        }
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo ai = pm.getApplicationInfo(pkg, 0);
            CharSequence label = pm.getApplicationLabel(ai);
            if (!TextUtils.isEmpty(label)) {
                return label;
            }
        } catch (Throwable ignored) {}
        return pkg;
    }

    private static void setAssignmentIfAvailable(Preference pref, CharSequence val) {
        if (pref == null) return;
        try {
            java.lang.reflect.Method m = pref.getClass().getMethod("setAssignment", CharSequence.class);
            m.invoke(pref, val);
        } catch (Throwable ignored) {}
    }

    public static void updateSummary(Context context, Preference pref) {
        updateSummaryForKey(context, pref, KEY_PACKAGE, I18n.str("Bấm để chọn ứng dụng", "Tap to select application"));
    }

    public static void updateSummaryForKey(Context context, Preference pref, String key, String defaultSummary) {
        if (context == null || pref == null) return;
        if (TextUtils.isEmpty(key)) key = KEY_PACKAGE;
        if (TextUtils.isEmpty(defaultSummary)) {
            defaultSummary = I18n.str("Bấm để chọn ứng dụng", "Tap to select application");
        }

        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        String selected = sp.getString(key, "");

        if (TextUtils.isEmpty(selected)) {
            pref.setSummary(defaultSummary);
            setAssignmentIfAvailable(pref, I18n.str("Mặc định", "Default"));
            return;
        }

        String targetType = sp.getString(key + SUFFIX_TARGET_TYPE, "");
        if (TARGET_TYPE_SHORTCUT.equals(targetType)) {
            String shortcutLabel = sp.getString(key + SUFFIX_SHORTCUT_LABEL, "");
            CharSequence display = !TextUtils.isEmpty(shortcutLabel) ? shortcutLabel : buildSelectedAssignment(context, selected);
            pref.setSummary(display);
            setAssignmentIfAvailable(pref, display);
        } else {
            CharSequence appName = buildSelectedAssignment(context, selected);
            pref.setSummary(appName);
            setAssignmentIfAvailable(pref, appName);
        }
    }
}
