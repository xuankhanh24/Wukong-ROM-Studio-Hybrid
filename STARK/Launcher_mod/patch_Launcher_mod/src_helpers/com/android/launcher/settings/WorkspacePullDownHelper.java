package com.android.launcher.settings;

import android.content.Context;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class WorkspacePullDownHelper {
    public static boolean sSlideDownPackageStarted = false;
    private static final String[] MENU_KEYS = {
        "wk_slide_down_open_app", "wk_slide_down_open_two_apps",
        "wk_slide_down_left_app_quick_settings", "wk_slide_down_notification_right_app"
    };
    private static final String[] MENU_TITLES = {
        "Mở ứng dụng", "Mở 2 ứng dụng",
        "Ứng dụng bên trái và Cài đặt nhanh", "Thông báo và ứng dụng bên phải"
    };

    private static String menuTitle(Context context, int index) {
        int id = context.getResources().getIdentifier(MENU_KEYS[index], "string", context.getPackageName());
        return id == 0 ? MENU_TITLES[index] : context.getString(id);
    }

    // COUIMenuPreference reads native PopupListItem objects, not just entry strings.
    public static void appendCustomSlideDownItems(java.util.List<Object> list, Context context) {
        if (list == null || context == null) return;
        try {
            if (list.isEmpty()) return;
            Class<?> itemClass = list.get(0).getClass();
            java.lang.reflect.Constructor<?> constructor = itemClass.getConstructor(String.class, boolean.class, boolean.class);
            java.util.List<Field> textFields = new java.util.ArrayList<>();
            for (Field field : itemClass.getFields()) {
                if (field.getType() == String.class) textFields.add(field);
            }
            for (int i = 0; i < MENU_KEYS.length; i++) {
                String title = menuTitle(context, i);
                boolean present = false;
                for (Object item : list) {
                    for (Field field : textFields) {
                        if (title.equals(field.get(item))) { present = true; break; }
                    }
                    if (present) break;
                }
                if (!present) list.add(constructor.newInstance(title, true, false));
            }
        } catch (ReflectiveOperationException e) {
            android.util.Log.e("LauncherMod", "Cannot initialize custom gesture menu", e);
        }
    }

    public static int getCustomSlideDownType(Context context, String title) {
        if (context == null || title == null) return -1;
        for (int i = 0; i < MENU_KEYS.length; i++) {
            if (title.equals(menuTitle(context, i))) return 8 + i;
        }
        return -1;
    }

    public static void updateGestureSummary(Object fragment, Context context) {
        if (fragment == null || context == null) return;
        try {
            Context protectedContext = context.createDeviceProtectedStorageContext();
            int mode = protectedContext.getSharedPreferences("com.android.launcher_unique_shared_prefs", 0)
                    .getInt("launcher_slide_down_type", 0);
            if (mode < 8 || mode > 11) return;
            Object preference = fragment.getClass().getMethod("findPreference", CharSequence.class)
                    .invoke(fragment, "launcher_slide_down");
            if (preference != null) preference.getClass().getMethod("setAssignment", CharSequence.class)
                    .invoke(preference, menuTitle(context, mode - 8));
        } catch (ReflectiveOperationException error) {
            android.util.Log.e("LauncherMod", "Cannot refresh gesture summary", error);
        }
    }

    public static boolean handleSlideDown(Object controller, Context context) {
        if (controller == null || context == null) return false;
        try {
            int slideDownType = getIntField(controller, "mSlideDownType", 0);
            if (slideDownType < 8 || slideDownType > 11) {
                return false;
            }

            boolean isLeftHalf = isTouchDownLeftHalf(controller, context);

            if (slideDownType == 10) {
                if (isLeftHalf) {
                    return startSlideDownPackage(controller, context, "wk_slide_down_package_left");
                } else {
                    return expandSystemPanel(controller, context, true);
                }
            } else if (slideDownType == 11) {
                if (isLeftHalf) {
                    return expandSystemPanel(controller, context, false);
                } else {
                    return startSlideDownPackage(controller, context, "wk_slide_down_package_right");
                }
            } else if (slideDownType == 9) {
                String targetKey = isLeftHalf ? "wk_slide_down_package_left" : "wk_slide_down_package_right";
                return startSlideDownPackage(controller, context, targetKey);
            } else if (slideDownType == 8) {
                return startSlideDownPackage(controller, context, "wk_slide_down_package");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public static boolean isTouchDownLeftHalf(Object controller, Context context) {
        try {
            float touchDownX = getFloatField(controller, "mTouchDownX", 0.0f);
            float width = context.getResources().getDisplayMetrics().widthPixels;
            return touchDownX < (width / 2.0f);
        } catch (Throwable th) {
            return true;
        }
    }

    public static boolean startSlideDownPackage(Object controller, Context context, String key) {
        try {
            if (SearchPackageLaunchHelper.startSelectedTarget(context, key)) {
                sSlideDownPackageStarted = true;
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public static boolean expandSystemPanel(Object controller, Context context, boolean isSettings) {
        cleanupAfterLaunch(controller);
        try {
            Object sbm = context.getSystemService("statusbar");
            if (sbm != null) {
                String methodName = isSettings ? "expandSettingsPanel" : "expandNotificationsPanel";
                try {
                    Method m = sbm.getClass().getMethod(methodName);
                    m.setAccessible(true);
                    m.invoke(sbm);
                    return true;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public static void cleanupAfterLaunch(Object controller) {
        if (controller == null) return;
        try {
            sSlideDownPackageStarted = false;
            // Use the controller's public cancellation path. It owns the native
            // animator API, including names obfuscated differently by each build.
            invokeMethod(controller, "pullCancel");
            Object launcher = getField(controller, "mLauncher");
            if (launcher != null) {
                Object dragLayer = invokeMethod(launcher, "getDragLayer");
                if (dragLayer instanceof View) {
                    View v = (View) dragLayer;
                    v.setAlpha(1.0f);
                    v.setScaleX(1.0f);
                    v.setScaleY(1.0f);
                    v.setTranslationY(0.0f);
                }
                Object blurScrim = invokeMethod(launcher, "getBlurScrimWindowController");
                if (blurScrim != null) {
                    invokeMethod(blurScrim, "detach");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void onResume(Object controller) {
        if (sSlideDownPackageStarted) {
            cleanupAfterLaunch(controller);
        }
    }

    private static int getIntField(Object obj, String name, int def) {
        try {
            Field f = findField(obj.getClass(), name);
            return f.getInt(obj);
        } catch (Throwable th) { return def; }
    }
    private static float getFloatField(Object obj, String name, float def) {
        try {
            Field f = findField(obj.getClass(), name);
            return f.getFloat(obj);
        } catch (Throwable th) { return def; }
    }
    private static Object getField(Object obj, String name) {
        try {
            Field f = findField(obj.getClass(), name);
            return f.get(obj);
        } catch (Throwable th) { return null; }
    }
    private static Object invokeMethod(Object obj, String name) {
        try {
            Method m = obj.getClass().getMethod(name);
            m.setAccessible(true);
            return m.invoke(obj);
        } catch (Throwable th) { return null; }
    }
    private static Object invokeMethod(Object obj, String name, Class<?>[] types, Object... args) {
        try {
            Method m = obj.getClass().getMethod(name, types);
            m.setAccessible(true);
            return m.invoke(obj, args);
        } catch (Throwable th) { return null; }
    }
    private static Field findField(Class<?> cls, String name) throws NoSuchFieldException {
        while (cls != null) {
            try {
                Field f = cls.getDeclaredField(name);
                f.setAccessible(true);
                return f;
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException(name);
    }
}
