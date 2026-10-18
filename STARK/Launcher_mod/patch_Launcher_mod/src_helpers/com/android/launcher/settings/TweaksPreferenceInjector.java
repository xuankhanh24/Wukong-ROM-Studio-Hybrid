package com.android.launcher.settings;

import android.content.Context;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.preference.PreferenceFragmentCompat;
import java.lang.reflect.Method;
import java.lang.reflect.Field;
import java.util.List;

/**
 * Bộ chèn cài đặt Tinh chỉnh (Tweaks) cho ColorOS Launcher
 * Độc lập 100% với resources.arsc, hỗ trợ song ngữ Tiếng Việt & Tiếng Anh.
 */
public final class TweaksPreferenceInjector {

    public static void inject(PreferenceFragmentCompat fragment, Context context) {
        if (fragment == null) return;
        if (context == null) context = fragment.getContext();
        if (context == null) return;

        android.app.Activity act = fragment.getActivity();
        if (act == null && context instanceof android.app.Activity) {
            act = (android.app.Activity) context;
        }
        if (act == null && context instanceof android.content.ContextWrapper) {
            android.content.Context c = context;
            while (c instanceof android.content.ContextWrapper && !(c instanceof android.app.Activity)) {
                c = ((android.content.ContextWrapper) c).getBaseContext();
            }
            if (c instanceof android.app.Activity) {
                act = (android.app.Activity) c;
            }
        }
        showWukongPopup(act);

        try {
            PreferenceScreen screen = fragment.getPreferenceScreen();
            if (screen == null) {
                return;
            }

            // Kiểm tra xem nhóm Tweaks đã được tạo chưa
            Preference existing = findPreference(fragment, screen, "launcher_reboot");
            if (existing == null) {
                createAndAddPreferences(fragment, screen, context);
            }

            bindListenersAndSummaries(fragment, screen, context);
        } catch (Throwable th) {
            android.util.Log.e("TweaksInjector", "inject() error", th);
        }
    }

    private static void createAndAddPreferences(PreferenceFragmentCompat fragment, PreferenceScreen screen, Context context) {
        try {
            PreferenceCategory category = createCategory(context, "Tweaks", "Tinh chỉnh", "Tweaks", "111", 2);
            addPreference(screen, category);

            addPreference(category, createPreference(context, "launcher_reboot",
                    "Áp dụng", "Apply Changes",
                    "Nhấn Áp dụng để khởi động lại launcher và áp dụng cấu hình",
                    "Tap Apply to restart launcher and apply changes"));

            addPreference(category, createSwitchPreference(context, "wk_gg",
                    "Google Feed", "Google Feed",
                    null, null, false));

            addPreference(category, createSwitchPreference(context, "wk_tablet",
                    "Đa nhiệm máy tính bảng", "Tablet Grid Recents",
                    null, null, false));

            addPreference(category, createSwitchPreference(context, "wk_dock",
                    "Làm mờ thanh dock", "Dock Blur",
                    null, null, false));

            addPreference(category, createSwitchPreference(context, "wk_thanh",
                    "Mở rộng thanh tác vụ", "Expand Taskbar",
                    "Hiển thị ứng dụng dùng gần đây và được đề xuất ở bên phải thanh tác vụ",
                    "Show recent and suggested apps on right taskbar", false));

            Preference seekBarPref = createSeekBarPreference(context, "wk_taskbar_expand_count",
                    "Số ứng dụng đề xuất tối đa", "Max Suggested Apps",
                    "Chọn số ứng dụng đề xuất hiển thị trong thanh tác vụ mở rộng",
                    "Number of suggested apps in expanded taskbar", "wk_thanh", 5);
            if (seekBarPref != null) {
                addPreference(category, seekBarPref);
            }

            addPreference(category, createSwitchPreference(context, "launcher_breeno_entry_enable",
                    "Thanh tìm kiếm dưới cùng", "Bottom Search Bar",
                    null, null, true));

            addPreference(category, createPreference(context, "wk_search_package",
                    "Tùy chỉnh thanh tìm kiếm dưới cùng", "Customize Bottom Search Bar",
                    "Bấm để chọn ứng dụng", "Tap to select application"));

            addPreference(category, createPreference(context, "wk_slide_down_package",
                    "Tùy chỉnh vuốt xuống trên Màn hình chính", "Customize Home Swipe Down",
                    "Bấm để chọn ứng dụng", "Tap to select application"));

            addPreference(category, createPreference(context, "wk_slide_down_package_left",
                    "Tùy chỉnh vuốt xuống bên trái Màn hình chính", "Customize Left Swipe Down",
                    "Bấm để chọn ứng dụng", "Tap to select application"));

            addPreference(category, createPreference(context, "wk_slide_down_package_right",
                    "Tùy chỉnh vuốt xuống bên phải Màn hình chính", "Customize Right Swipe Down",
                    "Bấm để chọn ứng dụng", "Tap to select application"));
        } catch (Throwable th) {
            android.util.Log.e("TweaksInjector", "createAndAddPreferences error", th);
        }
    }

