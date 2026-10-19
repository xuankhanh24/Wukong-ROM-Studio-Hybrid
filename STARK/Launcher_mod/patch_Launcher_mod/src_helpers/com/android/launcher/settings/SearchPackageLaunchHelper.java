package com.android.launcher.settings;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/**
 * Helper khởi chạy ứng dụng hoặc lối tắt với đầy đủ hiệu ứng chuyển cảnh Breeno native mượt mà
 */
public final class SearchPackageLaunchHelper {
    private static final String TAG = "SearchPackageLaunchHelper";
    public static final String SUFFIX_SHORTCUT_ID = "_shortcut_id";
    public static final String SUFFIX_TARGET_TYPE = "_target_type";
    public static final String TARGET_TYPE_SHORTCUT = "shortcut";

    private SearchPackageLaunchHelper() {}

    private static SharedPreferences getPrefs(Context context) {
        if (context == null) return null;
        try {
            Context dps = context.createDeviceProtectedStorageContext();
            if (dps != null) {
                SharedPreferences spDe = PreferenceManager.getDefaultSharedPreferences(dps);
                if (spDe != null && spDe.contains("wk_search_package")) {
                    return spDe;
                }
            }
        } catch (Throwable ignored) {}
        try {
            SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
            if (sp != null && sp.contains("wk_search_package")) {
                return sp;
            }
            return sp;
        } catch (Throwable ignored) {}
        return null;
    }

    private static Object getField(Object obj, String str) {
        if (obj == null) return null;
        Class<?> cls = obj.getClass();
        while (cls != null) {
            try {
                Field f = cls.getDeclaredField(str);
                f.setAccessible(true);
                return f.get(obj);
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
            } catch (Throwable t) {
                return null;
            }
        }
        return null;
    }

    private static Method sStartActivitySafelyMethod = null;
    private static volatile String sLastLaunchedPackage = null;
    private static volatile long sLastLaunchTimestamp = 0L;

    public static void clearLastLaunchedPackage() {
        sLastLaunchedPackage = null;
        sLastLaunchTimestamp = 0L;
    }

    public static void setLastLaunchedPackage(String pkg) {
        sLastLaunchedPackage = pkg;
        sLastLaunchTimestamp = System.currentTimeMillis();
    }

    public static Context getAppContext() {
        try {
            Class<?> appCls = Class.forName("com.android.common.LauncherApplication");
            Method m = appCls.getMethod("getAppContext");
            Context ctx = (Context) m.invoke(null);
            if (ctx != null) return ctx;
        } catch (Throwable ignored) {}
        try {
            Class<?> actTrackerCls = Class.forName("com.android.launcher3.util.ActivityTracker");
            Field f = Class.forName("com.android.launcher3.Launcher").getField("ACTIVITY_TRACKER");
            Object tracker = f.get(null);
            Method m = tracker.getClass().getMethod("getCreatedActivity");
            Context ctx = (Context) m.invoke(tracker);
            if (ctx != null) return ctx;
        } catch (Throwable ignored) {}
        try {
            Object ind = SearchPackageIndicatorHelper.findIndicator();
            if (ind instanceof View) {
                return ((View) ind).getContext();
            }
        } catch (Throwable ignored) {}
        return null;
    }

    public static boolean isTargetPackage(String pkg) {
        if (TextUtils.isEmpty(pkg)) return false;
        if ("com.heytap.speechassist".equals(pkg)) return true;

        // 1. Kiểm tra cấu hình hiện tại trong SharedPreferences trước
        try {
            Context ctx = getAppContext();
            if (ctx != null) {
                SharedPreferences sp = getPrefs(ctx);
                if (sp != null) {
                    String targetPkg = sp.getString("wk_search_package", "");
                    if (!TextUtils.isEmpty(targetPkg) && targetPkg.equals(pkg)) {
                        return true;
                    }
                }
            }
        } catch (Throwable ignored) {}

        // 2. Fallback: Chỉ chấp nhận sLastLaunchedPackage trong cửa sổ 15 giây sau khi khởi chạy
        if (pkg.equals(sLastLaunchedPackage)) {
            if (System.currentTimeMillis() - sLastLaunchTimestamp < 15000L) {
                return true;
            } else {
                sLastLaunchedPackage = null;
            }
        }
        return false;
    }

