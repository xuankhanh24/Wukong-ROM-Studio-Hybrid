.class public final Lcom/android/launcher3/search/IndicatorEntry;
.super Ljava/lang/Object;
.source "IndicatorEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/IndicatorEntry$Companion;,
        Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;,
        Lcom/android/launcher3/search/IndicatorEntry$EntryState;,
        Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 f2\u00020\u0001:\u0004fghiB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\rJ\r\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\r\u0010\u0013\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0013\u0010\rJ\u0015\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u0015\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\nJ\r\u0010\u001a\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001a\u0010\rJ\u0015\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001c\u0010\u0010J\u0015\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J-\u0010#\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u0008\u00a2\u0006\u0004\u0008%\u0010\nJ\r\u0010&\u001a\u00020\u000b\u00a2\u0006\u0004\u0008&\u0010\rJ\r\u0010\'\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\'\u0010\rJ\r\u0010(\u001a\u00020\u000b\u00a2\u0006\u0004\u0008(\u0010\rJ\r\u0010)\u001a\u00020\u0008\u00a2\u0006\u0004\u0008)\u0010\nJ\r\u0010*\u001a\u00020\u000b\u00a2\u0006\u0004\u0008*\u0010\rJ\r\u0010+\u001a\u00020\u000b\u00a2\u0006\u0004\u0008+\u0010\rJ\r\u0010,\u001a\u00020\u0008\u00a2\u0006\u0004\u0008,\u0010\nJ\r\u0010-\u001a\u00020\u0008\u00a2\u0006\u0004\u0008-\u0010\nJ\u0017\u00100\u001a\u00020\u000b2\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00080\u00101J\r\u00103\u001a\u000202\u00a2\u0006\u0004\u00083\u00104J\u0017\u00107\u001a\u00020\u00082\u0008\u00106\u001a\u0004\u0018\u000105\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010;\u001a\u00020\u00082\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008;\u0010<J7\u0010#\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008#\u0010>J\u001f\u0010?\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010A\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u000f\u0010C\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008C\u0010\nJ\u0017\u0010C\u001a\u00020\u00082\u0006\u0010D\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008C\u0010\u0010J\u000f\u0010E\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008E\u0010\rJ\u0019\u0010G\u001a\u00020\u000b2\u0008\u0010F\u001a\u0004\u0018\u00010.H\u0002\u00a2\u0006\u0004\u0008G\u00101J\u000f\u0010I\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008I\u0010JR\u0016\u0010K\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010M\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010LR\u0016\u0010N\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010R\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010U\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010W\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010OR\u0016\u0010X\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010LR\u0016\u0010Y\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0016\u0010[\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010LR\u0016\u0010\\\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010OR\u0014\u0010^\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0018\u0010`\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0014\u0010b\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010aR\u0014\u0010d\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010e\u00a8\u0006j"
    }
    d2 = {
        "Lcom/android/launcher3/search/IndicatorEntry;",
        "",
        "Lcom/android/launcher/Launcher;",
        "launcher",
        "Lcom/android/launcher/pageindicators/OplusPageIndicator;",
        "pageIndicator",
        "<init>",
        "(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V",
        "Lm9/n;",
        "initViewStateIfNeeded",
        "()V",
        "",
        "isEntryEnableState",
        "()Z",
        "enable",
        "setEntryEnableState",
        "(Z)V",
        "isEnable",
        "reInitEnableState",
        "isSupport",
        "updateIndicatorEntryState",
        "",
        "type",
        "setIndicatorEntryType",
        "(I)V",
        "changeSupportState",
        "shouldShowFixedIndicator",
        "reLayout",
        "updateContent",
        "wpColor",
        "updateBackground",
        "showSearchEntry",
        "delay",
        "toState",
        "forceReplace",
        "doReplaceAnimation",
        "(ZZIZ)V",
        "setIndicatorFakeState",
        "isStateAnimRunning",
        "isEntrySearchOpenRunning",
        "isStateAnimRunningWithoutMsgCheck",
        "resetForceState",
        "isForceAnim",
        "isStateBgAnimRunning",
        "cancelReplaceAnimation",
        "cancelScrollXAnim",
        "Landroid/content/Intent;",
        "intent",
        "startIndicatorApp",
        "(Landroid/content/Intent;)Z",
        "Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;",
        "getSearchAppLaunchAnimRunner",
        "()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;",
        "Ljava/lang/Runnable;",
        "endRunner",
        "skipStateAnimaToEnded",
        "(Ljava/lang/Runnable;)V",
        "Landroid/content/Context;",
        "context",
        "initEntryEnableState",
        "(Landroid/content/Context;)V",
        "isTransitionEnded",
        "(ZZIZZ)V",
        "checkTransitionEndedState",
        "(ZI)Z",
        "onWindowAnimation",
        "(I)Z",
        "startOpenIndicatorAppAnim",
        "disableIndicatorAppAnim",
        "isDisableIndicatorAppAnim",
        "intentUsed",
        "doRealStartIndicatorApp",
        "Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;",
        "getEntryWindowAnimState",
        "()Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;",
        "mIsSupport",
        "Z",
        "mIsEntryEnableState",
        "mEntryType",
        "I",
        "mLauncher",
        "Lcom/android/launcher/Launcher;",
        "mIndicator",
        "Lcom/android/launcher/pageindicators/OplusPageIndicator;",
        "Lcom/android/launcher3/search/IndicatorEntryStateAnimation;",
        "mStateAnimation",
        "Lcom/android/launcher3/search/IndicatorEntryStateAnimation;",
        "mWallpaperColor",
        "mIsForceAnim",
        "mSearchAppLaunchAnim",
        "Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;",
        "isInStartSearchActivity",
        "mRealToState",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/os/Handler;",
        "mDelayDoReplaceAnimRunner",
        "Ljava/lang/Runnable;",
        "mBreenoWindowAnimationEndCallback",
        "Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;",
        "mDoReplaceData",
        "Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;",
        "Companion",
        "DoReplaceData",
        "EntryState",
        "EntryWindowAnimState",
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
.field public static final ACTION_DOMESTIC_SEARCH_APP:Ljava/lang/String; = "android.search.action.DOCK_SEARCH"

.field public static final ACTION_EXP_SEARCH_APP:Ljava/lang/String; = "com.oppo.quicksearchbox.action.Dispatch"

.field public static final ACTIVATE_TYPE:I = 0x71

.field private static final BREENO_INTENT_ACTION:Ljava/lang/String; = "heytap.intent.action.NEW_AI_CHAT_HOME_ENTRANCE"

.field public static final Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

.field private static final DEBUG_DEPTH:I = 0x5

.field private static final DEFAULT_VALUE:Z = true

.field private static final DELAY_RESTORE:J = 0x3e8L

.field public static final DESKTOP_BLUR_ANIM_DURATION:J = 0x320L

.field public static final INDICATOR_ENTRY_TYPE_BREENO:I = 0x2

.field public static final INDICATOR_ENTRY_TYPE_NONE:I = 0x0

.field public static final INDICATOR_ENTRY_TYPE_SEARCH:I = 0x1

.field public static final INTENT_URL_DOCK_HOME:Ljava/lang/String; = "gs://dock/home?"

.field public static final IS_BREENO_ENTRY_ENABLE:Ljava/lang/String; = "is_breeno_entry_enable"

.field public static final IS_SEARCH_ENTRY_ENABLE:Ljava/lang/String; = "is_search_entry_enable"

.field public static final JUMP_DP_URL_ALL_SEARCH:Ljava/lang/String; = "gs://search/gsearch?source=dock"

.field public static final JUMP_DP_URL_KEY:Ljava/lang/String; = "dock_jump_dp_url"

.field public static final KEY_INDICATOR_ENTRY_TYPE:Ljava/lang/String; = "key_indicator_entry_type"

.field private static final MSG_SET_FAKE_INDICATOR_STATE:I = 0x66

.field private static final MSG_SHOW_SEARCH_ENTRY:I = 0x65

.field public static final NO_DESKTOP_BLUR_ANIM_END:J = -0x1L

.field private static final OPLUS_DOMESTIC_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox"

.field private static final OPLUS_DOMESTIC_SEARCH_PROVIDER_CLASS_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field private static final SEARCH_ENTRY_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndicatorEntry"

.field public static final TOKYO_SEARCH_AI_ENABLE:Ljava/lang/String; = "tokyo_search_ai_enable"

.field private static final VALID_RECT_OFFSET:I = 0x14

.field private static mStartActivityResult:Z

.field private static mTempResult:Ljava/lang/String;


# instance fields
.field private isInStartSearchActivity:Z

.field private final mBreenoWindowAnimationEndCallback:Ljava/lang/Runnable;

.field private mDelayDoReplaceAnimRunner:Ljava/lang/Runnable;

.field private final mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

.field private mEntryType:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIsEntryEnableState:Z

.field private mIsForceAnim:Z

.field private mIsSupport:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mRealToState:I

.field private mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

.field private mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

.field private mWallpaperColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 8
    .line 9
    const-string v0, "NA"

    .line 10
    .line 11
    sput-object v0, Lcom/android/launcher3/search/IndicatorEntry;->mTempResult:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/android/launcher3/search/IndicatorEntry;->mStartActivityResult:Z

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 7

    .line 1
    const-string/jumbo v0, "launcher"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "pageIndicator"

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 18
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntry()Z

    move-result v1

    .line 22
    iput-boolean v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 24
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getEntryEnabledDefaultValue()Z

    move-result v1

    .line 28
    iput-boolean v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    const/4 v1, 0x2

    .line 31
    iput v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mEntryType:I

    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mRealToState:I

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 40
    new-instance v3, Lcom/android/launcher3/search/IndicatorEntry$mHandler$1;

    .line 42
    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/search/IndicatorEntry$mHandler$1;-><init>(Lcom/android/launcher3/search/IndicatorEntry;Landroid/os/Looper;)V

    .line 45
    iput-object v3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v2, Landroidx/core/view/v;

    const/4 v3, 0x3

    .line 50
    invoke-direct {v2, p0, v3}, Landroidx/core/view/v;-><init>(Ljava/lang/Object;I)V

    .line 53
    iput-object v2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mBreenoWindowAnimationEndCallback:Ljava/lang/Runnable;

    .line 55
    new-instance v2, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    const/4 v3, 0x0

    .line 58
    invoke-direct {v2, v3, v3, v1, v3}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;-><init>(ZZIZ)V

    .line 61
    iput-object v2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 67
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntry()Z

    move-result p2

    .line 71
    iput-boolean p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isEntryEnable(Landroid/content/Context;)Z

    move-result p2

    .line 77
    iput-boolean p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryType(Landroid/content/Context;)I

    move-result p1

    .line 83
    iput p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mEntryType:I

    .line 85
    new-instance p1, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    .line 87
    invoke-direct {p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp$lambda$6(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getEntryWindowAnimState(Lcom/android/launcher3/search/IndicatorEntry;)Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/search/IndicatorEntry;->getEntryWindowAnimState()Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/android/launcher3/search/IndicatorEntry;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMIndicator$p(Lcom/android/launcher3/search/IndicatorEntry;)Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMIsEntryEnableState$p(Lcom/android/launcher3/search/IndicatorEntry;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMIsForceAnim$p(Lcom/android/launcher3/search/IndicatorEntry;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsForceAnim:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMIsSupport$p(Lcom/android/launcher3/search/IndicatorEntry;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/search/IndicatorEntry;)Lcom/android/launcher/Launcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMStartActivityResult$cp()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/launcher3/search/IndicatorEntry;->mStartActivityResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMStateAnimation$p(Lcom/android/launcher3/search/IndicatorEntry;)Lcom/android/launcher3/search/IndicatorEntryStateAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMTempResult$cp()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->mTempResult:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setMStartActivityResult$cp(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/launcher3/search/IndicatorEntry;->mStartActivityResult:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMStateAnimation$p(Lcom/android/launcher3/search/IndicatorEntry;Lcom/android/launcher3/search/IndicatorEntryStateAnimation;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMTempResult$cp(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/android/launcher3/search/IndicatorEntry;->mTempResult:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp$lambda$5(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/search/IndicatorEntry;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/search/IndicatorEntry;->mBreenoWindowAnimationEndCallback$lambda$0(Lcom/android/launcher3/search/IndicatorEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkTransitionEndedState(ZI)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4c

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getToState()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eq p2, p1, :cond_4c

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "checkTransitionEndedState, toState:"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " doReplaceData:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "IndicatorEntry"

    .line 37
    .line 38
    invoke-static {v1, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(IZ)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getShowSearchEntry()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getDelay()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getToState()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getForceReplace()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x0

    .line 71
    move-object v0, p0

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/search/IndicatorEntry;->doReplaceAnimation(ZZIZZ)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :cond_4c
    return v0
.end method

.method public static final currentIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->currentIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp$lambda$4$lambda$3(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final doRealStartIndicatorApp(Landroid/content/Intent;)Z
    .registers 15

    .line 1
    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v0

    .line 7
    const-string v1, "IndicatorEntry"

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 12
    const-string p0, "doRealStartIndicatorApp: DrawerGuide is showing!!!"

    .line 14
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 18
    :cond_11
    invoke-static {}, Lcom/android/common/util/IconUtils;->getZoomWindowPackage()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    if-eqz p1, :cond_23

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v3

    .line 37
    :goto_24
    invoke-static {}, Lcom/android/common/util/IconUtils;->getZoomWindowPackage()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_34

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 53
    :cond_34
    const-string p0, "doRealStartIndicatorApp: start app is entering zoom window, so return, packageName="

    .line 55
    invoke-static {p0, v3, v1}, Lcom/android/common/config/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3a
    const/4 v0, 0x0

    .line 60
    :try_start_3b
    sget-object v4, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    .line 62
    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportBreenoTransitionAnim()Z

    move-result v5

    if-nez v5, :cond_58

    .line 68
    sget-object v5, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$INSTANCE;

    .line 70
    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v5

    .line 74
    check-cast v5, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    .line 76
    iget-object v6, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 78
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v7

    .line 82
    invoke-virtual {v5, v6, v7, v2, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseAllIconSurface(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    goto :goto_58

    :catchall_55
    move-exception p0

    goto/16 :goto_1ad

    :cond_58
    :goto_58
    if-eqz p1, :cond_72

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 97
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    const-string/jumbo v6, "toString(...)"

    .line 104
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v6, "gs://dock/home?"

    .line 110
    invoke-static {v5, v6, v0}, Lkotlin/text/k;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    goto :goto_73

    :cond_72
    move v5, v0

    :goto_73
    if-nez v5, :cond_88

    if-eqz p1, :cond_7c

    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    goto :goto_7d

    :cond_7c
    move-object v5, v3

    .line 126
    :goto_7d
    const-string v6, "android.search.action.DOCK_SEARCH"

    .line 128
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    goto :goto_88

    :cond_86
    move v5, v0

    goto :goto_89

    :cond_88
    :goto_88
    move v5, v2

    .line 138
    :goto_89
    invoke-static {}, Lcom/android/systemui/shared/system/AnimSeqTimeStamp;->updateLastStartAppTime()V

    .line 141
    sget-object v6, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 143
    invoke-virtual {v6}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isUsingBreenoEntry()Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->isEntryEnableState()Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 155
    sget-object v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 161
    invoke-virtual {v5, v6, v7}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setClickSearchAppTime(J)V

    .line 164
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v5, "_"

    .line 186
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_cb

    .line 198
    const-string/jumbo v6, "track_id"

    .line 201
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_cb
    invoke-static {}, Lcom/android/statistics/WidgetCardStatisticsManager;->getInstance()Lcom/android/statistics/WidgetCardStatisticsManager;

    move-result-object v6

    .line 208
    invoke-virtual {v6, v5}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickIndicatorBreenoEntry(Ljava/lang/String;)V

    if-eqz p1, :cond_de

    .line 213
    const-string/jumbo v5, "start_assist_time"

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 220
    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 223
    :cond_de
    invoke-direct {p0}, Lcom/android/launcher3/search/IndicatorEntry;->isDisableIndicatorAppAnim()Z

    move-result v5

    if-eqz v5, :cond_e7

    const-wide/16 v6, -0x1

    goto :goto_ee

    .line 232
    :cond_e7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x320

    add-long/2addr v6, v8

    :goto_ee
    if-eqz p1, :cond_f5

    .line 241
    const-string v8, "desktop_blur_anim_end"

    .line 243
    invoke-virtual {p1, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 246
    :cond_f5
    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportBreenoTransitionAnim()Z

    move-result v6

    if-eqz v6, :cond_131

    .line 252
    sget-object v6, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->Companion:Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;

    .line 254
    invoke-virtual {v6}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;->getInstance()Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;

    move-result-object v6

    .line 258
    invoke-virtual {v6}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->isBreenoTotalSwitchOn()Z

    move-result v6

    if-eqz v6, :cond_131

    if-eqz p1, :cond_10d

    .line 266
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 270
    :cond_10d
    const-string v6, "com.heytap.speechassist"

    .line 272
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_131

    if-eqz p1, :cond_11d

    .line 280
    const-string/jumbo v3, "seamless_animation"

    .line 283
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    :cond_11d
    new-instance v3, Lcom/android/launcher3/model/data/BreenoItemInfo;

    .line 288
    invoke-direct {v3}, Lcom/android/launcher3/model/data/BreenoItemInfo;-><init>()V

    .line 291
    iget-object v6, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 293
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    new-instance v6, Lcom/android/launcher3/search/f;

    const/4 v7, 0x0

    .line 299
    invoke-direct {v6, p0, p1, v3, v7}, Lcom/android/launcher3/search/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 302
    invoke-virtual {p0, v6}, Lcom/android/launcher3/search/IndicatorEntry;->skipStateAnimaToEnded(Ljava/lang/Runnable;)V

    goto :goto_136

    .line 306
    :cond_131
    iget-object v3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 308
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    :goto_136
    invoke-direct {p0, v5}, Lcom/android/launcher3/search/IndicatorEntry;->startOpenIndicatorAppAnim(Z)V

    goto :goto_199

    .line 315
    :cond_13a
    invoke-virtual {v6}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getSearchAppPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14e

    if-eqz p1, :cond_146

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 327
    :cond_146
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_14e

    move v3, v2

    goto :goto_14f

    :cond_14e
    move v3, v0

    :goto_14f
    if-eqz v3, :cond_188

    .line 338
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isSupportSearchBoxIntegration()Z

    move-result v3

    if-eqz v3, :cond_188

    if-nez v5, :cond_188

    if-eqz p1, :cond_167

    .line 348
    const-string/jumbo v3, "tokyo_search_ai_enable"

    .line 351
    iget-object v5, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 353
    invoke-virtual {v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isUsingNewSearchIndicatorEntry()Z

    move-result v5

    .line 357
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    :cond_167
    sget-object v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 366
    invoke-virtual {v3, v5, v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setClickSearchAppTime(J)V

    .line 369
    iget-object v3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 371
    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getIntegrationUIManager()Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;

    move-result-object v5

    if-eqz v5, :cond_199

    .line 377
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 380
    iget-object v6, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    .line 389
    invoke-static/range {v5 .. v12}, Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;->startGlobalSearchByAutoAnim$default(Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;Lcom/android/launcher/Launcher;Landroid/content/Intent;ZLandroid/view/SurfaceControl;ZILjava/lang/Object;)V

    goto :goto_199

    .line 393
    :cond_188
    sget-object v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 399
    invoke-virtual {v3, v5, v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setClickSearchAppTime(J)V

    .line 402
    iget-object v3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 404
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    invoke-direct {p0}, Lcom/android/launcher3/search/IndicatorEntry;->startOpenIndicatorAppAnim()V

    .line 410
    :cond_199
    :goto_199
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p0

    if-eqz p0, :cond_1aa

    .line 416
    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportBreenoTransitionAnim()Z

    move-result p0

    if-nez p0, :cond_1aa

    .line 422
    sget-object p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    .line 424
    invoke-virtual {p0, v2}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;->updateTaskbarNoOccludeState(Z)V

    .line 427
    :cond_1aa
    sget-object p0, Lm9/n;->a:Lm9/n;
    :try_end_1ac
    .catchall {:try_start_3b .. :try_end_1ac} :catchall_55

    goto :goto_1b1

    .line 430
    :goto_1ad
    invoke-static {p0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    .line 434
    :goto_1b1
    invoke-static {p0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1b8

    return v2

    .line 441
    :cond_1b8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 445
    const-string p1, "doRealStartIndicatorApp: "

    .line 447
    invoke-static {p1, p0, v1}, Landroidx/activity/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static final doRealStartIndicatorApp$lambda$10$lambda$9(Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Lcom/android/launcher3/model/data/BreenoItemInfo;)V
    .registers 4

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "$breenoItemInfo"

    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 14
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method

.method private final doReplaceAnimation(ZZIZZ)V
    .registers 14

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFakeState()I

    move-result v1

    const/4 v2, 0x5

    .line 4
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "doReplaceAnimation, showSearchEntry="

    const-string v4, ", delay="

    const-string v5, ", mCurrentState= "

    .line 5
    invoke-static {v3, p1, v4, p2, v5}, Lcom/android/common/config/f;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6
    const-string v4, "fakeState="

    const-string v5, ", toState="

    .line 7
    invoke-static {v0, v1, v4, v5, v3}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    const-string v0, ", isTransitionEnded="

    const-string v1, ", caller="

    .line 9
    invoke-static {p3, v0, v1, v3, p5}, Landroidx/compose/ui/graphics/colorspace/d;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 10
    const-string v0, "IndicatorEntry"

    .line 11
    invoke-static {v2, v0, v3}, Lcom/android/common/util/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 12
    iget-boolean v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    if-eqz v1, :cond_13a

    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto/16 :goto_13a

    .line 13
    :cond_3c
    invoke-direct {p0, p5, p3}, Lcom/android/launcher3/search/IndicatorEntry;->checkTransitionEndedState(ZI)Z

    move-result v1

    if-eqz v1, :cond_43

    return-void

    .line 14
    :cond_43
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getHoverStateHasChanged()Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "getHoverStateHasChanged(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 15
    const-string p0, "doReplaceAnimation, ignore as hovering"

    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_5b
    iget-boolean v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6b

    if-eqz p1, :cond_66

    move v1, v2

    goto :goto_67

    :cond_66
    move v1, p3

    .line 17
    :goto_67
    iput v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mRealToState:I

    move v5, v3

    goto :goto_6d

    :cond_6b
    move v1, p3

    move v5, v4

    .line 18
    :goto_6d
    iget-object v6, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v6

    if-nez v6, :cond_7f

    if-nez p4, :cond_7f

    .line 19
    const-string p0, "doReplaceAnimation, ignore as other launcher state"

    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_7f
    iget-object v6, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 21
    const-string p0, "doReplaceAnimation, ignore as state switching"

    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_91
    const-string v6, "doReplaceAnimation, showSearchEntry = "

    const-string v7, ", delay = "

    .line 23
    invoke-static {v6, p1, v7, p2, v0}, La0/f;->c(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const/16 v6, 0x65

    if-eqz p1, :cond_ad

    if-eqz p2, :cond_ad

    .line 24
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    iput-boolean p4, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsForceAnim:Z

    .line 26
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v6, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 27
    :cond_ad
    iget-object v7, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->record(ZZIZ)V

    .line 28
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result p2

    if-ne p2, v1, :cond_cd

    .line 29
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 30
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    :cond_c7
    const-string p0, "Ignore as change to an existing state"

    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_cd
    invoke-direct {p0, p3}, Lcom/android/launcher3/search/IndicatorEntry;->onWindowAnimation(I)Z

    move-result p2

    if-eqz p2, :cond_d4

    return-void

    .line 33
    :cond_d4
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ne p2, v2, :cond_e2

    move v5, v3

    .line 34
    :cond_e2
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/launcher3/search/IndicatorEntry$doReplaceAnimation$1;

    invoke-direct {p3, p0}, Lcom/android/launcher3/search/IndicatorEntry$doReplaceAnimation$1;-><init>(Lcom/android/launcher3/search/IndicatorEntry;)V

    const/16 v0, 0x66

    invoke-virtual {p2, v0, p3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 36
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    if-eqz p2, :cond_fa

    invoke-virtual {p2}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->cancel()V

    .line 37
    :cond_fa
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    .line 38
    iput-boolean p4, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsForceAnim:Z

    .line 39
    new-instance p2, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    iget-object p3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p2, p3, p1, v1, v5}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;ZIZ)V

    iput-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 40
    invoke-virtual {p2}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->start()V

    .line 41
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object p3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDelayDoReplaceAnimRunner:Ljava/lang/Runnable;

    if-nez p3, :cond_11c

    if-nez p5, :cond_11c

    move v3, v4

    :cond_11c
    invoke-virtual {p2, v1, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(IZ)V

    .line 43
    sget-object p2, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {p2}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isUsingBreenoEntry()Z

    move-result p2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_13a

    if-eq v1, p3, :cond_13a

    if-eqz p2, :cond_13a

    if-eqz v5, :cond_13a

    .line 44
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, p3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setFakeState(I)V

    .line 45
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x190

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_13a
    :goto_13a
    return-void
.end method

.method public static synthetic e()Ljava/lang/Boolean;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp$lambda$2()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp$lambda$7(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/search/IndicatorEntry;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/search/IndicatorEntry;->onWindowAnimation$lambda$1(Lcom/android/launcher3/search/IndicatorEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getBreenoAppAction()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getBreenoAppAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getBreenoAppPackageName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getBreenoAppPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getEntryEnabledDefaultValue()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getEntryEnabledDefaultValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final getEntryWindowAnimState()Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;
    .registers 6

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    if-eqz p0, :cond_87

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_87

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->checkAllTransitionEnded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 16
    .line 17
    sget-object p0, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->NONE:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 18
    .line 19
    goto/16 :goto_85

    .line 20
    .line 21
    :cond_14
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x6a

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_52

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getAppOpenAnimRecord()Lcom/android/quickstep/util/animation/AnimationRecord;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_30

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/AnimationRecord;->getMItemType()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v1, :cond_30

    .line 46
    .line 47
    move v0, v2

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v0, v3

    .line 50
    :goto_31
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getRecentAnimRecord()Lcom/android/quickstep/util/animation/AnimationRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_4a

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/AnimationRecord;->getMItemType()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v1, :cond_4a

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getRecentAnimRecord()Lcom/android/quickstep/util/animation/AnimationRecord;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_4a

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/AnimationRecord;->isRectFSpringAnimReverseToOpen()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-ne p0, v2, :cond_4a

    .line 73
    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v2, v3

    .line 76
    :goto_4b
    if-nez v0, :cond_4f

    .line 77
    .line 78
    if-eqz v2, :cond_80

    .line 79
    .line 80
    :cond_4f
    sget-object p0, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->OPENING:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 81
    .line 82
    goto :goto_85

    .line 83
    :cond_52
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getAppCloseAnimRecord()Lcom/android/quickstep/util/animation/AnimationRecord;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_60

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/AnimationRecord;->getMItemType()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-ne v0, v1, :cond_60

    .line 94
    .line 95
    move v0, v2

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v0, v3

    .line 98
    :goto_61
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getRecentAnimRecord()Lcom/android/quickstep/util/animation/AnimationRecord;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_7a

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/AnimationRecord;->getMItemType()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-ne v4, v1, :cond_7a

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getRecentAnimRecord()Lcom/android/quickstep/util/animation/AnimationRecord;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_7a

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/AnimationRecord;->isRectFSpringAnimReverseToOpen()Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_7a

    .line 121
    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v2, v3

    .line 124
    :goto_7b
    if-nez v0, :cond_83

    .line 125
    .line 126
    if-eqz v2, :cond_80

    .line 127
    .line 128
    goto :goto_83

    .line 129
    :cond_80
    sget-object p0, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->NONE:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 130
    .line 131
    goto :goto_85

    .line 132
    :cond_83
    :goto_83
    sget-object p0, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->CLOSING:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 133
    .line 134
    :goto_85
    if-nez p0, :cond_89

    .line 135
    .line 136
    :cond_87
    sget-object p0, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->NONE:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 137
    .line 138
    :cond_89
    return-object p0
.end method

.method public static final getIndicatorAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final getIndicatorEntryState()Lcom/android/launcher3/search/IndicatorEntry$EntryState;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryState()Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getIndicatorEntryType(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryType(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final getSearchAppAction()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getSearchAppAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getSearchAppComponentName()Landroid/content/ComponentName;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getSearchAppComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getSearchAppPackageName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getSearchAppPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getSearchSwitchDefaultValue()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getSearchSwitchDefaultValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final getStartActivityResult()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getStartActivityResult()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final getSwitchDefaultValue()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getSwitchDefaultValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic h(Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Lcom/android/launcher3/model/data/BreenoItemInfo;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp$lambda$10$lambda$9(Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Lcom/android/launcher3/model/data/BreenoItemInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp$lambda$4(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initEntryEnableState(Landroid/content/Context;)V
    .registers 7

    .line 1
    const-string/jumbo v0, "initEntryEnableState"

    .line 4
    const-string v1, "IndicatorEntry"

    .line 6
    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 11
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntryMenu()Z

    move-result v2

    .line 15
    const-string/jumbo v3, "is_breeno_entry_enable"

    .line 18
    const-string/jumbo v4, "is_search_entry_enable"

    if-eqz v2, :cond_2f

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryType(Landroid/content/Context;)I

    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->setIndicatorEntryType(I)V

    .line 30
    const-string/jumbo p0, "remove search and breeno switch state cache."

    .line 33
    invoke-static {v1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->checkSearchSwitchBeforeOta(Landroid/content/Context;)V

    .line 41
    invoke-static {p1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->delete(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_73

    .line 48
    :cond_2f
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportBreenoSwitch()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 54
    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isBreenoSwitchEnable(Landroid/content/Context;)Z

    move-result v2

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/launcher3/search/IndicatorEntry;->updateIndicatorEntryState(Z)V

    .line 61
    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->checkSearchSwitchBeforeOta(Landroid/content/Context;)V

    .line 66
    invoke-static {p1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4a

    .line 72
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setBreenoSwitchEnable(Landroid/content/Context;Z)V

    .line 75
    :cond_4a
    const-string/jumbo p0, "remove search switch state cache."

    .line 78
    invoke-static {v1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->delete(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_73

    .line 85
    :cond_54
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportSearchSwitch()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSearchSwitchEnable(Landroid/content/Context;)Z

    move-result v2

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/launcher3/search/IndicatorEntry;->updateIndicatorEntryState(Z)V

    .line 98
    invoke-static {p1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6a

    .line 104
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setSearchSwitchEnable(Landroid/content/Context;Z)V

    .line 107
    :cond_6a
    const-string/jumbo p0, "remove breeno switch state cache."

    .line 110
    invoke-static {v1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->delete(Landroid/content/Context;Ljava/lang/String;)V

    :cond_73
    :goto_73
    return-void
.end method

.method public static final isBreenoEntryEnabled(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isBreenoEntryEnabled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final isBreenoSwitchEnable(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isBreenoSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isBreenoSwitchEnable(Landroid/content/Context;Z)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isBreenoSwitchEnable(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method private final isDisableIndicatorAppAnim()Z
    .registers 5

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryState()Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry$EntryState;->BREENO:Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "IndicatorEntry"

    .line 11
    .line 12
    if-ne v0, v1, :cond_61

    .line 13
    .line 14
    sget-object v0, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->Companion:Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;->getInstance()Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->isBreenoTotalSwitchOn()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_20

    .line 25
    .line 26
    const-string/jumbo p0, "isDisableIndicatorAppAnim: Breeno total switch off, return"

    .line 27
    .line 28
    .line 29
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode(Ljava/lang/Integer;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_37

    .line 48
    .line 49
    const-string/jumbo p0, "isDisableIndicatorAppAnim: Breeno Entry in split screen mode, return"

    .line 50
    .line 51
    .line 52
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_37
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_52

    .line 65
    .line 66
    iget-object v0, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "com.heytap.speechassist"

    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_52

    .line 75
    .line 76
    const-string/jumbo p0, "isDisableIndicatorAppAnim: Breeno Entry in zoom window mode, return"

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_52
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportBreenoTransitionAnim()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_61

    .line 90
    .line 91
    const-string/jumbo p0, "isDisableIndicatorAppAnim: Breeno supportBreenoTransitionAnim, return"

    .line 92
    .line 93
    .line 94
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :cond_61
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    .line 99
    .line 100
    if-eqz v0, :cond_80

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 103
    .line 104
    if-eqz p0, :cond_72

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplayId()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    const/4 p0, 0x0

    .line 116
    :goto_73
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode(Ljava/lang/Integer;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_80

    .line 121
    .line 122
    const-string/jumbo p0, "isDisableIndicatorAppAnim: isInSplitScreenMode, return"

    .line 123
    .line 124
    .line 125
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v2

    .line 129
    :cond_80
    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/common/util/LauncherAnimConfig;->isAdaptiveLowAnimation()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_8f

    .line 136
    .line 137
    const-string/jumbo p0, "isDisableIndicatorAppAnim: isAdaptiveLowAnimation, return"

    .line 138
    .line 139
    .line 140
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :cond_8f
    const/4 p0, 0x0

    .line 145
    return p0
.end method

.method public static final isEmptyPageIndicatorSearchSwitchValue(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isEmptyPageIndicatorSearchSwitchValue(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final isEntryEnable(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isEntryEnable(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final isSearchEntryEnabled(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSearchEntryEnabled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final isSearchSwitchEnable(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSearchSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isSearchSwitchEnable(Landroid/content/Context;Z)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSearchSwitchEnable(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static final isSupportBreenoEntry()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportBreenoEntry()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final isSupportBreenoSwitch()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportBreenoSwitch()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final isSupportIndicatorEntry()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntry()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final isSupportIndicatorEntryMenu()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntryMenu()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final isSupportSearchSwitch()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportSearchSwitch()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final isSwitchEnable(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final isUsingBreenoEntry()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isUsingBreenoEntry()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final mBreenoWindowAnimationEndCallback$lambda$0(Lcom/android/launcher3/search/IndicatorEntry;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDelayDoReplaceAnimRunner:Ljava/lang/Runnable;

    if-eqz p0, :cond_d

    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void
.end method

.method private final onWindowAnimation(I)Z
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/search/IndicatorEntry;->getEntryWindowAnimState()Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->NONE:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 6
    .line 7
    if-eq v0, v1, :cond_51

    .line 8
    .line 9
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;->OPENING:Lcom/android/launcher3/search/IndicatorEntry$EntryWindowAnimState;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "IndicatorEntry"

    .line 13
    .line 14
    if-ne v0, v1, :cond_19

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-ne p1, v1, :cond_19

    .line 18
    .line 19
    const-string/jumbo p0, "indicatorEntry is in opening window, ignore to ALL_INDICATOR_STATE animation"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_19
    new-instance v1, Lcom/android/launcher/receiver/b;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v1, p0, v4}, Lcom/android/launcher/receiver/b;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDelayDoReplaceAnimRunner:Ljava/lang/Runnable;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v5, "doReplaceAnimation entryWindowAnimState="

    .line 43
    .line 44
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", delay do "

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " -> "

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {v4, p1, v3}, Lcom/android/common/config/l;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 67
    .line 68
    if-eqz p1, :cond_50

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_50

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mBreenoWindowAnimationEndCallback:Ljava/lang/Runnable;

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->checkAllTransitionEnded(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_50
    return v2

    .line 82
    :cond_51
    const/4 p0, 0x0

    .line 83
    return p0
.end method

.method private static final onWindowAnimation$lambda$1(Lcom/android/launcher3/search/IndicatorEntry;)V
    .registers 8

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDelayDoReplaceAnimRunner:Ljava/lang/Runnable;

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 12
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getShowSearchEntry()Z

    move-result v2

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 18
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getDelay()Z

    move-result v3

    .line 22
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 24
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getToState()I

    move-result v4

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDoReplaceData:Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;

    .line 30
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$DoReplaceData;->getForceReplace()Z

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/search/IndicatorEntry;->doReplaceAnimation(ZZIZZ)V

    return-void
.end method

.method public static final setBreenoSwitchEnable(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setBreenoSwitchEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final setBreenoSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/IndicatorEntry;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setBreenoSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/IndicatorEntry;)V

    return-void
.end method

.method public static final setIndicatorEntryType(Landroid/content/Context;ILcom/android/launcher3/search/IndicatorEntry;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setIndicatorEntryType(Landroid/content/Context;ILcom/android/launcher3/search/IndicatorEntry;)V

    return-void
.end method

.method public static final setSearchSwitchEnable(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setSearchSwitchEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final setSearchSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/IndicatorEntry;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setSearchSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/IndicatorEntry;)V

    return-void
.end method

.method private static final startIndicatorApp$lambda$2()Ljava/lang/Boolean;
    .registers 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final startIndicatorApp$lambda$4(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V
    .registers 6

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "$startActivityResult"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "$intentUsed"

    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 19
    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher3/BaseQuickstepLauncher;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 25
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 27
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;->START_NEW_APP:Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;

    .line 33
    new-instance v2, Lcom/android/launcher3/search/g;

    .line 35
    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/search/g;-><init>(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 39
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->endAppTransition(Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;ZLjava/util/function/Consumer;)V

    goto :goto_30

    .line 43
    :cond_2a
    invoke-direct {p0, p2}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result p0

    .line 47
    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_30
    return-void
.end method

.method private static final startIndicatorApp$lambda$4$lambda$3(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    const-string p3, "$startActivityResult"

    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string/jumbo p3, "this$0"

    .line 9
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string p3, "$intentUsed"

    .line 14
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p1, p2}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result p1

    .line 21
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final startIndicatorApp$lambda$5(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    const-string p3, "$startActivityResult"

    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string/jumbo p3, "this$0"

    .line 9
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string p3, "$intentUsed"

    .line 14
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p1, p2}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result p1

    .line 21
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final startIndicatorApp$lambda$6(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;)V
    .registers 4

    .line 1
    const-string v0, "$startActivityResult"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string/jumbo v0, "this$0"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "$intentUsed"

    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p1, p2}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result p1

    .line 21
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final startIndicatorApp$lambda$7(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/search/IndicatorEntry;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    const-string p3, "$startActivityResult"

    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string/jumbo p3, "this$0"

    .line 9
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string p3, "$intentUsed"

    .line 14
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p1, p2}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result p1

    .line 21
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private final startOpenIndicatorAppAnim()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/search/IndicatorEntry;->isDisableIndicatorAppAnim()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    const-string p0, "IndicatorEntry"

    const-string/jumbo v0, "startOpenIndicatorAppAnim return, disableIndicatorAppAnim "

    invoke-static {p0, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startOpenSearchAppAnim()V

    return-void
.end method

.method private final startOpenIndicatorAppAnim(Z)V
    .registers 2

    if-eqz p1, :cond_b

    .line 4
    const-string p0, "IndicatorEntry"

    const-string/jumbo p1, "startOpenIndicatorAppAnim return, disableIndicatorAppAnim "

    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startOpenSearchAppAnim()V

    return-void
.end method

.method public static final updatePageIndicatorSearchSwitchValue(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->updatePageIndicatorSearchSwitchValue(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancelReplaceAnimation()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->isSupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsForceAnim:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->isStateAnimRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "cancelReplaceAnimation, running = "

    .line 16
    .line 17
    const-string v3, "IndicatorEntry"

    .line 18
    .line 19
    invoke-static {v2, v3, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgOffsetIfNeed()V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_35

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 30
    .line 31
    if-eqz v1, :cond_23

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->cancel()V

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    const/16 v2, 0x65

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_32

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    .line 50
    .line 51
    :cond_32
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void
.end method

.method public final cancelScrollXAnim()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->cancelScrollXAnim()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final changeSupportState()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->reInitEnableState()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 5
    .line 6
    const-string v1, "changeSupportState, mIsSupport = "

    .line 7
    .line 8
    const-string v2, "IndicatorEntry"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mPageIndicatorParam:Lcom/android/launcher/layoutparam/PageIndicatorParam;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->updateIndicatorHeight()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorResource()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 30
    .line 31
    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onBlurEnableStateChanged()V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isUsingBreenoEntry()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3e

    .line 52
    .line 53
    sget-object v0, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->Companion:Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;->getInstance()Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->init()V

    .line 60
    .line 61
    .line 62
    goto :goto_4f

    .line 63
    :cond_3e
    sget-object v0, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->Companion:Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;->getInstance()Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->unregisterSettingsObserver()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager$Companion;->getInstance()Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->updateVersionCode(I)V

    .line 78
    .line 79
    .line 80
    :goto_4f
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final doReplaceAnimation(ZZIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/search/IndicatorEntry;->doReplaceAnimation(ZZIZZ)V

    return-void
.end method

.method public final getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method public final initViewStateIfNeeded()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final isEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    .line 6
    .line 7
    if-eqz p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    :goto_b
    return p0
.end method

.method public final isEntryEnableState()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isEntrySearchOpenRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->isInStartSearchActivity:Z

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->isOpenAnimRunning()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    :goto_10
    return p0
.end method

.method public final isForceAnim()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsForceAnim:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isStateAnimRunning()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->isRunning()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    goto :goto_18

    .line 13
    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v0, 0x65

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_17

    .line 22
    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v1, 0x0

    .line 25
    :goto_18
    return v1
.end method

.method public final isStateAnimRunningWithoutMsgCheck()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_d

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->isRunning()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_d

    .line 12
    .line 13
    move v0, v1

    .line 14
    :cond_d
    return v0
.end method

.method public final isStateBgAnimRunning()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_d

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->isBgAnimRunning()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_d

    .line 12
    .line 13
    move v0, v1

    .line 14
    :cond_d
    return v0
.end method

.method public final isSupport()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 2
    .line 3
    return p0
.end method

.method public final reInitEnableState()V
    .registers 7

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntry()Z

    move-result v1

    .line 7
    iput-boolean v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 11
    invoke-direct {p0, v1}, Lcom/android/launcher3/search/IndicatorEntry;->initEntryEnableState(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 20
    iget-boolean v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsSupport:Z

    .line 22
    iget-boolean p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    .line 24
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryState()Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntryMenu()Z

    move-result v0

    .line 32
    const-string/jumbo v3, "reInitEnableState: mIsSupport="

    .line 35
    const-string v4, ", mIsSwitchEnableState="

    .line 37
    const-string v5, " getIndicatorEntryState: "

    .line 39
    invoke-static {v3, v1, v4, p0, v5}, Lcom/android/common/config/f;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "isSupportIndicatorEntryMenu: "

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string v0, "IndicatorEntry"

    .line 61
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public final resetForceState()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsForceAnim:Z

    .line 3
    .line 4
    return-void
.end method

.method public final setEntryEnableState(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setEntryEnableState, enable = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "IndicatorEntry"

    .line 18
    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-boolean p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIsEntryEnableState:Z

    return-void
.end method

.method public final setIndicatorEntryType(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    .line 2
    iput p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mEntryType:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/IndicatorEntry;->setEntryEnableState(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    goto :goto_20

    .line 5
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->setEntryEnableState(Z)V

    .line 6
    iget v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mEntryType:I

    if-eq v1, p1, :cond_1d

    .line 7
    iput p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mEntryType:I

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->changeSupportState()V

    goto :goto_20

    .line 9
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    :goto_20
    return-void
.end method

.method public final setIndicatorFakeState()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v0

    .line 7
    iput v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mRealToState:I

    .line 9
    const-string/jumbo v1, "setIndicatorFakeState , currentState "

    .line 12
    const-string v2, "IndicatorEntry"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/common/config/m;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 19
    iget p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mRealToState:I

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setFakeState(I)V

    return-void
.end method

.method public final shouldShowFixedIndicator()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_21

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 12
    .line 13
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_21

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 22
    .line 23
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1f

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    const/4 p0, 0x1

    .line 35
    :goto_22
    return p0
.end method

.method public final skipStateAnimaToEnded(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mStateAnimation:Lcom/android/launcher3/search/IndicatorEntryStateAnimation;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntryStateAnimation;->skipToEnd()V

    .line 6
    .line 7
    .line 8
    :cond_7
    if-eqz p1, :cond_c

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final startIndicatorApp(Landroid/content/Intent;)Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    .line 5
    const-string v1, "IndicatorEntry"

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    .line 10
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string/jumbo v2, "startIndicatorApp, caller="

    .line 17
    invoke-static {v2, v0, v1}, Ld1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_13
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 22
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 28
    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_41

    .line 33
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmDrawerSearchEntrySupport()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 39
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 49
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 54
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    .line 60
    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return v4

    .line 66
    :cond_41
    sget-object v3, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 68
    invoke-virtual {v3}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isUsingBreenoEntry()Z

    move-result v5

    if-nez v5, :cond_50

    .line 74
    invoke-static {}, Lcom/android/statistics/WidgetCardStatisticsManager;->getInstance()Lcom/android/statistics/WidgetCardStatisticsManager;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickSearchEntry()V

    .line 81
    :cond_50
    iput-boolean v2, p0, Lcom/android/launcher3/search/IndicatorEntry;->isInStartSearchActivity:Z

    if-nez p1, :cond_5a

    .line 85
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 87
    invoke-virtual {v3, p1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 91
    :cond_5a
    iget-object v3, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 93
    invoke-static {v3}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v5, "com.heytap.speechassist"

    .line 109
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 115
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 117
    sget p1, Lcom/android/launcher3/R$string;->temperature_protection_only_contact_and_message:I

    .line 119
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 130
    const-string p0, "The device turns on the high temperature protection to stop the animation of clicking the icon down."

    .line 132
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 136
    :cond_87
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 138
    invoke-static {v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher3/BaseQuickstepLauncher;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 144
    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    .line 146
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 152
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportBreenoTransitionAnim()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 158
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 164
    new-instance v3, Lcom/android/launcher3/search/b;

    .line 166
    invoke-direct {v3}, Lcom/android/launcher3/search/b;-><init>()V

    .line 169
    new-instance v5, Lcom/android/launcher3/allapps/l0;

    const/4 v6, 0x1

    .line 172
    invoke-direct {v5, p0, v0, p1, v6}, Lcom/android/launcher3/allapps/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Cloneable;I)V

    .line 175
    invoke-virtual {v1, v2, p1, v3, v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_c9

    .line 180
    :cond_b3
    invoke-direct {p0, p1}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_c9

    .line 185
    :cond_b8
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 187
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    .line 191
    sget-object v2, Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;->START_NEW_APP:Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;

    .line 193
    new-instance v3, Lcom/android/launcher3/search/c;

    .line 195
    invoke-direct {v3, p0, v0, p1}, Lcom/android/launcher3/search/c;-><init>(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V

    .line 198
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->endAppTransition(Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;ZLjava/util/function/Consumer;)V

    :cond_c8
    move v1, v4

    :goto_c9
    if-eqz v1, :cond_ce

    .line 204
    iput-boolean v4, p0, Lcom/android/launcher3/search/IndicatorEntry;->isInStartSearchActivity:Z

    return v4

    .line 207
    :cond_ce
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 209
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    if-nez v1, :cond_e6

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 217
    new-instance v2, Lcom/android/launcher3/search/d;

    .line 219
    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/search/d;-><init>(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V

    .line 222
    invoke-virtual {v1, v2}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 225
    iget-object p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 227
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_105

    .line 231
    :cond_e6
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 233
    invoke-static {v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher3/BaseQuickstepLauncher;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 241
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    .line 245
    sget-object v2, Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;->START_NEW_APP:Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;

    .line 247
    new-instance v3, Lcom/android/launcher3/search/e;

    .line 249
    invoke-direct {v3, p0, v0, p1}, Lcom/android/launcher3/search/e;-><init>(Lcom/android/launcher3/search/IndicatorEntry;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Intent;)V

    .line 252
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->endAppTransition(Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;ZLjava/util/function/Consumer;)V

    goto :goto_105

    .line 256
    :cond_ff
    invoke-direct {p0, p1}, Lcom/android/launcher3/search/IndicatorEntry;->doRealStartIndicatorApp(Landroid/content/Intent;)Z

    move-result p1

    .line 260
    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 262
    :goto_105
    iput-boolean v4, p0, Lcom/android/launcher3/search/IndicatorEntry;->isInStartSearchActivity:Z

    .line 264
    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public final updateBackground(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mWallpaperColor:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateBackground(I)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mWallpaperColor:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final updateContent(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mDelayDoReplaceAnimRunner:Ljava/lang/Runnable;

    .line 3
    const-string v1, "IndicatorEntry"

    if-eqz v0, :cond_d

    .line 7
    const-string/jumbo p0, "updateContent has DelayDoReplaceAnimRunner, ignore this updateContent."

    .line 10
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 16
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/launcher3/LauncherState;

    const/16 v2, 0xa

    .line 28
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v4, "updateContent mLauncher.state: "

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, " callers: "

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/search/IndicatorEntry;->mLauncher:Lcom/android/launcher/Launcher;

    .line 60
    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/p;

    move-result-object v1

    .line 64
    invoke-static {}, Lkotlinx/coroutines/u0;->a()Lkotlinx/coroutines/w1;

    move-result-object v2

    .line 68
    new-instance v3, Lcom/android/launcher3/search/IndicatorEntry$updateContent$1;

    const/4 v4, 0x0

    .line 71
    invoke-direct {v3, p0, v0, p1, v4}, Lcom/android/launcher3/search/IndicatorEntry$updateContent$1;-><init>(Lcom/android/launcher3/search/IndicatorEntry;Lcom/android/launcher3/LauncherState;ZLkotlin/coroutines/c;)V

    const/4 p0, 0x2

    .line 75
    invoke-static {v1, v2, v4, v3, p0}, Lkotlinx/coroutines/g;->b(Lkotlinx/coroutines/g0;Lkotlin/coroutines/e$a;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/e2;

    return-void
.end method

.method public final updateIndicatorEntryState(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/IndicatorEntry;->setEntryEnableState(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
