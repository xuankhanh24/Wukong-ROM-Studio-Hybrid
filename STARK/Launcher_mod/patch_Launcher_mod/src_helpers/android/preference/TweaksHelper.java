package android.preference;

import android.content.Context;
import android.content.ComponentCallbacks;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.util.Log;
import java.lang.reflect.Method;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

/** Cached feature flags; expensive hardware discovery runs on configuration events. */
public final class TweaksHelper {
    private static final String TAG = "TweaksHelper";
    private static final String PREF_NAME = "com.android.launcher_preferences";

    private static volatile Context sAppContext;
    private static volatile Context sContext;
    private static volatile SharedPreferences sPrefs;
    private static volatile boolean sInitialized = false;
    private static volatile boolean sLifecycleInitialized;

    // Preference listeners update volatile values; render getters only read them.
    public static volatile boolean sWkTablet = false;
    public static volatile boolean sWkGoogleFeed = false;
    private static volatile boolean sQuickSearchAvailable;
    public static volatile boolean sWkDockBlur = false;
    public static volatile boolean sWkTaskbarExpand = false;
    public static volatile int sWkTaskbarExpandCount = 5;
    public static volatile boolean sLauncherBreenoEntry = true;
    public static volatile String sWkSearchPackage = "";
    public static volatile String sWkSlideDownPackage = "";
    public static volatile String sWkSlideDownPackageLeft = "";
    public static volatile String sWkSlideDownPackageRight = "";

    // Manual override state for landscape
    public static volatile boolean sIsLandscape = false;

    private static final SharedPreferences.OnSharedPreferenceChangeListener sListener =
        new SharedPreferences.OnSharedPreferenceChangeListener() {
            @Override
            public void onSharedPreferenceChanged(SharedPreferences sp, String key) {
                if (key == null) return;
                try {
                    reloadKey(sp, key);
                } catch (Throwable th) {
                    Log.e(TAG, "Error reloading key: " + key, th);
                }
            }
        };

    public TweaksHelper() {}

    public static synchronized void ensureInitialized() {
        if (sInitialized && sPrefs != null) return;
        try {
            Context ctx = getCon();
            if (ctx != null) {
                sPrefs = ctx.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
                if (sPrefs != null) {
                    sPrefs.registerOnSharedPreferenceChangeListener(sListener);
                    reloadAll(sPrefs);
                    refreshDeviceState(ctx);
                    ctx.registerComponentCallbacks(sConfigurationCallback);
                    sInitialized = true;
                }
            }
        } catch (Throwable th) {
            Log.e(TAG, "Initialization failed", th);
        }
    }

    public static synchronized void initialize(Context context) {
        if (sLifecycleInitialized || context == null) return;
        Context application = context.getApplicationContext();
        if (application == null) application = context;
        sAppContext = application;
        sContext = application.createDeviceProtectedStorageContext();
        if (sContext == null) sContext = application;
        try {
            application.registerComponentCallbacks(sConfigurationCallback);
        } catch (Throwable ignored) {}
        try {
            sQuickSearchAvailable = BuildFeatures.QUICK_SEARCH && application.getPackageManager()
                    .getApplicationInfo("com.google.android.googlequicksearchbox", 0).enabled;
        } catch (android.content.pm.PackageManager.NameNotFoundException ignored) {
            sQuickSearchAvailable = false;
        }
        ensureInitialized();
        if (sInitialized) {
            refreshDeviceState(sAppContext);
            sLifecycleInitialized = true;
        }
    }

    private static void reloadAll(SharedPreferences sp) {
        sWkTablet = BuildFeatures.RECENTS && sp.getBoolean("wk_tablet", false);
        sWkGoogleFeed = BuildFeatures.FEED && sp.getBoolean("wk_gg", false);
        sWkDockBlur = BuildFeatures.DOCK && sp.getBoolean("wk_dock", false);
        sWkTaskbarExpand = BuildFeatures.TASKBAR && sp.getBoolean("wk_thanh", false);
        int count = sp.getInt("wk_taskbar_expand_count", 5);
        if (count < 1) count = 1;
        if (count > 6) count = 6;
        sWkTaskbarExpandCount = count;
        sLauncherBreenoEntry = BuildFeatures.SEARCH && sp.getBoolean("launcher_breeno_entry_enable", true);
        sWkSearchPackage = BuildFeatures.SEARCH ? sp.getString("wk_search_package", "") : "";
        sWkSlideDownPackage = BuildFeatures.GESTURES ? sp.getString("wk_slide_down_package", "") : "";
        sWkSlideDownPackageLeft = BuildFeatures.GESTURES ? sp.getString("wk_slide_down_package_left", "") : "";
        sWkSlideDownPackageRight = BuildFeatures.GESTURES ? sp.getString("wk_slide_down_package_right", "") : "";
    }

