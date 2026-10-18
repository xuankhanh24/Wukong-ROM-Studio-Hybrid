package com.android.launcher.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/**
 * Helper đồng bộ và hiển thị icon, tên nhãn tùy chỉnh trên thanh tìm kiếm dưới cùng
 */
public final class SearchPackageIndicatorHelper {
    private static final String TAG = "SearchIndicatorHelper";
    public static final String KEY_PACKAGE = "wk_search_package";
    public static final String SUFFIX_SHORTCUT_ID = "_shortcut_id";
    public static final String SUFFIX_SHORTCUT_LABEL = "_shortcut_label";
    public static final String SUFFIX_TARGET_TYPE = "_target_type";
    public static final String TARGET_TYPE_SHORTCUT = "shortcut";

    private static WeakReference<Object> sActiveIndicator;
    private static volatile boolean sCustomApplied = false;
    private static volatile boolean sIsRestoring = false;
    private static volatile Visual sVisual;
    private static boolean sPackageReceiverRegistered;

    private static final class Visual {
        final String key;
        final String label;
        final Drawable icon;
        Visual(String key, String label, Drawable icon) {
            this.key = key; this.label = label; this.icon = icon;
        }
    }

    private SearchPackageIndicatorHelper() {}

    private static SharedPreferences getPrefs(Context context) {
        if (context == null) return null;
        try {
            Context dps = context.createDeviceProtectedStorageContext();
            if (dps != null) {
                SharedPreferences spDe = PreferenceManager.getDefaultSharedPreferences(dps);
                if (spDe != null && spDe.contains(KEY_PACKAGE)) {
                    return spDe;
                }
            }
        } catch (Throwable ignored) {}
        try {
            SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
            if (sp != null && sp.contains(KEY_PACKAGE)) {
                return sp;
            }
            return sp;
        } catch (Throwable ignored) {}
        return null;
    }

    public static boolean isCustomActive(Object indicator) {
        try {
            Context context = indicator != null ? (Context) getField(indicator, "mLauncher") : null;
            if (context == null && indicator instanceof View) {
                context = ((View) indicator).getContext();
            }
            if (context == null) return false;
            SharedPreferences sp = getPrefs(context);
            if (sp == null) return false;
            return !TextUtils.isEmpty(sp.getString(KEY_PACKAGE, ""));
        } catch (Throwable ignored) {
            return false;
        }
    }