    /**
     * Cung cấp Intent chính xác cho thanh tìm kiếm dưới cùng (IndicatorEntry).
     * Cho cả Ứng dụng và Lối tắt, Intent trả về sẽ được gắn flags và extras Breeno
     * để hệ thống ColorOS kích hoạt trọn vẹn cả Animation MỞ và ĐÓNG (morphing pill).
     */
    public static Intent getIndicatorLaunchIntent(Context context) {
        if (context == null) context = getAppContext();
        if (context == null) return null;
        SharedPreferences sp = getPrefs(context);
        if (sp == null) return null;

        String pkg = sp.getString("wk_search_package", "");
        if (TextUtils.isEmpty(pkg)) {
            return null;
        }
        setLastLaunchedPackage(pkg);

        String targetType = sp.getString("wk_search_package" + SUFFIX_TARGET_TYPE, "");
        if (TARGET_TYPE_SHORTCUT.equals(targetType)) {
            String shortcutId = sp.getString("wk_search_package" + SUFFIX_SHORTCUT_ID, "");
            if (!TextUtils.isEmpty(shortcutId)) {
                try {
                    LauncherApps la = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                    if (la != null) {
                        LauncherApps.ShortcutQuery query = new LauncherApps.ShortcutQuery();
                        query.setPackage(pkg);
                        query.setShortcutIds(Collections.singletonList(shortcutId));
                        query.setQueryFlags(0x1b); // 1 | 2 | 8 | 16
                        List<ShortcutInfo> list = la.getShortcuts(query, Process.myUserHandle());
                        if (list == null || list.isEmpty()) {
                            query = new LauncherApps.ShortcutQuery();
                            query.setPackage(pkg);
                            query.setQueryFlags(0x1b);
                            list = la.getShortcuts(query, Process.myUserHandle());
                        }
                        if (list != null) {
                            for (ShortcutInfo si : list) {
                                if (si != null && shortcutId.equals(si.getId())) {
                                    Intent targetIntent = null;
                                    Intent[] intents = si.getIntents();
                                    if (intents != null && intents.length > 0) {
                                        targetIntent = new Intent(intents[intents.length - 1]);
                                    } else if (si.getIntent() != null) {
                                        targetIntent = new Intent(si.getIntent());
                                    }
                                    if (targetIntent != null) {
                                        targetIntent.addFlags(0x14000000); // FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP
                                        targetIntent.putExtra("activate_type", 0x71);
                                        targetIntent.putExtra("seamless_animation", true);
                                        return targetIntent;
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable t) {
                    Log.e(TAG, "getShortcut intent error: " + t.getMessage(), t);
                }
            }
        }

        // App thông thường: Giống 100% cơ chế mod A16
        try {
            Intent intent = context.getPackageManager().getLaunchIntentForPackage(pkg);
            if (intent != null) {
                intent.setFlags(0x14000000);
                intent.putExtra("activate_type", 0x71);
                intent.putExtra("seamless_animation", true);
                return intent;
            }
        } catch (Throwable t) {
            Log.e(TAG, "getLaunchIntentForPackage error: " + t.getMessage(), t);
        }
        return null;
    }

    public static boolean startIndicatorSafely(Object launcherObj, View indicator, Intent intent, Object itemInfo) {
        if (launcherObj == null || indicator == null) return false;
        Context context = indicator.getContext();
        SharedPreferences sp = getPrefs(context);
        String targetType = sp != null ? sp.getString("wk_search_package" + SUFFIX_TARGET_TYPE, "") : "";
        if (TARGET_TYPE_SHORTCUT.equals(targetType)) {
            String pkg = sp.getString("wk_search_package", "");
            String shortcutId = sp.getString("wk_search_package" + SUFFIX_SHORTCUT_ID, "");
            if (!TextUtils.isEmpty(pkg) && !TextUtils.isEmpty(shortcutId)) {
                setLastLaunchedPackage(pkg);
                try {
                    LauncherApps launcherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                    Bundle optsBundle = null;
                    try {
                        Method mGetOpts = null;
                        for (Method m : launcherObj.getClass().getMethods()) {
                            if ("getActivityLaunchOptions".equals(m.getName())) {
                                Class<?>[] pts = m.getParameterTypes();
                                if (pts.length == 2 && View.class.isAssignableFrom(pts[0])) {
                                    mGetOpts = m;
                                    break;
                                } else if (pts.length == 3 && View.class.isAssignableFrom(pts[0])) {
                                    mGetOpts = m;
                                    break;
                                }
                            }
                        }
                        if (mGetOpts != null) {
                            Object wrapper = null;
                            if (mGetOpts.getParameterTypes().length == 2) {
                                wrapper = mGetOpts.invoke(launcherObj, indicator, itemInfo);
                            } else {
                                wrapper = mGetOpts.invoke(launcherObj, indicator, itemInfo, null);
                            }
                            if (wrapper != null) {
                                Method toBundle = wrapper.getClass().getMethod("toBundle");
                                optsBundle = (Bundle) toBundle.invoke(wrapper);
                            }
                        }
                    } catch (Throwable t) {
                        Log.e(TAG, "getActivityLaunchOptions error: " + t.getMessage(), t);
                    }

                    Rect bounds = new Rect();
                    indicator.getGlobalVisibleRect(bounds);
                    launcherApps.startShortcut(pkg, shortcutId, bounds, optsBundle, Process.myUserHandle());
                    return true;
                } catch (Throwable t) {
                    Log.e(TAG, "startShortcut error: " + t.getMessage(), t);
                }
            }
        }

        // App thông thường:
        if (sp != null) {
            String pkg = sp.getString("wk_search_package", "");
            if (!TextUtils.isEmpty(pkg)) {
                setLastLaunchedPackage(pkg);
            }
        }
        try {
            if (sStartActivitySafelyMethod == null) {
                sStartActivitySafelyMethod = launcherObj.getClass().getMethod("startActivitySafely", View.class, Intent.class, Class.forName("com.android.launcher3.model.data.ItemInfo"));
                sStartActivitySafelyMethod.setAccessible(true);
            }
            Object res = sStartActivitySafelyMethod.invoke(launcherObj, indicator, intent, itemInfo);
            return res instanceof Boolean ? (Boolean) res : true;
        } catch (Throwable t) {
            Log.e(TAG, "startActivitySafely error: " + t.getMessage(), t);
            if (intent != null) {
                try {
                    context.startActivity(intent);
                    return true;
                } catch (Throwable ignored) {}
            }
        }
        return false;
    }

    // Phương thức hỗ trợ cho cử chỉ vuốt xuống màn hình chính (WorkspacePullDownDetectController)
    public static boolean startSelectedShortcut(Context context, String key, Rect sourceBounds, Bundle optsBundle) {
        if (context == null || TextUtils.isEmpty(key)) return false;
        try {
            SharedPreferences sp = getPrefs(context);
            if (sp == null) return false;
            String targetType = sp.getString(key + SUFFIX_TARGET_TYPE, "");
            if (!TARGET_TYPE_SHORTCUT.equals(targetType)) return false;

            String pkg = sp.getString(key, "");
            String shortcutId = sp.getString(key + SUFFIX_SHORTCUT_ID, "");
            if (TextUtils.isEmpty(pkg) || TextUtils.isEmpty(shortcutId)) return false;

            LauncherApps launcherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (launcherApps == null) return false;

            launcherApps.startShortcut(pkg, shortcutId, sourceBounds, optsBundle, Process.myUserHandle());
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "startShortcut error: " + t.getMessage(), t);
            return false;
        }
    }

    public static boolean startSelectedShortcut(Context context, String key) {
        return startSelectedShortcut(context, key, null, null);
    }

    public static boolean startSelectedTarget(Context context, String key, Rect sourceBounds, Bundle optsBundle) {
        if (context == null || TextUtils.isEmpty(key)) return false;
        try {
            SharedPreferences sp = getPrefs(context);
            if (sp == null) return false;
            String targetType = sp.getString(key + SUFFIX_TARGET_TYPE, "");
            if (TARGET_TYPE_SHORTCUT.equals(targetType)) {
                return startSelectedShortcut(context, key, sourceBounds, optsBundle);
            }

            String pkg = sp.getString(key, "");
            if (TextUtils.isEmpty(pkg)) return false;

            Intent intent = context.getPackageManager().getLaunchIntentForPackage(pkg);
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                if (sourceBounds != null) {
                    intent.setSourceBounds(sourceBounds);
                }
                context.startActivity(intent, optsBundle);
                return true;
            }
        } catch (Throwable t) {
            Log.e(TAG, "startSelectedTarget error: " + t.getMessage(), t);
        }
        return false;
    }

    public static boolean startSelectedTarget(Context context, String key) {
        return startSelectedTarget(context, key, null, null);
    }
}
