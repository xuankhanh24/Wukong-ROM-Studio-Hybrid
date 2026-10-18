.class public final Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
.super Ljava/lang/Object;
.source "TaskbarSettingsConfig.kt"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 Y2\u00020\u0001:\u0001YB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0013\u0010\rJ\r\u0010\u0014\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u0015\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\r\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001a\u0010\u0008J\u0015\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\rJ\u0015\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u0015\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001d\u0010\u0018J\r\u0010\u001e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010\u0008J\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001f\u0010\rJ\r\u0010 \u001a\u00020\u0006\u00a2\u0006\u0004\u0008 \u0010\u0008J\u0015\u0010!\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008!\u0010\rJ\u0015\u0010\"\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\"\u0010\rJ\u0015\u0010#\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008#\u0010\u0018J\u0015\u0010$\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008$\u0010\u0018J\r\u0010%\u001a\u00020\u0006\u00a2\u0006\u0004\u0008%\u0010\u0008J\u0015\u0010&\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008&\u0010\rJ\u0015\u0010\'\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\'\u0010\u0018J\u0015\u0010(\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008(\u0010\u0018J\r\u0010)\u001a\u00020\u0006\u00a2\u0006\u0004\u0008)\u0010\u0008J\u0015\u0010*\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008*\u0010\rJ\u0015\u0010+\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008+\u0010\u0018J\u0015\u0010,\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008,\u0010\u0018J\r\u0010-\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u0010\u0008J\u0015\u0010.\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008.\u0010\rJ\u0015\u0010/\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008/\u0010\u0018J\u0015\u00100\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u00080\u0010\u0018J\u0015\u00101\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u00081\u0010\u0018J\u0015\u00102\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u00082\u0010\u0018J\u0015\u00103\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u00083\u0010\u0018J\u0015\u00104\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u00084\u0010\u0018J\r\u00105\u001a\u00020\u0006\u00a2\u0006\u0004\u00085\u0010\u0008J\u0015\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u000206\u00a2\u0006\u0004\u00088\u00109J\u0015\u0010:\u001a\u00020\u000b2\u0006\u00107\u001a\u000206\u00a2\u0006\u0004\u0008:\u00109J\u0015\u0010<\u001a\u00020\u000b2\u0006\u0010;\u001a\u000206\u00a2\u0006\u0004\u0008<\u00109J\u0015\u0010=\u001a\u00020\u000b2\u0006\u0010;\u001a\u000206\u00a2\u0006\u0004\u0008=\u00109J\u0015\u0010?\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u0006\u00a2\u0006\u0004\u0008?\u0010\rJ#\u0010D\u001a\u00020\u000b2\u0008\u0010A\u001a\u0004\u0018\u00010@2\u0008\u0010C\u001a\u0004\u0018\u00010BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u001f\u0010G\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020@2\u0006\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u0019\u0010J\u001a\u0004\u0018\u00010I2\u0006\u0010F\u001a\u00020@H\u0002\u00a2\u0006\u0004\u0008J\u0010KR\u001c\u0010M\u001a\n L*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001c\u0010P\u001a\n L*\u0004\u0018\u00010O0O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u001c\u0010S\u001a\n L*\u0004\u0018\u00010R0R8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010U\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010W\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010VR\u0016\u0010X\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010V\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;",
        "Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "isSupportTaskbarDebug",
        "()Z",
        "isTaskbarSettingEnable",
        "enable",
        "Lm9/n;",
        "setTaskbarSettingEnable",
        "(Z)V",
        "resetTaskbarSettings",
        "()V",
        "backupTaskbarSettingEnable",
        "force",
        "(ZZ)V",
        "setTaskbarSettingEnableForBackupRestore",
        "restoreTaskbarSettingEnable",
        "Lcom/android/launcher3/util/SettingsCache$OnChangeListener;",
        "onChangeListener",
        "registerTaskbarEnableSetting",
        "(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V",
        "unregisterTaskbarEnableSetting",
        "isTaskbarExpandAreaSettingEnable",
        "setTaskbarExpandAreaSettingEnable",
        "registerTaskbarExpandAreaEnableSetting",
        "unregisterTaskbarExpandAreaEnableSetting",
        "isTaskbarBreenoSettingEnable",
        "setTaskbarBreenoSettingEnable",
        "isTaskbarAllAppsSettingEnable",
        "setTaskbarAllAppsSettingEnable",
        "setBrowserNewsSettingEnable",
        "registerTaskbarAllAppsEnableSetting",
        "unregisterTaskbarAllAppsEnableSetting",
        "isTaskbarGlobalSearchSettingEnable",
        "setTaskbarGlobalSearchSettingEnable",
        "registerTaskbarGlobalSearchEnableSetting",
        "unregisterTaskbarGlobalSearchEnableSetting",
        "isTaskbarFileManagerSettingEnable",
        "setTaskbarFileManagerSettingEnable",
        "registerTaskbarFileManagerEnableSetting",
        "unregisterTaskbarFileManagerEnableSetting",
        "isTaskbarLongPressSettingEnable",
        "setTaskbarLongPressSettingEnable",
        "registerTaskbarLongPressEnableSetting",
        "unregisterTaskbarLongPressEnableSetting",
        "registerTaskbarTransientEnableSetting",
        "unregisterTaskbarTransientEnableSetting",
        "registerTaskbarBreenoEnableSetting",
        "unregisterTaskbarBreenoEnableSetting",
        "isTaskbarTransientState",
        "",
        "state",
        "setTaskbarTransientStateForBackupRestore",
        "(I)V",
        "setTaskbarTransientState",
        "height",
        "updateFloatTaskbarHeight",
        "updateUnStashFloatTaskbarHeight",
        "down",
        "updateTaskbarTouchDownState",
        "",
        "prefix",
        "Ljava/io/PrintWriter;",
        "pw",
        "dumpLogs",
        "(Ljava/lang/String;Ljava/io/PrintWriter;)V",
        "key",
        "enableSetting",
        "(Ljava/lang/String;Z)V",
        "Landroid/net/Uri;",
        "getKeyUri",
        "(Ljava/lang/String;)Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "mContext",
        "Landroid/content/Context;",
        "Lcom/android/launcher3/util/SettingsCache;",
        "mSettingsCache",
        "Lcom/android/launcher3/util/SettingsCache;",
        "Landroid/content/ContentResolver;",
        "mContentResolver",
        "Landroid/content/ContentResolver;",
        "mIsFirstReadExpandEnableState",
        "Z",
        "mIsFirstReadTaskbarEnableState",
        "isPreHasTransientFeature",
        "Companion",
        "OplusLauncher_OPPOPallDomesticAallRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