    private static void bindListenersAndSummaries(PreferenceFragmentCompat fragment, PreferenceScreen screen, Context context) {
        try {
            Preference reboot = findPreference(fragment, screen, "launcher_reboot");
            if (reboot != null) {
                reboot.setPersistent(false);
                reboot.setOnPreferenceClickListener(new LauncherRebootPreferenceClickListener(context));
            }

            bindSearchPackage(fragment, screen, context, "wk_search_package");
            bindSearchPackage(fragment, screen, context, "wk_slide_down_package");
            bindSearchPackage(fragment, screen, context, "wk_slide_down_package_left");
            bindSearchPackage(fragment, screen, context, "wk_slide_down_package_right");
        } catch (Throwable th) {
            android.util.Log.e("TweaksInjector", "bindListenersAndSummaries error", th);
        }
    }

    private static void bindSearchPackage(PreferenceFragmentCompat fragment, PreferenceScreen screen, Context context, String key) {
        Preference pref = findPreference(fragment, screen, key);
        if (pref != null) {
            pref.setPersistent(false);
            String defSummary = I18n.str("Bấm để chọn ứng dụng", "Tap to select application");
            SearchPackagePreferenceHelper.updateSummaryForKey(context, pref, key, defSummary);
            pref.setOnPreferenceClickListener(new SearchPackagePreferenceClickListener(context, key, defSummary));
        }
    }

