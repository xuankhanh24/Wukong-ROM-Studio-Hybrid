package android.preference;

import android.content.Context;
import android.content.ComponentCallbacks;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.util.Log;
import java.lang.reflect.Method;

/** Cached feature flags; expensive hardware discovery runs on configuration events. */
public final class TweaksHelper {
    private static final String TAG = "TweaksHelper";
    private static final String PREF_NAME = "com.android.launcher_preferences";

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
        if (application == null) return;
        sContext = application.createDeviceProtectedStorageContext();
        try {
            sQuickSearchAvailable = BuildFeatures.QUICK_SEARCH && application.getPackageManager()
                    .getApplicationInfo("com.google.android.googlequicksearchbox", 0).enabled;
        } catch (android.content.pm.PackageManager.NameNotFoundException ignored) {
            sQuickSearchAvailable = false;
        }
        ensureInitialized();
        if (sInitialized) {
            refreshDeviceState(sContext);
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
            sContext = (Context) mApp.invoke(null);
            if (sContext != null) {
                try {
                    Context dps = sContext.createDeviceProtectedStorageContext();
                    if (dps != null) sContext = dps;
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

    private static void ensureReflectionInited() {
        if (sReflectionInited) return;
        synchronized (TweaksHelper.class) {
            if (sReflectionInited) return;
            try {
                Class<?> su = Class.forName("com.android.common.util.ScreenUtils");
                try { sMethodFoldExpanded = su.getMethod("isFoldScreenExpanded"); } catch (Throwable ignored) {}
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
            Context context = sContext;
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
        sConfigurationLandscape = context.getResources().getConfiguration().orientation
                == Configuration.ORIENTATION_LANDSCAPE;
    }

    public static boolean shouldForceGridRecents() {
        return sWkTablet && !sIsLandscape && !sConfigurationLandscape;
    }

    public static boolean isGridRecentsEnabled() {
        return shouldForceGridRecents() || sStockTabletOrFold;
    }

    public static boolean isStockTabletOrFold() {
        return sStockTabletOrFold;
    }

    public static boolean isCurrentDeviceInLandscape() {
        return sIsLandscape || sConfigurationLandscape;
    }

    public static void setLandscapeState(boolean isLandscape) {
        sIsLandscape = isLandscape;
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
        return sWkGoogleFeed ? true : original;
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