    private static void reloadKey(SharedPreferences sp, String key) {
        switch (key) {
            case "wk_tablet":
                sWkTablet = BuildFeatures.RECENTS && sp.getBoolean("wk_tablet", false);
                break;
            case "wk_gg":
                sWkGoogleFeed = BuildFeatures.FEED && sp.getBoolean("wk_gg", false);
                break;
            case "wk_dock":
                sWkDockBlur = BuildFeatures.DOCK && sp.getBoolean("wk_dock", false);
                break;
            case "wk_thanh":
                sWkTaskbarExpand = BuildFeatures.TASKBAR && sp.getBoolean("wk_thanh", false);
                break;
            case "wk_taskbar_expand_count":
                int count = sp.getInt("wk_taskbar_expand_count", 5);
                if (count < 1) count = 1;
                if (count > 6) count = 6;
                sWkTaskbarExpandCount = count;
                break;
            case "launcher_breeno_entry_enable":
                sLauncherBreenoEntry = BuildFeatures.SEARCH && sp.getBoolean("launcher_breeno_entry_enable", true);
                break;
            case "wk_search_package":
                sWkSearchPackage = BuildFeatures.SEARCH ? sp.getString("wk_search_package", "") : "";
                break;
            case "wk_slide_down_package":
                sWkSlideDownPackage = BuildFeatures.GESTURES ? sp.getString("wk_slide_down_package", "") : "";
                break;
            case "wk_slide_down_package_left":
                sWkSlideDownPackageLeft = BuildFeatures.GESTURES ? sp.getString("wk_slide_down_package_left", "") : "";
                break;
            case "wk_slide_down_package_right":
                sWkSlideDownPackageRight = BuildFeatures.GESTURES ? sp.getString("wk_slide_down_package_right", "") : "";
                break;
        }
    }

    public static Context getCon() {
        if (sContext != null) return sContext;
        try {
            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Method mApp = atCls.getMethod("currentApplication");
            Context app = (Context) mApp.invoke(null);
            if (app != null) {
                sAppContext = app;
                sContext = app;
                try {
                    Context dps = app.createDeviceProtectedStorageContext();
                    if (dps != null) sContext = dps;
                } catch (Throwable ignored) {}
                try {
                    app.registerComponentCallbacks(sConfigurationCallback);
                } catch (Throwable ignored) {}
                return sContext;
            }
        } catch (Throwable ignored) {}

        try {
            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Method mThread = atCls.getMethod("currentActivityThread");
            Object at = mThread.invoke(null);
            if (at != null) {
                Method mSys = atCls.getMethod("getSystemContext");
                Context sys = (Context) mSys.invoke(at);
                if (sys != null) {
                    Context pkg = sys.createPackageContext("com.android.launcher", 0);
                    if (pkg != null) {
                        try {
                            Context dps = pkg.createDeviceProtectedStorageContext();
                            if (dps != null) pkg = dps;
                        } catch (Throwable ignored) {}
                        sContext = pkg;
                        return sContext;
                    }
                }
            }
        } catch (Throwable ignored) {}
        return null;
    }

    public static SharedPreferences getPrefs() {
        if (sPrefs == null) {
            ensureInitialized();
        }
        return sPrefs;
    }

    // ==========================================
    // 1. SMART RECENTS GRID & TABLET CONTROLLER
    // ==========================================

    private static volatile boolean sReflectionInited = false;
    private static Method sMethodFoldExpanded = null;
    private static Boolean sIsHardwareTablet = null;
    private static Method sScreenProfileLandscape;
    private static Method sScreenLandscape;

    // Cache missing members too: an absent OEM API must not throw every frame.
    private static final class OrientationAccess {
        final Method config, landscape, recentsLandscape;
        final Field landscapeField, legacyLandscapeField;
        OrientationAccess(Class<?> type) {
            config = method(type, "config");
            landscape = method(type, "isLandscape");
            recentsLandscape = method(type, "isLandScape");
            landscapeField = field(type, "isLandscape");
            legacyLandscapeField = field(type, "p");
        }
    }