    /**
     * Chặn việc tô màu đơn sắc (tint trắng/đen) lên icon ứng dụng / shortcut có màu sắc thực tế
     */
    public static void tintIndicatorIcon(Object indicator, Drawable drawable, int tintColor) {
        if (drawable == null) return;
        if (isCustomActive(indicator)) {
            try {
                drawable.setTintList(null);
                drawable.setColorFilter(null);
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).setTintMode(PorterDuff.Mode.DST);
                }
            } catch (Throwable ignored) {}
            return;
        }
        try {
            drawable.setTint(tintColor);
        } catch (Throwable ignored) {}
    }

    public static Object findIndicator() {
        if (sActiveIndicator != null) {
            Object obj = sActiveIndicator.get();
            if (obj != null) return obj;
        }
        try {
            Class<?> cRunner = Class.forName("com.android.launcher3.search.BreenoIndicatorAnimationRunner");
            Method mGetPI = cRunner.getMethod("getPageIndicator");
            Object pi = mGetPI.invoke(null);
            if (pi != null) {
                sActiveIndicator = new WeakReference<>(pi);
                return pi;
            }
        } catch (Throwable ignored) {}

        try {
            Class<?> cAppState = Class.forName("com.android.launcher3.LauncherAppState");
            Method mGetNoCreate = cAppState.getMethod("getInstanceNoCreate");
            Object appState = mGetNoCreate.invoke(null);
            if (appState != null) {
                Method mGetModel = appState.getClass().getMethod("getModel");
                Object model = mGetModel.invoke(appState);
                if (model != null) {
                    Method mGetLauncher = model.getClass().getMethod("getLauncher");
                    android.app.Activity launcher = (android.app.Activity) mGetLauncher.invoke(model);
                    if (launcher != null) {
                        try {
                            Method mGetWs = launcher.getClass().getMethod("getWorkspace");
                            Object ws = mGetWs.invoke(launcher);
                            if (ws != null) {
                                Method mGetPI = ws.getClass().getMethod("getPageIndicator");
                                Object pi = mGetPI.invoke(ws);
                                if (pi != null) {
                                    sActiveIndicator = new WeakReference<>(pi);
                                    return pi;
                                }
                            }
                        } catch (Throwable ignored) {}

                        try {
                            Field fWs = findField(launcher.getClass(), "mWorkspace");
                            Object ws = fWs.get(launcher);
                            if (ws != null) {
                                Method mGetPI = ws.getClass().getMethod("getPageIndicator");
                                Object pi = mGetPI.invoke(ws);
                                if (pi != null) {
                                    sActiveIndicator = new WeakReference<>(pi);
                                    return pi;
                                }
                            }
                        } catch (Throwable ignored) {}
                    }
                }
            }
        } catch (Throwable ignored) {}
        return null;
    }

    public static void reload() {
        sVisual = null;
        final Object obj = findIndicator();
        if (obj != null) {
            if (obj instanceof View) {
                ((View) obj).post(new Runnable() {
                    @Override
                    public void run() {
                        apply(obj);
                        ((View) obj).requestLayout();
                        ((View) obj).invalidate();
                    }
                });
            } else {
                apply(obj);
            }
        }
    }

    public static void apply(Object obj) {
        if (obj == null) return;
        sActiveIndicator = new WeakReference<>(obj);
        try {
            Context context = (Context) getField(obj, "mLauncher");
            if (context == null && obj instanceof View) {
                context = ((View) obj).getContext();
            }
            if (context == null) return;

            SharedPreferences sp = getPrefs(context);
            if (sp == null) return;

            String pkg = sp.getString(KEY_PACKAGE, "");
            if (TextUtils.isEmpty(pkg)) {
                // Nếu trước đó đang áp dụng custom target và người dùng đặt lại về mặc định:
                // Khôi phục tài nguyên stock một lần duy nhất với re-entry guard tránh lặp vô hạn.
                if (sCustomApplied && !sIsRestoring) {
                    sCustomApplied = false;
                    sVisual = null;
                    try {
                        sIsRestoring = true;
                        SearchPackageLaunchHelper.clearLastLaunchedPackage();
                        Method m = obj.getClass().getDeclaredMethod("initIndicatorResource");
                        m.setAccessible(true);
                        m.invoke(obj);
                        if (obj instanceof View) {
                            ((View) obj).requestLayout();
                            ((View) obj).invalidate();
                        }
                    } catch (Throwable ignored) {
                    } finally {
                        sIsRestoring = false;
                    }
                }
                return;
            }

            sCustomApplied = true;
            if (!sPackageReceiverRegistered) {
                android.content.IntentFilter filter = new android.content.IntentFilter();
                filter.addAction(android.content.Intent.ACTION_PACKAGE_CHANGED);
                filter.addAction(android.content.Intent.ACTION_PACKAGE_REPLACED);
                filter.addAction(android.content.Intent.ACTION_PACKAGE_REMOVED);
                filter.addDataScheme("package");
                context.getApplicationContext().registerReceiver(new android.content.BroadcastReceiver() {
                    @Override public void onReceive(Context context, android.content.Intent intent) { reload(); }
                }, filter, Context.RECEIVER_NOT_EXPORTED);
                sPackageReceiverRegistered = true;
            }

            int iconSize = getIntField(obj, "mIndicatorIconSize", 48);
            String type = sp.getString(KEY_PACKAGE + SUFFIX_TARGET_TYPE, "");
            String shortcutId = sp.getString(KEY_PACKAGE + SUFFIX_SHORTCUT_ID, "");
            String selectedLabel = sp.getString(KEY_PACKAGE + SUFFIX_SHORTCUT_LABEL, "");
            android.content.res.Configuration config = context.getResources().getConfiguration();
            String visualKey = pkg + "\n" + type + "\n" + shortcutId + "\n" + selectedLabel
                    + "\n" + iconSize + ":" + config.densityDpi + ":" + config.uiMode + ":" + config.getLocales().toLanguageTags();
            Visual cached = sVisual;
            String label;
            Drawable icon;
            if (cached != null && visualKey.equals(cached.key)) {
                label = cached.label;
                icon = cached.icon;
            } else {
                label = null;
                icon = null;

                if (TARGET_TYPE_SHORTCUT.equals(sp.getString(KEY_PACKAGE + SUFFIX_TARGET_TYPE, ""))) {
                    label = sp.getString(KEY_PACKAGE + SUFFIX_SHORTCUT_LABEL, "");
                    icon = loadShortcutIcon(context, pkg, shortcutId);
                }

                PackageManager pm = context.getPackageManager();
                if (TextUtils.isEmpty(label) || icon == null) {
                    try {
                        ApplicationInfo appInfo = pm.getApplicationInfo(pkg, 0);
                        if (TextUtils.isEmpty(label)) {
                            CharSequence cs = pm.getApplicationLabel(appInfo);
                            if (cs != null) label = cs.toString();
                        }
                        if (icon == null) {
                            icon = pm.getApplicationIcon(appInfo);
                        }
                    } catch (Throwable ignored) {}
                }

                if (icon != null) icon = makeSizedDrawable(context, icon, iconSize);
                // Failed resolution is retried next time (package may be installing).
                if (icon != null && !TextUtils.isEmpty(label)) sVisual = new Visual(visualKey, label, icon);
            }

            if (!TextUtils.isEmpty(label)) {
                setField(obj, "mIndicatorText", label);
                try {
                    android.text.TextPaint paint = (android.text.TextPaint) getField(obj, "mIndicatorTextPaint");
                    if (paint != null) {
                        float width = paint.measureText(label);
                        setField(obj, "mIndicatorTextWidth", width);
                    }
                } catch (Throwable ignored) {}
            }

            if (icon != null) setField(obj, "mIndicatorIcon", icon);

            if (obj instanceof View) {
                ((View) obj).requestLayout();
                ((View) obj).invalidate();
            }
        } catch (Throwable th) {
            Log.e(TAG, "apply error: " + th.getMessage(), th);
        }
    }

    private static Drawable loadShortcutIcon(Context context, String pkg, String shortcutId) {
        if (TextUtils.isEmpty(pkg) || TextUtils.isEmpty(shortcutId)) return null;
        Object ss = context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
        if (!(ss instanceof LauncherApps)) return null;
        try {
            LauncherApps la = (LauncherApps) ss;
            int density = context.getResources().getDisplayMetrics().densityDpi;
            
            LauncherApps.ShortcutQuery sq = new LauncherApps.ShortcutQuery();
            sq.setPackage(pkg);
            sq.setShortcutIds(Collections.singletonList(shortcutId));
            sq.setQueryFlags(0x1b); // 1 | 2 | 8 | 16
            List<ShortcutInfo> list = la.getShortcuts(sq, Process.myUserHandle());

            if (list == null || list.isEmpty()) {
                sq = new LauncherApps.ShortcutQuery();
                sq.setPackage(pkg);
                sq.setQueryFlags(0x1b);
                list = la.getShortcuts(sq, Process.myUserHandle());
            }

            if (list != null) {
                for (ShortcutInfo si : list) {
                    if (si != null && shortcutId.equals(si.getId())) {
                        if (!si.isEnabled()) continue;
                        Drawable d = null;
                        try {
                            d = la.getShortcutIconDrawable(si, density);
                        } catch (Throwable ignored) {}
                        if (d == null) {
                            try {
                                d = la.getShortcutBadgedIconDrawable(si, density);
                            } catch (Throwable ignored) {}
                        }
                        if (d != null) return d;
                    }
                }
            }
        } catch (Throwable th) {
            Log.w(TAG, "loadShortcutIcon error: " + th.getMessage());
        }
        return null;
    }

    private static Drawable makeSizedDrawable(Context context, Drawable drawable, int size) {
        if (drawable == null) return null;
        int s = Math.max(1, size);
        Bitmap bitmap = Bitmap.createBitmap(s, s, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);

        int w = drawable.getIntrinsicWidth();
        int h = drawable.getIntrinsicHeight();
        if (w <= 0 || h <= 0) {
            w = s;
            h = s;
        }
        float scale = Math.min((float) s / w, (float) s / h);
        int targetW = Math.max(1, Math.round(w * scale));
        int targetH = Math.max(1, Math.round(h * scale));
        int left = (s - targetW) / 2;
        int top = (s - targetH) / 2;

        Rect origBounds = new Rect(drawable.getBounds());
        drawable.setBounds(left, top, left + targetW, top + targetH);
        drawable.draw(canvas);
        drawable.setBounds(origBounds);

        BitmapDrawable bd = new BitmapDrawable(context.getResources(), bitmap);
        bd.setFilterBitmap(true);
        bd.setAntiAlias(true);
        bd.setTintMode(PorterDuff.Mode.DST);
        return bd;
    }

    private static int getIntField(Object obj, String str, int def) {
        try {
            return findField(obj.getClass(), str).getInt(obj);
        } catch (Throwable th) {
            return def;
        }
    }

    private static Object getField(Object obj, String str) throws IllegalAccessException, NoSuchFieldException {
        return findField(obj.getClass(), str).get(obj);
    }

    private static void setField(Object obj, String str, Object val) throws IllegalAccessException, NoSuchFieldException {
        findField(obj.getClass(), str).set(obj, val);
    }

    private static Field findField(Class<?> cls, String str) throws NoSuchFieldException {
        while (cls != null) {
            try {
                Field f = cls.getDeclaredField(str);
                f.setAccessible(true);
                return f;
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException(str);
    }
}
