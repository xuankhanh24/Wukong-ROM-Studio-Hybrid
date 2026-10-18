package com.android.launcher.settings;

import java.util.Locale;

/**
 * Universal I18n / Localization Engine for Launcher Mods
 * Hoàn toàn độc lập với resources.arsc.
 * Tự động chuyển đổi giữa Tiếng Việt và Tiếng Anh dựa theo cài đặt ngôn ngữ hệ thống (System Locale).
 */
public final class I18n {

    private I18n() {}

    /**
     * Kiểm tra ngôn ngữ hệ thống hiện tại có phải là Tiếng Việt không.
     */
    public static boolean isVi() {
        try {
            Locale loc = Locale.getDefault();
            if (loc != null) {
                String lang = loc.getLanguage();
                return "vi".equalsIgnoreCase(lang);
            }
        } catch (Throwable ignored) {}
        return false;
    }

    /**
     * Trả về chuỗi Tiếng Việt nếu ngôn ngữ máy là 'vi', ngược lại trả về Tiếng Anh.
     * @param vi Chuỗi tiếng Việt
     * @param en Chuỗi tiếng Anh
     */
    public static String str(String vi, String en) {
        return isVi() ? vi : en;
    }
}