    private static final ConcurrentHashMap<Class<?>, OrientationAccess> sOrientationAccess =
            new ConcurrentHashMap<>();

    private static Method method(Class<?> type, String name, Class<?>... parameters) {
        try { return type.getMethod(name, parameters); }
        catch (ReflectiveOperationException | SecurityException ignored) { return null; }
    }

    private static Field field(Class<?> type, String name) {
        try { return type.getField(name); }
        catch (ReflectiveOperationException | SecurityException ignored) { return null; }
    }

    private static OrientationAccess orientationAccess(Object value) {
        Class<?> type = value.getClass();
        OrientationAccess access = sOrientationAccess.get(type);
        if (access == null) {
            OrientationAccess candidate = new OrientationAccess(type);
            access = sOrientationAccess.putIfAbsent(type, candidate);
            if (access == null) access = candidate;
        }
        return access;
    }

    private static Object invoke(Method method, Object receiver, Object... arguments) {
        if (method == null) return null;
        try { return method.invoke(receiver, arguments); }
        catch (ReflectiveOperationException | RuntimeException ignored) { return null; }
    }

    private static boolean booleanField(Field field, Object receiver) {
        if (field == null) return false;
        try { return Boolean.TRUE.equals(field.get(receiver)); }
        catch (IllegalAccessException | RuntimeException ignored) { return false; }
    }

    private static void ensureReflectionInited() {
        if (sReflectionInited) return;
        synchronized (TweaksHelper.class) {
            if (sReflectionInited) return;
            try {
                Class<?> su = Class.forName("com.android.common.util.ScreenUtils");
                try { sMethodFoldExpanded = su.getMethod("isFoldScreenExpanded"); } catch (Throwable ignored) {}
                sScreenLandscape = method(su, "isDeviceInLandscape");
                try {
                    sScreenProfileLandscape = method(su, "isDeviceProfileInLandscape",
                            Class.forName("com.android.launcher3.DeviceProfile"));
                } catch (ClassNotFoundException ignored) { }
            } catch (Throwable ignored) {}

            try {
                Class<?> afu = Class.forName("com.android.common.util.AppFeatureUtils");
                Method mTab = afu.getMethod("isTablet");
                Object res = mTab.invoke(null);
                if (res instanceof Boolean) {
                    sIsHardwareTablet = (Boolean) res;
                }
            } catch (Throwable ignored) {}
            if (sIsHardwareTablet == null) {
                sIsHardwareTablet = Boolean.FALSE;
            }
            sReflectionInited = true;
        }
    }

    private static volatile boolean sStockTabletOrFold;
    private static volatile boolean sConfigurationLandscape;
    private static final ComponentCallbacks sConfigurationCallback = new ComponentCallbacks() {
        @Override public void onConfigurationChanged(Configuration configuration) {
            Context context = sAppContext != null ? sAppContext : sContext;
            if (context != null) refreshDeviceState(context);
        }
        @Override public void onLowMemory() { }
    };

    static { ensureInitialized(); }

    private static void refreshDeviceState(Context context) {
        ensureReflectionInited();
        boolean foldedOpen = false;
        if (sMethodFoldExpanded != null) {
            try { foldedOpen = Boolean.TRUE.equals(sMethodFoldExpanded.invoke(null)); }
            catch (ReflectiveOperationException ignored) { }
        }
        sStockTabletOrFold = Boolean.TRUE.equals(sIsHardwareTablet) || foldedOpen;
        boolean isLand = false;
        if (context != null && context.getResources() != null) {
            Configuration cfg = context.getResources().getConfiguration();
            if (cfg != null) {
                isLand = (cfg.orientation == Configuration.ORIENTATION_LANDSCAPE);
            }
        }
        sConfigurationLandscape = isLand;
        if (!isLand) {
            sIsLandscape = false;
        }
    }