    public static Preference findPreference(PreferenceFragmentCompat fragment, PreferenceGroup group, CharSequence key) {
        if (key == null) return null;
        if (fragment != null) {
            try {
                Preference p = fragment.findPreference(key);
                if (p != null) return p;
            } catch (Throwable ignored) {}
        }
        if (group != null) {
            try {
                Method m = PreferenceGroup.class.getMethod("findPreference", CharSequence.class);
                Preference p = (Preference) m.invoke(group, key);
                if (p != null) return p;
            } catch (Throwable ignored) {}

            try {
                Method m = PreferenceGroup.class.getMethod("findPreference", String.class);
                Preference p = (Preference) m.invoke(group, key.toString());
                if (p != null) return p;
            } catch (Throwable ignored) {}

            try {
                for (Method m : PreferenceGroup.class.getDeclaredMethods()) {
                    if (Preference.class.isAssignableFrom(m.getReturnType()) && m.getParameterTypes().length == 1) {
                        Class<?> ptype = m.getParameterTypes()[0];
                        if (CharSequence.class.isAssignableFrom(ptype) || String.class.isAssignableFrom(ptype)) {
                            m.setAccessible(true);
                            Preference res = (Preference) m.invoke(group, key);
                            if (res != null) return res;
                        }
                    }
                }
            } catch (Throwable ignored) {}

            try {
                for (Field f : PreferenceGroup.class.getDeclaredFields()) {
                    if (List.class.isAssignableFrom(f.getType())) {
                        f.setAccessible(true);
                        List<?> list = (List<?>) f.get(group);
                        if (list != null) {
                            for (Object obj : list) {
                                if (obj instanceof Preference) {
                                    Preference p = (Preference) obj;
                                    if (key.equals(p.getKey())) return p;
                                    if (p instanceof PreferenceGroup) {
                                        Preference nested = findPreference(null, (PreferenceGroup) p, key);
                                        if (nested != null) return nested;
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable ignored) {}
        }
        return null;
    }

    public static boolean addPreference(PreferenceGroup group, Preference pref) {
        if (group == null || pref == null) return false;
        if (!android.preference.BuildFeatures.allowsPreference(pref.getKey())) return false;
        try {
            Method m = PreferenceGroup.class.getMethod("addPreference", Preference.class);
            Object res = m.invoke(group, pref);
            if (res instanceof Boolean) return ((Boolean) res).booleanValue();
            return true;
        } catch (Throwable ignored) {}

        try {
            for (Method m : group.getClass().getMethods()) {
                if ("addPreference".equals(m.getName()) && m.getParameterTypes().length == 1
                        && Preference.class.isAssignableFrom(m.getParameterTypes()[0])) {
                    m.setAccessible(true);
                    Object res = m.invoke(group, pref);
                    if (res instanceof Boolean) return ((Boolean) res).booleanValue();
                    return true;
                }
            }
        } catch (Throwable ignored) {}

        try {
            for (Method m : PreferenceGroup.class.getDeclaredMethods()) {
                if (m.getParameterTypes().length == 1 && Preference.class.isAssignableFrom(m.getParameterTypes()[0])) {
                    String name = m.getName();
                    if (name.contains("remove") || name.contains("Remove")) {
                        continue;
                    }
                    Class<?> ret = m.getReturnType();
                    if (ret == void.class) {
                        m.setAccessible(true);
                        m.invoke(group, pref);
                        return true;
                    }
                }
            }
        } catch (Throwable ignored) {}

        return false;
    }

    private static PreferenceCategory createCategory(Context context, String key, String viTitle, String enTitle, String prefKey, int order) {
        PreferenceCategory cat;
        try {
            Class<?> clazz = Class.forName("com.coui.appcompat.preference.COUIPreferenceCategory");
            cat = (PreferenceCategory) clazz.getConstructor(Context.class).newInstance(context);
        } catch (Throwable th) {
            cat = new PreferenceCategory(context);
        }
        cat.setTitle(resolveString(context, "wk_tweaks_title", viTitle, enTitle));
        cat.setKey(prefKey);
        cat.setOrder(order);
        return cat;
    }

    private static Preference createPreference(Context context, String key, String viTitle, String enTitle, String viSummary, String enSummary) {
        Preference pref;
        try {
            Class<?> clazz = Class.forName("com.coui.appcompat.preference.COUIJumpPreference");
            pref = (Preference) clazz.getConstructor(Context.class).newInstance(context);
        } catch (Throwable th) {
            pref = new Preference(context);
        }
        pref.setKey(key);
        pref.setPersistent(false);
        pref.setTitle(resolveString(context, key + "_title", viTitle, enTitle));
        if (viSummary != null) {
            pref.setSummary(resolveString(context, key + "_summary", viSummary, enSummary));
        }
        return pref;
    }

    private static Preference createSwitchPreference(Context context, String key, String viTitle, String enTitle, String viSummary, String enSummary, boolean defVal) {
        Preference pref;
        try {
            Class<?> clazz = Class.forName("com.coui.appcompat.preference.COUISwitchPreference");
            pref = (Preference) clazz.getConstructor(Context.class).newInstance(context);
        } catch (Throwable th) {
            try {
                Class<?> clazz = Class.forName("androidx.preference.SwitchPreferenceCompat");
                pref = (Preference) clazz.getConstructor(Context.class).newInstance(context);
            } catch (Throwable th2) {
                pref = new Preference(context);
            }
        }
        pref.setKey(key);
        pref.setPersistent(true);
        pref.setDefaultValue(defVal);
        pref.setTitle(resolveString(context, key + "_title", viTitle, enTitle));
        if (viSummary != null) {
            pref.setSummary(resolveString(context, key + "_summary", viSummary, enSummary));
        }
        return pref;
    }

    private static Preference createSeekBarPreference(Context context, String key, String viTitle, String enTitle, String viSummary, String enSummary, String dependency, int defVal) {
        try {
            Class<?> clazz = Class.forName("android.preference.WkTaskbarSeekBarPreference");
            Preference pref = (Preference) clazz.getConstructor(Context.class, android.util.AttributeSet.class).newInstance(context, null);
            pref.setKey(key);
            pref.setPersistent(true);
            pref.setDefaultValue(defVal);
            try {
                Method mDep = pref.getClass().getMethod("setDependency", String.class);
                mDep.invoke(pref, dependency);
            } catch (Throwable ignored) {}
            pref.setTitle(resolveString(context, "wk_taskbar_expand_count_title", viTitle, enTitle));
            pref.setSummary(resolveString(context, "wk_taskbar_expand_count_summary", viSummary, enSummary));
            return pref;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String resolveString(Context context, String name, String viFallback, String enFallback) {
        if (context != null) {
            try {
                int id = context.getResources().getIdentifier(name, "string", context.getPackageName());
                if (id != 0) {
                    return context.getString(id);
                }
            } catch (Throwable ignored) {}
        }
        return I18n.str(viFallback, enFallback);
    }

    public static void showWukongPopup(final android.app.Activity act) {
        if (act == null) return;

        act.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    android.view.View decor = null;
                    if (act.getWindow() != null) {
                        decor = act.getWindow().getDecorView();
                    }
                    if (decor == null) {
                        decor = act.findViewById(android.R.id.content);
                    }
                    if (!(decor instanceof android.view.ViewGroup)) return;
                    final android.view.ViewGroup root = (android.view.ViewGroup) decor;

                    if (root.findViewWithTag("wk_wukong_popup") != null) return;

                    boolean isDark = (act.getResources().getConfiguration().uiMode 
                            & android.content.res.Configuration.UI_MODE_NIGHT_MASK) 
                            == android.content.res.Configuration.UI_MODE_NIGHT_YES;

                    final android.widget.TextView tv = new android.widget.TextView(act);
                    tv.setTag("wk_wukong_popup");
                    tv.setText("Modified by Wukong");
                    tv.setTextColor(isDark ? 0xFFFFFFFF : 0xFF1D1D1F);
                    tv.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 15.0f);
                    tv.setTypeface(android.graphics.Typeface.create("sans-serif-medium", android.graphics.Typeface.NORMAL));
                    tv.setGravity(android.view.Gravity.CENTER);
                    tv.setTextAlignment(android.view.View.TEXT_ALIGNMENT_CENTER);

                    float density = act.getResources().getDisplayMetrics().density;
                    int padH = (int) (22.0f * density);
                    int padV = (int) (11.0f * density);
                    tv.setPadding(padH, padV, padH, padV);

                    android.graphics.drawable.GradientDrawable bg = new android.graphics.drawable.GradientDrawable();
                    bg.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                    bg.setColor(isDark ? 0xEB2C2C2E : 0xF2FFFFFF);
                    bg.setCornerRadius(100.0f * density);
                    if (isDark) {
                        bg.setStroke((int) (1.0f * density), 0x2EFFFFFF);
                    } else {
                        bg.setStroke((int) (1.0f * density), 0x18000000);
                    }
                    tv.setBackground(bg);
                    tv.setElevation(14.0f * density);
                    tv.setTranslationZ(14.0f * density);

                    android.widget.FrameLayout.LayoutParams lp = new android.widget.FrameLayout.LayoutParams(
                            android.view.ViewGroup.LayoutParams.WRAP_CONTENT,
                            android.view.ViewGroup.LayoutParams.WRAP_CONTENT
                    );
                    lp.gravity = android.view.Gravity.BOTTOM | android.view.Gravity.CENTER_HORIZONTAL;
                    lp.bottomMargin = (int) (96.0f * density);

                    tv.setAlpha(0.0f);
                    tv.setScaleX(0.9f);
                    tv.setScaleY(0.9f);
                    root.addView(tv, lp);

                    tv.animate()
                        .alpha(1.0f)
                        .scaleX(1.0f)
                        .scaleY(1.0f)
                        .setDuration(220L)
                        .withEndAction(new Runnable() {
                            @Override
                            public void run() {
                                tv.animate()
                                    .alpha(0.0f)
                                    .scaleX(0.9f)
                                    .scaleY(0.9f)
                                    .setStartDelay(3500L)
                                    .setDuration(250L)
                                    .withEndAction(new Runnable() {
                                        @Override
                                        public void run() {
                                            try {
                                                root.removeView(tv);
                                            } catch (Throwable ignored) {}
                                        }
                                    })
                                    .start();
                            }
                        })
                        .start();
                } catch (Throwable ignored) {}
            }
        });
    }
}