.field public static final KEY_ENABLE_TASKBAR:Ljava/lang/String; = "enable_launcher_taskbar"

.field public static final KEY_ENABLE_TASKBAR_ALL_APPS:Ljava/lang/String; = "enable_launcher_tools_allapps_entry"

.field public static final KEY_ENABLE_TASKBAR_BREENO:Ljava/lang/String; = "enable_launcher_tools_breeno_entry"

.field public static final KEY_ENABLE_TASKBAR_EXPAND_AREA:Ljava/lang/String; = "enable_launcher_expand_area"

.field public static final KEY_ENABLE_TASKBAR_FILE_MANAGER:Ljava/lang/String; = "enable_launcher_tools_filemanager_entry"

.field public static final KEY_ENABLE_TASKBAR_GLOBAL_SEARCH:Ljava/lang/String; = "enable_launcher_tools_globalsearch_entry"

.field public static final KEY_ENABLE_TASKBAR_LONG_PRESS:Ljava/lang/String; = "enable_launcher_tools_longpress_entry"

.field public static final KEY_ENABLE_TASKBAR_TRANSIENT:Ljava/lang/String; = "enable_launcher_tools_transient_entry"

.field public static final KEY_FLOAT_TASKBAR_HEIGHT:Ljava/lang/String; = "launcher_float_taskbar_height"

.field public static final KEY_LAUNCHER_TASKBAR_DOWN:Ljava/lang/String; = "launcher_taskbar_down"

.field public static final KEY_SUPPORT_TASKBAR_DEBUG:Ljava/lang/String; = "support_launcher_taskbar_debug"

.field public static final KEY_TASKBAR_HEIGHT:Ljava/lang/String; = "launcher_taskbar_height"

.field public static final KEY_UNSTASH_FLOAT_TASKBAR_HEIGHT:Ljava/lang/String; = "launcher_unstash_float_taskbar_height"

.field private static final PREF_KEY_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "sp_key_dock_expand_switch"

.field private static final PREF_KEY_TASKBAR_SWITCH:Ljava/lang/String; = "sp_key_taskbar_switch"

.field public static final STATE_DISABLE:I = 0x0

.field public static final STATE_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TaskbarSettingsConfig"

.field private static final URI_ENABLE_TASKBAR:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_BREENO:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_TRANSIENT:Landroid/net/Uri;

.field private static final URI_SUPPORT_TASKBAR_DEBUG:Landroid/net/Uri;