    public static boolean isDeviceInLandscape(Object deviceProfile) {
        if (sIsLandscape || sConfigurationLandscape) {
            return true;
        }
        if (deviceProfile != null) {
            Object config = invoke(orientationAccess(deviceProfile).config, deviceProfile);
            if (config != null) {
                OrientationAccess access = orientationAccess(config);
                if (Boolean.TRUE.equals(invoke(access.landscape, config))
                        || booleanField(access.landscapeField, config)
                        || booleanField(access.legacyLandscapeField, config)) return true;
            }
        }
        ensureReflectionInited();
        if ((deviceProfile != null && Boolean.TRUE.equals(invoke(sScreenProfileLandscape, null, deviceProfile)))
                || Boolean.TRUE.equals(invoke(sScreenLandscape, null))) return true;
        Context ctx = sAppContext != null ? sAppContext : getCon();
        if (ctx != null && ctx.getResources() != null) {
            Configuration cfg = ctx.getResources().getConfiguration();
            if (cfg != null && cfg.orientation == Configuration.ORIENTATION_LANDSCAPE) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDeviceInLandscape() {
        return isDeviceInLandscape(null);
    }

    public static boolean shouldForceGridRecents(Object deviceProfile) {
        if (!sWkTablet) return false;
        return !isDeviceInLandscape(deviceProfile);
    }

    public static boolean shouldForceGridRecents() {
        return shouldForceGridRecents(null);
    }

    public static boolean shouldShowAsGrid(Object recentsView) {
        if (!sWkTablet) return false;
        if (recentsView != null) {
            Object result = invoke(orientationAccess(recentsView).recentsLandscape, recentsView);
            if (result instanceof Boolean) {
                boolean isLand = ((Boolean) result).booleanValue();
                sIsLandscape = isLand;
                if (isLand) return false;
            }
        }
        return !isDeviceInLandscape(null);
    }

    public static boolean isGridRecentsEnabled() {
        return shouldForceGridRecents() || sStockTabletOrFold;
    }

    public static boolean isStockTabletOrFold() {
        return sStockTabletOrFold;
    }

    public static boolean isCurrentDeviceInLandscape() {
        return isDeviceInLandscape();
    }

    public static void setLandscapeState(boolean isLandscape) {
        sIsLandscape = isLandscape;
    }

    public static void resetLandscapeState() {
        sIsLandscape = false;
    }

    // ==========================================
    // 2. FEATURE HOOK BRIDGES
    // ==========================================

    public static boolean isWkTabletEnabled() {
        return sWkTablet;
    }

    public static boolean isWkGoogleFeedEnabled() {
        return sWkGoogleFeed;
    }

    public static boolean isQuickSearchBoxAvailable() {
        return sQuickSearchAvailable;
    }

    public static boolean isGoogleFeedEnabled(boolean original) {
        return sWkGoogleFeed;
    }

    public static boolean isWkDockBlurEnabled() {
        return sWkDockBlur;
    }

    public static boolean isWkTaskbarExpandEnabled() {
        return sWkTaskbarExpand;
    }

    public static boolean isTaskbarLayoutEnabled() {
        return sWkTaskbarExpand || Boolean.TRUE.equals(sIsHardwareTablet);
    }

    public static boolean isDockBlurAllowed(boolean stock) {
        return stock || sWkDockBlur;
    }

    public static int getWkTaskbarExpandCount() {
        return sWkTaskbarExpandCount;
    }

    public static int getExpandItemMaxCount(int originalCount) {
        if (sWkTaskbarExpand) {
            return sWkTaskbarExpandCount;
        }
        return originalCount;
    }

    public static boolean isBreenoEntryEnabled(boolean original) {
        return sLauncherBreenoEntry;
    }

    public static boolean isLauncherBreenoEntryEnabled() {
        return sLauncherBreenoEntry;
    }

    public static String getWkSearchPackage() {
        return sWkSearchPackage;
    }

    public static String getWkSlideDownPackage() {
        return sWkSlideDownPackage;
    }

    public static String getWkSlideDownPackageLeft() {
        return sWkSlideDownPackageLeft;
    }

    public static String getWkSlideDownPackageRight() {
        return sWkSlideDownPackageRight;
    }

    // Legacy compatibility methods
    public static boolean getBoolofSettings(String key) {
        return getBoolofSettings(key, 0);
    }

    public static boolean getBoolofSettings(String key, int defVal) {
        SharedPreferences sp = getPrefs();
        if (sp != null) {
            return sp.getBoolean(key, defVal != 0);
        }
        return defVal != 0;
    }

    public static int getIntofSettings(String key, int defVal) {
        SharedPreferences sp = getPrefs();
        if (sp != null) {
            return sp.getInt(key, defVal);
        }
        return defVal;
    }

    public static String getStringofSettings(String key) {
        return getStringofSettings(key, "");
    }

    public static String getStringofSettings(String key, String defVal) {
        SharedPreferences sp = getPrefs();
        if (sp != null) {
            return sp.getString(key, defVal);
        }
        return defVal;
    }
}