.field private static sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;


# instance fields
.field private isPreHasTransientFeature:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mIsFirstReadExpandEnableState:Z

.field private mIsFirstReadTaskbarEnableState:Z

.field private final mSettingsCache:Lcom/android/launcher3/util/SettingsCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    .line 9
    const-string v0, "enable_launcher_taskbar"

    .line 11
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    .line 17
    const-string v0, "enable_launcher_expand_area"

    .line 19
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    .line 25
    const-string v0, "enable_launcher_tools_allapps_entry"

    .line 27
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    .line 33
    const-string v0, "enable_launcher_tools_globalsearch_entry"

    .line 35
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    .line 41
    const-string v0, "enable_launcher_tools_filemanager_entry"

    .line 43
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    .line 49
    const-string v0, "enable_launcher_tools_breeno_entry"

    .line 51
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_BREENO:Landroid/net/Uri;

    .line 57
    const-string v0, "enable_launcher_tools_longpress_entry"

    .line 59
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    .line 65
    const-string/jumbo v0, "support_launcher_taskbar_debug"

    .line 68
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_SUPPORT_TASKBAR_DEBUG:Landroid/net/Uri;

    .line 74
    const-string v0, "enable_launcher_tools_transient_entry"

    .line 76
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_TRANSIENT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    .line 7
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 2
    .line 3
    return-void
.end method

.method private final enableSetting(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->getKeyUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1d

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/SettingsCache;->getCache(Landroid/net/Uri;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_f

    .line 14
    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eq v1, p2, :cond_1d

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/SettingsCache;->removeCache(Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    .line 32
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final getKeyUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sparse-switch p0, :sswitch_data_5c

    .line 6
    .line 7
    .line 8
    goto :goto_57

    .line 9
    :sswitch_8
    const-string p0, "enable_launcher_tools_globalsearch_entry"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_11

    .line 16
    .line 17
    goto :goto_57

    .line 18
    :cond_11
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    .line 19
    .line 20
    goto :goto_5b

    .line 21
    :sswitch_14
    const-string p0, "enable_launcher_tools_filemanager_entry"

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1d

    .line 28
    .line 29
    goto :goto_57

    .line 30
    :cond_1d
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    .line 31
    .line 32
    goto :goto_5b

    .line 33
    :sswitch_20
    const-string p0, "enable_launcher_tools_longpress_entry"

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_29

    .line 40
    .line 41
    goto :goto_57

    .line 42
    :cond_29
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    .line 43
    .line 44
    goto :goto_5b

    .line 45
    :sswitch_2c
    const-string p0, "enable_launcher_tools_breeno_entry"

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_35

    .line 52
    .line 53
    goto :goto_57

    .line 54
    :cond_35
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_BREENO:Landroid/net/Uri;

    .line 55
    .line 56
    goto :goto_5b

    .line 57
    :sswitch_38
    const-string p0, "enable_launcher_expand_area"

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_41

    .line 64
    .line 65
    goto :goto_57

    .line 66
    :cond_41
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    .line 67
    .line 68
    goto :goto_5b

    .line 69
    :sswitch_44
    const-string p0, "enable_launcher_taskbar"

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_57

    .line 76
    .line 77
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    .line 78
    .line 79
    goto :goto_5b

    .line 80
    :sswitch_4f
    const-string p0, "enable_launcher_tools_allapps_entry"

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_59

    .line 87
    .line 88
    :cond_57
    :goto_57
    const/4 p0, 0x0

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    .line 91
    .line 92
    :goto_5b
    return-object p0

    .line 93
    :sswitch_data_5c
    .sparse-switch
        -0x41d05c81 -> :sswitch_4f
        -0x3f41b9f5 -> :sswitch_44
        -0x694b1d1 -> :sswitch_38
        0x3119978b -> :sswitch_2c
        0x32a141f3 -> :sswitch_20
        0x3c5ffb9d -> :sswitch_14
        0x4981ff25 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final backupTaskbarSettingEnable()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->backupTaskbarSettingEnable(ZZ)V

    return-void
.end method

.method public final backupTaskbarSettingEnable(ZZ)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    const-string/jumbo v0, "sp_key_taskbar_switch"

    if-nez p2, :cond_13

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 4
    :cond_13
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1a
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    const-string v0, "TaskbarSettingsConfig:"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/common/util/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    const-string v0, "format(...)"

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eqz p2, :cond_1f

    .line 12
    .line 13
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "%s\t taskBar_switch_state=%b"

    .line 28
    .line 29
    invoke-static {v2, v1, v3, v0, p2}, Lcom/android/common/util/j1;->c([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    if-eqz p2, :cond_34

    .line 33
    .line 34
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "%s\t taskBar_allapps_switch_state=%b"

    .line 49
    .line 50
    invoke-static {v2, v1, v3, v0, p2}, Lcom/android/common/util/j1;->c([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    if-eqz p2, :cond_49

    .line 54
    .line 55
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "%s\t taskBar_file_switch_state=%b"

    .line 70
    .line 71
    invoke-static {v2, v1, v3, v0, p2}, Lcom/android/common/util/j1;->c([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    if-eqz p2, :cond_5e

    .line 75
    .line 76
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "%s\t taskBar_longpress_swtch_state=%b"

    .line 91
    .line 92
    invoke-static {v2, v1, v3, v0, p2}, Lcom/android/common/util/j1;->c([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    if-eqz p2, :cond_73

    .line 96
    .line 97
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v3, "%s\t taskBar_expand_area_swtch_state=%b"

    .line 112
    .line 113
    invoke-static {v2, v1, v3, v0, p2}, Lcom/android/common/util/j1;->c([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    if-eqz p2, :cond_88

    .line 117
    .line 118
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "%s\t taskbar_search_switch_state=%b"

    .line 133
    .line 134
    invoke-static {p0, v1, p1, v0, p2}, Lcom/android/common/util/j1;->c([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    return-void
.end method

.method public final isSupportTaskbarDebug()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 2
    .line 3
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_SUPPORT_TASKBAR_DEBUG:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isTaskbarAllAppsSettingEnable()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 2
    .line 3
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isTaskbarBreenoSettingEnable()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 2
    .line 3
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_BREENO:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isTaskbarExpandAreaSettingEnable()Z
    .registers 9

    .line 1
    const-string/jumbo v0, "update enable_launcher_expand_area with old state: "

    .line 4
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    .line 9
    const-class v1, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_b
    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    if-eqz v3, :cond_58

    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    .line 19
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    const-string v4, "enable_launcher_expand_area"

    const/4 v5, -0x1

    .line 24
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_58

    .line 30
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 38
    const-string/jumbo v4, "sp_key_dock_expand_switch"

    .line 41
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 47
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    const-string v5, "Taskbar"

    .line 53
    const-string v6, "TaskbarSettingsConfig"

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v5, v6, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "enable_launcher_expand_area"

    .line 72
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 75
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_58

    :catchall_56
    move-exception p0

    goto :goto_5c

    .line 89
    :cond_58
    :goto_58
    sget-object v0, Lm9/n;->a:Lm9/n;
    :try_end_5a
    .catchall {:try_start_b .. :try_end_5a} :catchall_56

    .line 91
    monitor-exit v1

    goto :goto_5e

    .line 93
    :goto_5c
    monitor-exit v1

    .line 94
    throw p0

    .line 95
    :cond_5e
    :goto_5e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 97
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    .line 99
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarFileManagerSettingEnable()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 2
    .line 3
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isTaskbarGlobalSearchSettingEnable()Z
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isTaskbarLongPressSettingEnable()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 2
    .line 3
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isTaskbarSettingEnable()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_62

    .line 6
    const-class v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    if-eqz v2, :cond_5c

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    .line 16
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 18
    const-string v4, "enable_launcher_taskbar"

    const/4 v5, -0x1

    .line 21
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3e

    .line 27
    const-string v3, "Taskbar"

    .line 29
    const-string v4, "TaskbarSettingsConfig"

    .line 31
    const-string/jumbo v5, "init taskbar enable state"

    .line 34
    invoke-static {v3, v4, v5}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSTaskbarDefaultEnable()Z

    move-result v3

    .line 41
    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 47
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->backupTaskbarSettingEnable(ZZ)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_60

    :cond_34
    :goto_34
    if-eqz v3, :cond_3a

    if-nez v4, :cond_3a

    move v3, v1

    goto :goto_3b

    :cond_3a
    move v3, v2

    .line 60
    :goto_3b
    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    .line 63
    :cond_3e
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    const-string/jumbo v4, "launcher_taskbar_height"

    .line 68
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 74
    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 80
    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->taskbar()Lcom/android/launcher/layoutparam/TaskBarParam;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 86
    invoke-virtual {v5}, Lcom/android/launcher/layoutparam/TaskBarParam;->getTaskbarViewHeight()I

    move-result v2

    .line 90
    :cond_59
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    :cond_5c
    sget-object v2, Lm9/n;->a:Lm9/n;
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_32

    .line 95
    monitor-exit v0

    goto :goto_62

    .line 97
    :goto_60
    monitor-exit v0

    .line 98
    throw p0

    .line 99
    :cond_62
    :goto_62
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 101
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarTransientState()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 2
    .line 3
    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_TRANSIENT:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1b

    .line 15
    .line 16
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1b

    .line 21
    .line 22
    if-nez v0, :cond_1b

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarTransientState(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v2, v0

    .line 29
    :goto_1c
    return v2
.end method

.method public final registerTaskbarAllAppsEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarBreenoEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_BREENO:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarFileManagerEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarGlobalSearchEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarLongPressEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarTransientEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_TRANSIENT:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final resetTaskbarSettings()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2a

    .line 6
    .line 7
    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2a

    .line 12
    .line 13
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSTaskbarDefaultEnable()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarBreenoSettingEnable(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarAllAppsSettingEnable(Z)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarGlobalSearchSettingEnable(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarFileManagerSettingEnable(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarTransientState(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarLongPressSettingEnable(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    return-void
.end method

.method public final restoreTaskbarSettingEnable()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 14
    :cond_d
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    const-string/jumbo v1, "sp_key_taskbar_switch"

    .line 25
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    .line 32
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 36
    const-string v3, "enable_launcher_taskbar"

    .line 38
    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 45
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_33
    return-void
.end method

.method public final setBrowserNewsSettingEnable(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Lj6/d;->e(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setTaskbarAllAppsSettingEnable(Z)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCircleToSearch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "enable_launcher_tools_allapps_entry"

    .line 6
    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :goto_10
    return-void
.end method

.method public final setTaskbarBreenoSettingEnable(Z)V
    .registers 3

    .line 1
    const-string v0, "enable_launcher_tools_breeno_entry"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTaskbarExpandAreaSettingEnable(Z)V
    .registers 3

    .line 1
    const-string v0, "enable_launcher_expand_area"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTaskbarFileManagerSettingEnable(Z)V
    .registers 3

    .line 1
    const-string v0, "enable_launcher_tools_filemanager_entry"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTaskbarGlobalSearchSettingEnable(Z)V
    .registers 3

    .line 1
    const-string v0, "enable_launcher_tools_globalsearch_entry"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTaskbarLongPressSettingEnable(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "enable_launcher_tools_longpress_entry"

    .line 6
    .line 7
    if-eqz p1, :cond_d

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_11

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :goto_11
    return-void
.end method

.method public final setTaskbarSettingEnable(Z)V
    .registers 5

    .line 1
    if-eqz p1, :cond_12

    .line 2
    .line 3
    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->getNavButtonsPosition(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_12

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->setNavButtonsPosition(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    :cond_12
    const-string v0, "enable_launcher_taskbar"

    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setTaskbarSettingEnableForBackupRestore(Z)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->backupTaskbarSettingEnable(ZZ)V

    .line 9
    .line 10
    .line 11
    :cond_a
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isPreHasTransientFeature:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_22

    .line 15
    .line 16
    if-eqz p1, :cond_19

    .line 17
    .line 18
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_19

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v2, v1

    .line 27
    :goto_1a
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarTransientState(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v2, p1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuideHelper;->setIsBackupRestore(Landroid/content/Context;Z)V

    .line 33
    .line 34
    .line 35
    :cond_22
    if-eqz p1, :cond_27

    .line 36
    .line 37
    if-nez v0, :cond_27

    .line 38
    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v1, v3

    .line 41
    :goto_28
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setTaskbarTransientState(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_4

    .line 3
    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    const-string p1, "enable_launcher_tools_transient_entry"

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTaskbarTransientStateForBackupRestore(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isPreHasTransientFeature:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarTransientState(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuideHelper;->setIsBackupRestore(Landroid/content/Context;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final unregisterTaskbarAllAppsEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarBreenoEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_BREENO:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarFileManagerEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarGlobalSearchEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarLongPressEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarTransientEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onChangeListener"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 9
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_TRANSIENT:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final updateFloatTaskbarHeight(I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    const-string/jumbo v0, "launcher_float_taskbar_height"

    .line 6
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final updateTaskbarTouchDownState(Z)V
    .registers 3

    .line 1
    const-string/jumbo v0, "launcher_taskbar_down"

    if-eqz p1, :cond_c

    .line 6
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x1

    .line 9
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    .line 13
    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    .line 16
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_12
    return-void
.end method

.method public final updateUnStashFloatTaskbarHeight(I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    const-string/jumbo v0, "launcher_unstash_float_taskbar_height"

    .line 6
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
