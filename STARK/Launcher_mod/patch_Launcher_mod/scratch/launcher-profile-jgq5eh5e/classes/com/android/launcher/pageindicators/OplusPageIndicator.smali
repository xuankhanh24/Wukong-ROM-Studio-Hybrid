.class public Lcom/android/launcher/pageindicators/OplusPageIndicator;
.super Landroid/widget/FrameLayout;
.source "OplusPageIndicator.java"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher/IPropertyAnimation;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;
.implements Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;
.implements Lcom/android/launcher/layout/IGainFocusOrHoverPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pageindicators/OplusPageIndicator$DrawCallbackImageView;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LEFT:I = 0x1

.field private static final ACTIVITY_RIGHT:I = 0x2

.field public static final ALL_INDICATOR_STATE:I = 0x4

.field private static final ALPHA_0:F = 0.0f

.field private static final ALPHA_1:F = 1.0f

.field private static final ALPHA_MAX:I = 0xff

.field private static final AT_LEAST_COUNT_OF_INDICATORS:I = 0x4

.field private static final BEHINDANIMATOR_DURATION:J = 0x78L

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_BACKGROUND:I = -0x7f680835

.field private static final DEBUG_MATERIAL_DRAW:Z = false

.field private static final DEBUG_NORMAL:Z = false

.field public static final FIXED_INDICATOR_STATE:I = 0x2

.field public static final INDICATOR_ENTRY_TEXT_STATE:I = 0x1

.field public static final INDICATOR_TYPE_FOLDER:I = 0x1

.field public static final INDICATOR_TYPE_LAUNCHER:I = 0x2

.field public static final KEY_TOKYO_SEARCH_AI_ENABLE:Ljava/lang/String; = "system_tokyo_search_ai_enable"

.field private static final MAX_SUPPORT_PAGE_COUNT:I = 0x16

.field private static final MIN_CONTENT_SCALE:F = 0.85f

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field private static final NUM_4:I = 0x4

.field private static final NUM_5:I = 0x5

.field public static final PACKAGE_TOKYO_AI_ASSISTANT:Ljava/lang/String; = "com.oplus.aiassistant"

.field private static final PAGE_POINT_ASSIST:Ljava/lang/String; = "launcher_ic_page_point_assist.png"

.field private static final PAGE_POINT_FOCUSED:Ljava/lang/String; = "ic_launcher_page_point_focused.png"

.field private static final PAGE_POINT_NORMAL:Ljava/lang/String; = "ic_launcher_page_point_normal.png"

.field private static final SHOWEXITANIMATOR_DURATION:J = 0xc8L

.field private static final STROKE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OplusPageIndicator"

.field private static final TEXT_FORMAT_COUNT:I = 0xc


# instance fields
.field private mActiveBrightColor:I

.field private mActiveDeltaAlpha:F

.field private mActiveIndex:I

.field private mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mActiveLeft:F

.field private mActivePage:I

.field private mActiveRight:F

.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mAdjacentTrackRectF:Landroid/graphics/RectF;

.field private mAnimColorNormalAlpha:I

.field private mAnimColorPressedAlpha:I

.field private mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

.field private mAnimationImpl:Lcom/android/quickstep/util/animation/AnimationImpl;

.field private mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mAssistPaint:Landroid/graphics/Paint;

.field private mAtLeastIndicatorEntryWidth:I

.field private mAutoPlay:Z

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRadius:I

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBgOffset:F

.field private mBlurBgView:Landroid/widget/ImageView;

.field private mBlurBlendColor:I

.field private mBlurBlendMode:I

.field private mBlurMixColor:I

.field private mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

.field private mBlurRadius:I

.field private mBreenoEntryPaddingVertical:I

.field private mBright:Z

.field private mBrightColor:I

.field private mCalculatePages:I

.field private mClickOptsForRecentReverse:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentColorAlpha:I

.field private mCurrentState:I

.field private mDisableUpdatePivotWhenGlobalLayout:Z

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotWapRectF:Landroid/graphics/RectF;

.field private mDownTouchOptsForRecentReverse:Ls1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawFocusFlag:Z

.field private mDrawHoverFlag:Z

.field private mDrawSnapShoot:Z

.field private mDrawablePaint:Landroid/graphics/Paint;

.field private mDuration:I

.field private mExtraIndicatorPivotY:I

.field private mFakeState:I

.field private mFixedMaxPagesCount:I

.field private mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mHoverStateHasChanged:Z

.field private mIconAndTextContentAlpha:F

.field private mIconAndTextContentScale:F

.field private mIndicatorContentAlpha:F

.field private mIndicatorContentScale:F

.field private mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

.field private mIndicatorEntryBgWidth:I

.field private mIndicatorEntryPaddingOffsetX:I

.field private mIndicatorIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorIconPadding:I

.field private mIndicatorIconSize:I

.field private mIndicatorItemHeight:I

.field private mIndicatorItemSpacing:I

.field private mIndicatorItemWidth:I

.field private mIndicatorScrollX:F

.field private mIndicatorText:Ljava/lang/String;

.field private mIndicatorTextPaint:Landroid/text/TextPaint;

.field private mIndicatorTextWidth:F

.field private mIndicatorVisible:Z

.field private mInterpolation:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsFirst:Z

.field private mIsFolderHost:Z

.field private mIsPathIndicator:Z

.field private mIsRtl:Z

.field private mIsSupportAssistIndicator:Z

.field private mLastActiveIndex:I

.field private mLastActivePage:I

.field private mLastCurrentScroll:I

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mLeftFadeOutBorder:F

.field private mNeedAnimate:Z

.field private mNeedScrollX:Z

.field private mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field protected mNumPages:I

.field private mPageChanged:Z

.field private mPageIndicatorBlurHelper:Lcom/android/launcher/pageindicators/PageIndicatorBlurHelper;

.field private mPageNumChangedAnimRunner:Ljava/lang/Runnable;

.field private mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

.field private mRadius:F

.field private mRectInWindow:Landroid/graphics/Rect;

.field private mRightFadeOutBorder:F

.field private mScrolled:Z

.field private final mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

.field private mSearchEntryPaddingHorizontal:I

.field private mSearchEntryPaddingVertical:I

.field protected mSelectIndicatorColor:I

.field private mShowAssistScreenPoint:Z

.field private mShowBackground:Z

.field private mShowExitAnimator:Landroid/animation/ValueAnimator;

.field private mSlideLeftToRight:Z

.field private mStartTime:J

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTargetBgWidthOffset:F

.field private mTempBgHeight:I

.field private mTempBgWidth:I

.field private mTextMaxWidth:I

.field private mTextSize:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTotalActivePage:I

.field private mTouchInteractive:Z

.field private mTrackAnimator:Landroid/animation/ValueAnimator;

.field private mTrackRectF:Landroid/graphics/RectF;

.field private mTrackStartAlpha:F

.field private mTrackStartScrollX:F

.field protected mUnSelectIndicatorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastIndicatorEntryWidth:I

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 7
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFixedMaxPagesCount:I

    .line 8
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 9
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    .line 12
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 13
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    .line 14
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    .line 15
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 16
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 23
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 24
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 25
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    const/16 v2, 0x320

    .line 26
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurRadius:I

    .line 27
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 28
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    .line 29
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 30
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotWapRectF:Landroid/graphics/RectF;

    .line 31
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 32
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 33
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    .line 34
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    .line 35
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    .line 36
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    .line 37
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 38
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 39
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTargetBgWidthOffset:F

    .line 40
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    .line 41
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 43
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentScale:F

    .line 44
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 45
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    .line 46
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 47
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryBgWidth:I

    const/16 v0, 0xff

    .line 48
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    .line 49
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    .line 50
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    const/4 v0, 0x4

    .line 51
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 52
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFakeState:I

    .line 53
    new-instance v0, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 54
    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mExtraIndicatorPivotY:I

    .line 55
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorVisible:Z

    .line 56
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawSnapShoot:Z

    .line 57
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawFocusFlag:Z

    .line 58
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawHoverFlag:Z

    .line 59
    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mHoverStateHasChanged:Z

    .line 60
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTypedValue(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 63
    instance-of p2, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p2, :cond_c7

    .line 64
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    goto :goto_cb

    .line 65
    :cond_c7
    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 66
    :goto_cb
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setSize(Z)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/launcher3/R$color;->launcher_page_indicator_bright_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/launcher3/R$color;->launcher_page_indicator_bright_active_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorResource()V

    .line 70
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 73
    invoke-static {}, Lcom/android/common/logcontroller/ProviderLogController;->getDrawBackground()Z

    move-result p2

    if-eqz p2, :cond_106

    const p2, -0x7f680835

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    :cond_106
    const/4 p2, 0x2

    .line 75
    new-array p2, p2, [F

    fill-array-data p2, :array_152

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 76
    new-instance p2, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p2, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 77
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    sget p2, Lcom/android/launcher3/R$dimen;->coui_round_corner_full:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 79
    new-instance p1, Lcom/android/launcher3/search/IndicatorEntry;

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/search/IndicatorEntry;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 80
    new-instance p1, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    .line 81
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    .line 82
    new-instance p1, Lcom/android/quickstep/util/animation/AnimationImpl;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/animation/AnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimationImpl:Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 83
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initViewState()V

    .line 84
    new-instance p1, Lcom/android/launcher/layout/FocusHoverAnimManager;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/FocusHoverAnimManager;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 85
    invoke-virtual {p0, p3}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    return-void

    nop

    :array_152
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static bridge synthetic A(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic B(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateAdjacentTrackRectF(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onPageEndTransition$0(Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private adjustPadding()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_13

    .line 5
    .line 6
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_13

    .line 11
    .line 12
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingHorizontal:I

    .line 13
    .line 14
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBreenoEntryPaddingVertical:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingHorizontal:I

    .line 21
    .line 22
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingVertical:I

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    return-void
.end method

.method private autoPlay()V
    .registers 5

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    .line 10
    .line 11
    if-lt v0, v1, :cond_1f

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1f

    .line 19
    .line 20
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 21
    .line 22
    invoke-direct {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    .line 26
    .line 27
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    .line 28
    .line 29
    invoke-direct {p0, v1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    int-to-float v0, v0

    .line 33
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    div-float/2addr v0, v1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 57
    .line 58
    const/high16 v2, 0x437f0000    # 255.0f

    .line 59
    .line 60
    if-eqz v1, :cond_5b

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz v1, :cond_47

    .line 65
    .line 66
    mul-float v3, v0, v2

    .line 67
    .line 68
    float-to-int v3, v3

    .line 69
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    .line 71
    .line 72
    :cond_47
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    if-eqz v1, :cond_51

    .line 75
    .line 76
    mul-float v3, v0, v2

    .line 77
    .line 78
    float-to-int v3, v3

    .line 79
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    .line 81
    .line 82
    :cond_51
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    if-eqz v1, :cond_64

    .line 85
    .line 86
    mul-float/2addr v0, v2

    .line 87
    float-to-int v0, v0

    .line 88
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_64

    .line 92
    :cond_5b
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    .line 93
    .line 94
    if-eqz v1, :cond_64

    .line 95
    .line 96
    mul-float/2addr v0, v2

    .line 97
    float-to-int v0, v0

    .line 98
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    .line 100
    .line 101
    :cond_64
    :goto_64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onRusConfigChanged$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onPageBeginTransition$1(Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private calculateFadeOutBorder()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateStateChangeOffset(I)F

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingHorizontal:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    add-float/2addr v1, v0

    .line 10
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLeftFadeOutBorder:F

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingHorizontal:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    add-float/2addr v2, v0

    .line 21
    sub-float/2addr v1, v2

    .line 22
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRightFadeOutBorder:F

    .line 23
    .line 24
    return-void
.end method

.method private calculateFinalPostion(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    mul-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    .line 16
    .line 17
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    add-float/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    .line 22
    .line 23
    return-void
.end method

.method private calculateOffsetX(II)F
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sub-int/2addr v0, p0

    .line 14
    int-to-float p0, v0

    .line 15
    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr p0, p1

    .line 18
    return p0
.end method

.method private calculateParam()V
    .registers 2

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam(Z)V

    return-void
.end method

.method private calculateParam(Z)V
    .registers 3

    if-nez p1, :cond_18

    .line 1
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_10
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 3
    :cond_18
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    .line 4
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :cond_24
    return-void
.end method

.method private calculateStateChangeOffset(I)F
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_68

    .line 6
    .line 7
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_1f

    .line 11
    .line 12
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntryBgWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-lt p1, v1, :cond_2f

    .line 31
    .line 32
    :cond_1f
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 33
    .line 34
    if-ne p1, v0, :cond_31

    .line 35
    .line 36
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntryBgWidth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ge p1, v1, :cond_31

    .line 47
    .line 48
    :cond_2f
    const/4 p1, 0x1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 p1, 0x0

    .line 51
    :goto_32
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_58

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 58
    .line 59
    if-eqz v1, :cond_58

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntry;->isEntryEnableState()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_58

    .line 66
    .line 67
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFakeState:I

    .line 68
    .line 69
    if-ne v1, v0, :cond_4d

    .line 70
    .line 71
    if-eqz p1, :cond_49

    .line 72
    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 75
    .line 76
    :goto_4b
    neg-float p0, p0

    .line 77
    goto :goto_69

    .line 78
    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateOffsetX(II)F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    goto :goto_69

    .line 89
    :cond_58
    if-eqz p1, :cond_65

    .line 90
    .line 91
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateOffsetX(II)F

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    goto :goto_69

    .line 102
    :cond_65
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 103
    .line 104
    goto :goto_4b

    .line 105
    :cond_68
    const/4 p0, 0x0

    .line 106
    :goto_69
    return p0
.end method

.method private calculateSupportIndicatorCount(I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sub-int/2addr p1, v0

    .line 11
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 15
    .line 16
    add-int/2addr p0, v0

    .line 17
    div-int/2addr p1, p0

    .line 18
    int-to-double p0, p1

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    double-to-int p0, p0

    .line 24
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    const/4 p1, 0x4

    .line 27
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method private computeExpandedOffset(FIIII)F
    .registers 8

    .line 1
    mul-int/lit8 v0, p2, 0x2

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sub-int/2addr v0, p3

    .line 6
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    cmpl-float p0, p0, v1

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ltz p0, :cond_21

    .line 14
    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    return p1

    .line 18
    :cond_11
    add-int/lit8 p4, p4, -0x28

    .line 19
    .line 20
    div-int/lit8 p4, p4, 0xa

    .line 21
    .line 22
    rsub-int/lit8 p0, p3, 0xb

    .line 23
    .line 24
    mul-int/2addr p0, p4

    .line 25
    int-to-float p0, p0

    .line 26
    div-float/2addr p0, v1

    .line 27
    const/high16 p1, 0x41a00000    # 20.0f

    .line 28
    .line 29
    add-float/2addr p0, p1

    .line 30
    mul-int/2addr p4, p2

    .line 31
    int-to-float p1, p4

    .line 32
    add-float/2addr p0, p1

    .line 33
    return p0

    .line 34
    :cond_21
    if-nez v0, :cond_24

    .line 35
    .line 36
    return p1

    .line 37
    :cond_24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    mul-int/2addr p0, p5

    .line 42
    div-int/2addr p0, v0

    .line 43
    int-to-float p0, p0

    .line 44
    div-float/2addr p0, v1

    .line 45
    sub-float/2addr p1, p0

    .line 46
    return p1
.end method

.method public static bridge synthetic d(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    .line 2
    .line 3
    return p0
.end method

.method private doPageNumChangedAnimIfNeed(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->isStateBgAnimRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 13
    .line 14
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_2e

    .line 19
    .line 20
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-eq v0, v1, :cond_2e

    .line 33
    .line 34
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 35
    .line 36
    if-ge v0, v1, :cond_2e

    .line 37
    .line 38
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    cmpg-float v0, v0, v1

    .line 42
    .line 43
    if-gez v0, :cond_2e

    .line 44
    .line 45
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 46
    .line 47
    :cond_2e
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startPageNumChangeAnim(II)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private drawAnimateBitmapIndicator(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_3c

    .line 11
    .line 12
    add-int/lit8 v4, v0, -0x1

    .line 13
    .line 14
    if-ne v2, v4, :cond_10

    .line 15
    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v3, v1

    .line 18
    :goto_11
    if-eqz v3, :cond_18

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    :goto_1e
    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    sub-float/2addr v5, v4

    .line 36
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    .line 37
    .line 38
    mul-float/2addr v5, v6

    .line 39
    add-float/2addr v5, v4

    .line 40
    iget-boolean v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 41
    .line 42
    if-eqz v6, :cond_31

    .line 43
    .line 44
    if-nez v2, :cond_31

    .line 45
    .line 46
    invoke-direct {p0, p1, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawAssistIndicator(Landroid/graphics/Canvas;F)V

    .line 47
    .line 48
    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-direct {p0, p1, v5, v2, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawUnSelectorIndicator(Landroid/graphics/Canvas;FIZ)V

    .line 51
    .line 52
    .line 53
    :goto_34
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 54
    .line 55
    invoke-virtual {v3, v2, v4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->putPageLeft(IF)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_8

    .line 61
    :cond_3c
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_54

    .line 66
    .line 67
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mapNumber(I)[I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    array-length v1, v0

    .line 74
    sub-int/2addr v1, v3

    .line 75
    :goto_4a
    if-ltz v1, :cond_59

    .line 76
    .line 77
    aget v2, v0, v1

    .line 78
    .line 79
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawSelectorIndicator(Landroid/graphics/Canvas;I)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, -0x1

    .line 83
    .line 84
    goto :goto_4a

    .line 85
    :cond_54
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 86
    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawSelectorIndicator(Landroid/graphics/Canvas;I)V

    .line 88
    .line 89
    .line 90
    :cond_59
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    .line 91
    .line 92
    if-eqz p1, :cond_60

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    .line 95
    .line 96
    .line 97
    :cond_60
    return-void
.end method

.method private drawAssistIndicator(Landroid/graphics/Canvas;F)V
    .registers 12

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40c00000    # 6.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    div-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    float-to-int v2, v0

    .line 19
    mul-int/lit8 v2, v2, 0x3

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_17
    const/4 v4, 0x1

    .line 25
    if-gt v3, v4, :cond_61

    .line 26
    .line 27
    new-instance v4, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    .line 32
    iput p2, v4, Landroid/graphics/RectF;->left:F

    .line 33
    .line 34
    int-to-float v5, v1

    .line 35
    mul-int/lit8 v6, v3, 0x4

    .line 36
    .line 37
    int-to-float v6, v6

    .line 38
    mul-float/2addr v6, v0

    .line 39
    add-float/2addr v6, v5

    .line 40
    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 43
    .line 44
    int-to-float v5, v5

    .line 45
    add-float/2addr v5, p2

    .line 46
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 47
    .line 48
    const/high16 v5, 0x40000000    # 2.0f

    .line 49
    .line 50
    mul-float/2addr v5, v0

    .line 51
    add-float/2addr v5, v6

    .line 52
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    if-eqz v5, :cond_5e

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_50

    .line 69
    .line 70
    int-to-float v7, v5

    .line 71
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 72
    .line 73
    mul-float/2addr v7, v8

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    mul-float/2addr v8, v7

    .line 79
    float-to-int v7, v8

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v7, v2

    .line 82
    :goto_51
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {p1, v4, v0, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_17

    .line 98
    :cond_61
    return-void
.end method

.method private drawBackgroundIfNeeded(Landroid/graphics/Canvas;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 10
    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    if-lez p2, :cond_11

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowBackground:Z

    .line 20
    .line 21
    if-eq v1, v0, :cond_1b

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowBackground:Z

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsColor()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    if-eqz v0, :cond_34

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 43
    .line 44
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 45
    .line 46
    int-to-float v1, v0

    .line 47
    int-to-float v0, v0

    .line 48
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    return-void
.end method

.method private drawBitmapIndicator(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    div-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_11
    if-ge v3, v0, :cond_c3

    .line 19
    .line 20
    add-int/lit8 v4, v0, -0x1

    .line 21
    .line 22
    if-ne v3, v4, :cond_19

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v4, v2

    .line 27
    :goto_1a
    if-eqz v4, :cond_21

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    goto :goto_27

    .line 34
    :cond_21
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 35
    .line 36
    invoke-virtual {v5, v3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    :goto_27
    invoke-direct {p0, v5, v3, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    sub-float/2addr v6, v5

    .line 45
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    .line 46
    .line 47
    mul-float/2addr v6, v7

    .line 48
    add-float/2addr v6, v5

    .line 49
    float-to-int v6, v6

    .line 50
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 51
    .line 52
    if-ne v3, v7, :cond_38

    .line 53
    .line 54
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    goto :goto_43

    .line 57
    :cond_38
    iget-boolean v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 58
    .line 59
    if-eqz v7, :cond_41

    .line 60
    .line 61
    if-nez v3, :cond_41

    .line 62
    .line 63
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    goto :goto_43

    .line 66
    :cond_41
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    :goto_43
    iget-object v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 69
    .line 70
    invoke-virtual {v8, v4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getAnimAlpha(Z)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/16 v8, 0xff

    .line 75
    .line 76
    if-ne v4, v8, :cond_57

    .line 77
    .line 78
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 79
    .line 80
    add-int/2addr v8, v6

    .line 81
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 82
    .line 83
    add-int/2addr v9, v1

    .line 84
    invoke-virtual {v7, v6, v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    .line 86
    .line 87
    goto :goto_72

    .line 88
    :cond_57
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 89
    .line 90
    mul-int v10, v4, v9

    .line 91
    .line 92
    div-int/2addr v10, v8

    .line 93
    iget v11, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 94
    .line 95
    mul-int v12, v4, v11

    .line 96
    .line 97
    div-int/2addr v12, v8

    .line 98
    div-int/lit8 v9, v9, 0x2

    .line 99
    .line 100
    add-int/2addr v9, v6

    .line 101
    div-int/lit8 v8, v10, 0x2

    .line 102
    .line 103
    sub-int/2addr v9, v8

    .line 104
    div-int/lit8 v11, v11, 0x2

    .line 105
    .line 106
    add-int/2addr v11, v1

    .line 107
    div-int/lit8 v8, v12, 0x2

    .line 108
    .line 109
    sub-int/2addr v11, v8

    .line 110
    add-int/2addr v10, v9

    .line 111
    add-int/2addr v12, v11

    .line 112
    invoke-virtual {v7, v9, v11, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    .line 114
    .line 115
    :goto_72
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_83

    .line 120
    .line 121
    int-to-float v4, v4

    .line 122
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 123
    .line 124
    mul-float/2addr v4, v8

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    mul-float/2addr v8, v4

    .line 130
    float-to-int v4, v8

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    move v4, v2

    .line 133
    :goto_84
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 140
    .line 141
    int-to-float v7, v6

    .line 142
    invoke-virtual {v4, v3, v7}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->putPageLeft(IF)V

    .line 143
    .line 144
    .line 145
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 146
    .line 147
    invoke-virtual {v4, v3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getPageSwitchAlpha(I)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_bf

    .line 152
    .line 153
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    .line 155
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_ab

    .line 160
    .line 161
    int-to-float v4, v4

    .line 162
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 163
    .line 164
    mul-float/2addr v4, v8

    .line 165
    invoke-virtual {p0, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    mul-float/2addr v5, v4

    .line 170
    float-to-int v4, v5

    .line 171
    goto :goto_ac

    .line 172
    :cond_ab
    move v4, v2

    .line 173
    :goto_ac
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    .line 178
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 179
    .line 180
    add-int/2addr v5, v6

    .line 181
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 182
    .line 183
    add-int/2addr v7, v1

    .line 184
    invoke-virtual {v4, v6, v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    .line 186
    .line 187
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    .line 191
    .line 192
    :cond_bf
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto/16 :goto_11

    .line 195
    .line 196
    :cond_c3
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    .line 197
    .line 198
    if-eqz p1, :cond_ca

    .line 199
    .line 200
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    .line 201
    .line 202
    .line 203
    :cond_ca
    return-void
.end method

.method private drawIndicatorContent(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFadeOutBorder()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v2, v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    div-float/2addr v4, v3

    .line 29
    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam()V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2a

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawAnimateBitmapIndicator(Landroid/graphics/Canvas;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawBitmapIndicator(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    :goto_2d
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private drawIndicatorEntryContent(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntryEnable()Z

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
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentScale:F

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    div-int/lit8 v3, v3, 0x2

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    div-int/lit8 v4, v4, 0x2

    .line 39
    .line 40
    int-to-float v4, v4

    .line 41
    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_60

    .line 50
    .line 51
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextWidth:F

    .line 52
    .line 53
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 54
    .line 55
    int-to-float v6, v6

    .line 56
    cmpl-float v5, v5, v6

    .line 57
    .line 58
    if-lez v5, :cond_60

    .line 59
    .line 60
    const-string v5, "..."

    .line 61
    .line 62
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 67
    .line 68
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 69
    .line 70
    int-to-float v7, v7

    .line 71
    sub-float/2addr v7, v3

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v8, 0x1

    .line 74
    invoke-virtual {v6, v2, v8, v7, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_60
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 98
    .line 99
    if-eqz v3, :cond_6d

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    :cond_6d
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 111
    .line 112
    if-eqz v3, :cond_83

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    div-int/lit8 v1, v1, 0x2

    .line 119
    .line 120
    int-to-float v1, v1

    .line 121
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 122
    .line 123
    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 124
    .line 125
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 126
    .line 127
    add-float/2addr v5, v3

    .line 128
    const/high16 v3, 0x40000000    # 2.0f

    .line 129
    .line 130
    div-float/2addr v5, v3

    .line 131
    sub-float/2addr v1, v5

    .line 132
    :cond_83
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 139
    .line 140
    add-int/2addr v3, v5

    .line 141
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 142
    .line 143
    add-int/2addr v3, v5

    .line 144
    iget-boolean v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 145
    .line 146
    if-eqz v5, :cond_c6

    .line 147
    .line 148
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    sub-int/2addr v6, v7

    .line 159
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 160
    .line 161
    sub-int/2addr v6, v7

    .line 162
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 163
    .line 164
    add-int/2addr v6, v7

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 170
    .line 171
    sub-int/2addr v7, v8

    .line 172
    div-int/lit8 v7, v7, 0x2

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    sub-int/2addr v8, v9

    .line 183
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 184
    .line 185
    add-int/2addr v8, v9

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    iget v10, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 191
    .line 192
    add-int/2addr v9, v10

    .line 193
    div-int/lit8 v9, v9, 0x2

    .line 194
    .line 195
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    .line 197
    .line 198
    goto :goto_ee

    .line 199
    :cond_c6
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 206
    .line 207
    sub-int/2addr v6, v7

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 213
    .line 214
    sub-int/2addr v7, v8

    .line 215
    div-int/lit8 v7, v7, 0x2

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 222
    .line 223
    sub-int/2addr v8, v9

    .line 224
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 225
    .line 226
    add-int/2addr v8, v9

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    iget v10, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 232
    .line 233
    add-int/2addr v9, v10

    .line 234
    div-int/lit8 v9, v9, 0x2

    .line 235
    .line 236
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    .line 238
    .line 239
    :goto_ee
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 240
    .line 241
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    const/high16 v7, 0x437f0000    # 255.0f

    .line 246
    .line 247
    if-eqz v6, :cond_fd

    .line 248
    .line 249
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 250
    .line 251
    mul-float/2addr v6, v7

    .line 252
    float-to-int v6, v6

    .line 253
    goto :goto_fe

    .line 254
    :cond_fd
    move v6, v4

    .line 255
    :goto_fe
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 256
    .line 257
    .line 258
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    .line 262
    .line 263
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 264
    .line 265
    if-eqz v5, :cond_117

    .line 266
    .line 267
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-eqz v6, :cond_114

    .line 272
    .line 273
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 274
    .line 275
    mul-float/2addr v4, v7

    .line 276
    float-to-int v4, v4

    .line 277
    :cond_114
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    .line 279
    .line 280
    :cond_117
    iget-boolean v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 281
    .line 282
    if-eqz v4, :cond_123

    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    sub-int/2addr v4, v3

    .line 289
    div-int/lit8 v4, v4, 0x2

    .line 290
    .line 291
    goto :goto_133

    .line 292
    :cond_123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    sub-int/2addr v4, v3

    .line 297
    div-int/lit8 v4, v4, 0x2

    .line 298
    .line 299
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 300
    .line 301
    sub-int/2addr v4, v3

    .line 302
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 303
    .line 304
    add-int/2addr v4, v3

    .line 305
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 306
    .line 307
    add-int/2addr v4, v3

    .line 308
    :goto_133
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 309
    .line 310
    if-eqz p0, :cond_13b

    .line 311
    .line 312
    int-to-float v3, v4

    .line 313
    invoke-virtual {p1, v2, v3, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    .line 315
    .line 316
    :cond_13b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method private drawSelectorIndicator(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_21

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0, v1, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    sub-float/2addr p2, v1

    .line 22
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    .line 23
    .line 24
    mul-float/2addr p2, v0

    .line 25
    add-float/2addr p2, v1

    .line 26
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    add-float/2addr v0, p2

    .line 30
    invoke-direct {p0, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    .line 31
    .line 32
    .line 33
    goto :goto_2e

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    add-float/2addr v0, p2

    .line 44
    invoke-direct {p0, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    if-eqz p2, :cond_84

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const/high16 v2, 0x437f0000    # 255.0f

    .line 55
    .line 56
    if-eqz v0, :cond_54

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_50

    .line 63
    .line 64
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 65
    .line 66
    mul-float/2addr v0, v2

    .line 67
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 68
    .line 69
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    mul-float/2addr v3, v0

    .line 76
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 77
    .line 78
    mul-float/2addr v3, v0

    .line 79
    float-to-int v0, v3

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v0, v1

    .line 82
    :goto_51
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    .line 84
    .line 85
    :cond_54
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {p1, p2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_78

    .line 101
    .line 102
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 103
    .line 104
    mul-float/2addr v0, v2

    .line 105
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 106
    .line 107
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 108
    .line 109
    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    mul-float/2addr v1, v0

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    .line 116
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 117
    .line 118
    sub-float/2addr v0, v2

    .line 119
    mul-float/2addr v0, v1

    .line 120
    float-to-int v1, v0

    .line 121
    :cond_78
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 125
    .line 126
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    :cond_84
    return-void
.end method

.method private drawUnSelectorIndicator(Landroid/graphics/Canvas;FIZ)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 8
    .line 9
    invoke-virtual {v1, p3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getPageSwitchAlpha(I)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p3, :cond_4f

    .line 15
    .line 16
    iget p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    .line 17
    .line 18
    add-float v2, p2, p4

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p1, v2, v0, p4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    iget-object p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    if-eqz p4, :cond_86

    .line 29
    .line 30
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_33

    .line 41
    .line 42
    int-to-float p3, p3

    .line 43
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 44
    .line 45
    mul-float/2addr p3, v1

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    mul-float/2addr v1, p3

    .line 51
    float-to-int v1, v1

    .line 52
    :cond_33
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_41

    .line 60
    .line 61
    iget p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    if-eq p3, v1, :cond_49

    .line 65
    .line 66
    :cond_41
    iget p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    .line 67
    .line 68
    add-float/2addr p2, p3

    .line 69
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_86

    .line 80
    :cond_4f
    iget-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getAnimAlpha(Z)I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    int-to-float p3, p3

    .line 87
    const/high16 p4, 0x437f0000    # 255.0f

    .line 88
    .line 89
    div-float/2addr p3, p4

    .line 90
    iget-object p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 91
    .line 92
    if-eqz p4, :cond_86

    .line 93
    .line 94
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getDrawVisible()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_74

    .line 105
    .line 106
    int-to-float v1, p4

    .line 107
    mul-float/2addr v1, p3

    .line 108
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 109
    .line 110
    mul-float/2addr v1, v3

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    mul-float/2addr v3, v1

    .line 116
    float-to-int v1, v3

    .line 117
    :cond_74
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    .line 121
    .line 122
    add-float/2addr p2, v1

    .line 123
    int-to-float v0, v0

    .line 124
    mul-float/2addr v1, p3

    .line 125
    iget-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 131
    .line 132
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    .line 134
    .line 135
    :cond_86
    :goto_86
    return-void
.end method

.method public static bridge synthetic e(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method private getAnimColor()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 4
    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 10
    .line 11
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 16
    .line 17
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method private getDefaultBreenoText()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/content/res/Resources;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 27
    invoke-direct {v1, v0, v2, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 30
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 34
    new-instance v0, Ljava/util/Locale;

    .line 36
    const-string/jumbo v2, "zh"

    .line 39
    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 45
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 49
    invoke-virtual {v1, p0, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 52
    sget p0, Lcom/android/launcher3/R$string;->breeno_entry_text:I

    .line 54
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDrawVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawSnapShoot:Z

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorVisible:Z

    .line 6
    .line 7
    if-eqz p0, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 p0, 0x1

    .line 13
    :goto_c
    return p0
.end method

.method private getEndxByPosition(FII)F
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int v6, v0, v1

    .line 15
    .line 16
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    move v3, p1

    .line 20
    move v4, p2

    .line 21
    move v5, p3

    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->computeExpandedOffset(FIIII)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private getFixedMaxPagesCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFixedMaxPagesCount:I

    .line 2
    .line 3
    if-lez v0, :cond_5

    .line 4
    .line 5
    goto :goto_d

    .line 6
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntryBgWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateSupportIndicatorCount(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_d
    return v0
.end method

.method private getIndicatorEntryBgWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryBgWidth:I

    .line 2
    .line 3
    if-lez v0, :cond_5

    .line 4
    .line 5
    return v0

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAtLeastIndicatorEntryWidth()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private getLauncherDrawableByNameForUser(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, p1, v1}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_f

    .line 14
    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_17
    return-object p1
.end method

.method private getMaxPagesCountOfCurState()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_8

    .line 5
    .line 6
    const/16 p0, 0x16

    .line 7
    .line 8
    goto :goto_c

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_c
    return p0
.end method

.method private getPageIndex(Landroid/view/MotionEvent;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    sub-float/2addr p1, v0

    .line 11
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 12
    .line 13
    sub-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 23
    .line 24
    div-int/lit8 v3, v2, 0x2

    .line 25
    .line 26
    add-int/2addr v3, v0

    .line 27
    int-to-float v0, v3

    .line 28
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 29
    .line 30
    sub-float/2addr v0, v3

    .line 31
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 32
    .line 33
    add-float/2addr v0, v3

    .line 34
    float-to-int v0, v0

    .line 35
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 36
    .line 37
    if-eqz v3, :cond_28

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_28
    const/4 v1, 0x1

    .line 42
    if-gt p1, v0, :cond_2c

    .line 43
    .line 44
    goto :goto_40

    .line 45
    :cond_2c
    move v3, v1

    .line 46
    :goto_2d
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 47
    .line 48
    if-ge v3, v2, :cond_40

    .line 49
    .line 50
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 51
    .line 52
    add-int/2addr v2, v0

    .line 53
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 54
    .line 55
    add-int/2addr v2, v4

    .line 56
    if-lt p1, v0, :cond_3c

    .line 57
    .line 58
    if-gt p1, v2, :cond_3c

    .line 59
    .line 60
    goto :goto_40

    .line 61
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    move v0, v2

    .line 64
    goto :goto_2d

    .line 65
    :cond_40
    :goto_40
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 66
    .line 67
    add-int/lit8 p1, p0, -0x1

    .line 68
    .line 69
    if-le v3, p1, :cond_48

    .line 70
    .line 71
    add-int/lit8 v3, p0, -0x1

    .line 72
    .line 73
    :cond_48
    return v3
.end method

.method private getRealActivePage()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 10
    .line 11
    sub-int/2addr v0, p0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 14
    .line 15
    :goto_e
    return v0
.end method

.method public static bridge synthetic h(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 2
    .line 3
    return p0
.end method

.method private hasDockerBg()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_17

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    .line 8
    .line 9
    if-eqz v0, :cond_15

    .line 10
    .line 11
    sget-object v0, Lcom/android/launcher/custom/OplusToolUtils;->INSTANCE:Lcom/android/launcher/custom/OplusToolUtils;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lcom/android/launcher/custom/IBrandExt;->isSupportDockerBg(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_15

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x1

    .line 25
    :goto_18
    return p0
.end method

.method public static bridge synthetic i(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 2
    .line 3
    return p0
.end method

.method private initBlurBackground()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/android/launcher3/R$id;->page_indicator:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->isSupportNewBlur(Landroid/content/Context;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_80

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 21
    .line 22
    if-nez v0, :cond_26

    .line 23
    .line 24
    new-instance v0, Lcom/android/launcher/pageindicators/OplusPageIndicator$DrawCallbackImageView;

    .line 25
    .line 26
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {v0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator$DrawCallbackImageView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    invoke-virtual {v0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator$DrawCallbackImageView;->setOutlineRadius(F)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 38
    .line 39
    :cond_26
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_33

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 60
    .line 61
    if-nez v3, :cond_52

    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 66
    .line 67
    const/4 v5, 0x3

    .line 68
    invoke-static {v3, v4, v1, v1, v5}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->prepareBlur(Landroid/view/View;Landroid/content/Context;ZZI)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_70

    .line 73
    .line 74
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 75
    .line 76
    int-to-float v3, v3

    .line 77
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setBlurCornerRadius(FZLcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 81
    .line 82
    goto :goto_70

    .line 83
    :cond_52
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    instance-of v3, v3, Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 90
    .line 91
    if-nez v3, :cond_63

    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setBlurBgToView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    :cond_63
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setIgnorePageScrollBlurAnim(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 106
    .line 107
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 108
    .line 109
    int-to-float v3, v3

    .line 110
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setBlurCornerRadius(FZLcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 111
    .line 112
    .line 113
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 114
    .line 115
    if-eqz v0, :cond_97

    .line 116
    .line 117
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurRadius:I

    .line 118
    .line 119
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBlendMode:I

    .line 120
    .line 121
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBlendColor:I

    .line 122
    .line 123
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurMixColor:I

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setBlurParams(IIII)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 126
    .line 127
    .line 128
    goto :goto_97

    .line 129
    :cond_80
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 130
    .line 131
    if-eqz v0, :cond_97

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_97

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->recycleBlurBackground()V

    .line 150
    .line 151
    .line 152
    :cond_97
    :goto_97
    return-void
.end method

.method private initViewState()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->initViewStateIfNeeded()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method private isBreenoEntryEnable()Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntryEnable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_e

    .line 6
    .line 7
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_e

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method private isDoubleDot()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_e

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static bridge synthetic j(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic k(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic l(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic lambda$onPageBeginTransition$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_e

    .line 6
    .line 7
    const-string p0, "OplusPageIndicator"

    .line 8
    .line 9
    const-string p1, "PageBegin.mShowExitAnimator.update, value is null!"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAlpha(F)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private synthetic lambda$onPageEndTransition$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_e

    .line 6
    .line 7
    const-string p0, "OplusPageIndicator"

    .line 8
    .line 9
    const-string p1, "PageEnd.mShowExitAnimator.update, value is null!"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    sub-float/2addr v0, p1

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private synthetic lambda$onRusConfigChanged$2()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->changeSupportState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic m(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 2
    .line 3
    return p0
.end method

.method private modifyActivePageValueForSwitchMode(I)I
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_17

    .line 3
    .line 4
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 5
    .line 6
    sub-int/2addr v1, v0

    .line 7
    if-ge v1, p1, :cond_17

    .line 8
    .line 9
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 22
    .line 23
    sub-int/2addr p1, v0

    .line 24
    :cond_17
    :goto_17
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 25
    .line 26
    add-int/2addr p1, v1

    .line 27
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 28
    .line 29
    if-lt p0, v0, :cond_24

    .line 30
    .line 31
    int-to-long v1, p1

    .line 32
    sub-int/2addr p0, v0

    .line 33
    invoke-static {p0, v1, v2}, Lcom/android/launcher/pageindicators/a;->a(IJ)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :cond_24
    return p1
.end method

.method public static bridge synthetic n(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Lcom/android/launcher/Launcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic o(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic p(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic q(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic r(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    .line 2
    .line 3
    return p0
.end method

.method private recycleBlurBackground()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public static bridge synthetic s(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method private setActivePage(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 2
    .line 3
    return-void
.end method

.method private startTrackAnimation()V
    .registers 8

    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 7
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartAlpha:F

    .line 9
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 11
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartScrollX:F

    .line 13
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 18
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v1, v2

    .line 21
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    sub-int/2addr v1, v3

    goto :goto_1a

    .line 25
    :cond_18
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    .line 27
    :goto_1a
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result v3

    .line 31
    iget-boolean v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2d

    .line 36
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    sub-int/2addr v3, v0

    if-lt v6, v3, :cond_2d

    .line 41
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v3, v0

    if-lt v1, v3, :cond_35

    :cond_2d
    if-nez v4, :cond_37

    .line 48
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    if-gt v3, v2, :cond_37

    if-le v1, v2, :cond_37

    :cond_35
    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v5

    .line 57
    :goto_38
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    .line 59
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 65
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    if-ne v3, v0, :cond_45

    goto :goto_46

    :cond_45
    move v2, v5

    .line 71
    :goto_46
    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    .line 73
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v3, "startTrackAnimation: needScrollX="

    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, ", mSlideLeftToRight="

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, ", pageChanged="

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, ",ActivePage="

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, ",ActiveIndex="

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 123
    const-string v4, ", realLastPage="

    .line 125
    const-string v5, ", mLastActiveIndex="

    .line 127
    invoke-static {v3, v1, v4, v5, v2}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 130
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    .line 132
    const-string v3, "OplusPageIndicator"

    .line 134
    invoke-static {v2, v1, v3}, Lcom/android/common/config/l;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_90

    .line 141
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 145
    :cond_90
    new-array v0, v0, [F

    .line 147
    fill-array-data v0, :array_c4

    .line 150
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    .line 156
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 158
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 161
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    .line 173
    new-instance v1, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;

    .line 175
    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    .line 183
    new-instance v1, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;

    .line 185
    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_c4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopTrackAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public static bridge synthetic t(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartAlpha:F

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic u(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartScrollX:F

    .line 2
    .line 3
    return p0
.end method

.method private updateActiveIndex(I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getRealActivePage()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_12

    .line 13
    .line 14
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 15
    .line 16
    sub-int/2addr v2, v3

    .line 17
    sub-int p1, v2, p1

    .line 18
    .line 19
    :cond_12
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    if-ne v2, v4, :cond_1f

    .line 23
    .line 24
    add-int/lit8 v2, v0, -0x1

    .line 25
    .line 26
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 31
    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3e

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3e

    .line 41
    .line 42
    if-le v1, p1, :cond_3e

    .line 43
    .line 44
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 45
    .line 46
    sub-int/2addr v2, v3

    .line 47
    if-ge v1, v2, :cond_3e

    .line 48
    .line 49
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 50
    .line 51
    sub-int p1, v1, p1

    .line 52
    .line 53
    add-int/2addr p1, v2

    .line 54
    add-int/lit8 v2, v0, -0x2

    .line 55
    .line 56
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 61
    .line 62
    goto :goto_64

    .line 63
    :cond_3e
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 64
    .line 65
    if-eqz v2, :cond_51

    .line 66
    .line 67
    if-ge v1, p1, :cond_51

    .line 68
    .line 69
    if-lez v1, :cond_51

    .line 70
    .line 71
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 72
    .line 73
    sub-int/2addr p1, v1

    .line 74
    sub-int/2addr v2, p1

    .line 75
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 80
    .line 81
    goto :goto_64

    .line 82
    :cond_51
    if-nez v1, :cond_57

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 86
    .line 87
    goto :goto_64

    .line 88
    :cond_57
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 89
    .line 90
    add-int/lit8 v2, p1, -0x1

    .line 91
    .line 92
    if-ne v1, v2, :cond_64

    .line 93
    .line 94
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    sub-int/2addr p1, v3

    .line 99
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 100
    .line 101
    :cond_64
    :goto_64
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 102
    .line 103
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 104
    .line 105
    add-int/2addr p1, v2

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_a5

    .line 111
    .line 112
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 113
    .line 114
    if-eqz v2, :cond_a5

    .line 115
    .line 116
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 117
    .line 118
    if-le v2, v0, :cond_a5

    .line 119
    .line 120
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 121
    .line 122
    add-int/lit8 v5, v0, -0x2

    .line 123
    .line 124
    if-lt v4, v5, :cond_9a

    .line 125
    .line 126
    if-ge v1, v2, :cond_9a

    .line 127
    .line 128
    sub-int v2, v1, v5

    .line 129
    .line 130
    neg-int v2, v2

    .line 131
    mul-int/2addr v2, p1

    .line 132
    int-to-float p1, v2

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 134
    .line 135
    .line 136
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 137
    .line 138
    add-int/lit8 v2, p1, -0x1

    .line 139
    .line 140
    if-ne v1, v2, :cond_a5

    .line 141
    .line 142
    sub-int/2addr p1, v0

    .line 143
    neg-int p1, p1

    .line 144
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 145
    .line 146
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 147
    .line 148
    add-int/2addr v0, v1

    .line 149
    mul-int/2addr v0, p1

    .line 150
    int-to-float p1, v0

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 152
    .line 153
    .line 154
    goto :goto_a5

    .line 155
    :cond_9a
    if-gt v4, v3, :cond_a5

    .line 156
    .line 157
    if-lez v1, :cond_a5

    .line 158
    .line 159
    sub-int/2addr v1, v3

    .line 160
    neg-int v0, v1

    .line 161
    mul-int/2addr v0, p1

    .line 162
    int-to-float p1, v0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 164
    .line 165
    .line 166
    :cond_a5
    :goto_a5
    return-void
.end method

.method private updateAdjacentTrackRectF(FF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 19
    .line 20
    sub-int/2addr v1, v2

    .line 21
    div-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 29
    .line 30
    int-to-float v1, v2

    .line 31
    add-float/2addr v0, v1

    .line 32
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 33
    .line 34
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    iput p2, p0, Landroid/graphics/RectF;->right:F

    .line 37
    .line 38
    return-void
.end method

.method private updateBackgroundRect()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    .line 8
    .line 9
    if-eqz v1, :cond_3d

    .line 10
    .line 11
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    .line 12
    .line 13
    if-eqz v1, :cond_3d

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    int-to-float v1, v1

    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v1, v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    .line 31
    .line 32
    sub-int/2addr v3, v4

    .line 33
    int-to-float v3, v3

    .line 34
    div-float/2addr v3, v2

    .line 35
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 36
    .line 37
    int-to-float v4, v0

    .line 38
    add-float/2addr v4, v1

    .line 39
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 40
    .line 41
    sub-float/2addr v4, v5

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    sub-int/2addr v5, v0

    .line 47
    int-to-float v0, v5

    .line 48
    sub-float/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 50
    .line 51
    add-float/2addr v0, v1

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    int-to-float p0, p0

    .line 57
    sub-float/2addr p0, v3

    .line 58
    invoke-virtual {v2, v4, v3, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    .line 60
    .line 61
    goto :goto_55

    .line 62
    :cond_3d
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 63
    .line 64
    int-to-float v2, v0

    .line 65
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 66
    .line 67
    sub-float/2addr v2, v3

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sub-int/2addr v3, v0

    .line 73
    int-to-float v0, v3

    .line 74
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 75
    .line 76
    add-float/2addr v0, v3

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    int-to-float p0, p0

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v2, v3, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    .line 85
    .line 86
    :goto_55
    return-void
.end method

.method private updateBlurBgIfNeed(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1d

    .line 4
    .line 5
    const/high16 v1, 0x437f0000    # 255.0f

    .line 6
    .line 7
    div-float/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 14
    .line 15
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    float-to-int v0, v0

    .line 18
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    float-to-int v1, v1

    .line 21
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 22
    .line 23
    float-to-int v2, v2

    .line 24
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 25
    .line 26
    float-to-int p0, p0

    .line 27
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method private updatePaintsColor()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 4
    .line 5
    if-eqz v1, :cond_30

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    if-eqz v1, :cond_14

    .line 10
    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    .line 17
    .line 18
    :goto_11
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    if-eqz v1, :cond_22

    .line 24
    .line 25
    if-eqz v0, :cond_1d

    .line 26
    .line 27
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    .line 28
    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    .line 31
    .line 32
    :goto_1f
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    :cond_22
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    if-eqz v1, :cond_30

    .line 38
    .line 39
    if-eqz v0, :cond_2b

    .line 40
    .line 41
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    .line 42
    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    .line 45
    .line 46
    :goto_2d
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    :cond_30
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    if-eqz v0, :cond_37

    .line 52
    .line 53
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    .line 54
    .line 55
    goto :goto_39

    .line 56
    :cond_37
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    .line 57
    .line 58
    :goto_39
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 62
    .line 63
    if-eqz v1, :cond_4a

    .line 64
    .line 65
    if-eqz v0, :cond_45

    .line 66
    .line 67
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    .line 68
    .line 69
    goto :goto_47

    .line 70
    :cond_45
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    .line 71
    .line 72
    :goto_47
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    return-void
.end method

.method private updatePaintsShadowLayer(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_2b

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 4
    .line 5
    if-eqz p1, :cond_1c

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    if-eqz p1, :cond_d

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 12
    .line 13
    .line 14
    :cond_d
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    if-eqz p1, :cond_14

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    if-eqz p1, :cond_23

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 26
    .line 27
    .line 28
    goto :goto_23

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    if-eqz p1, :cond_23

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 34
    .line 35
    .line 36
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 37
    .line 38
    if-eqz p0, :cond_49

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 41
    .line 42
    .line 43
    goto :goto_49

    .line 44
    :cond_2b
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 45
    .line 46
    if-eqz p1, :cond_3f

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    goto :goto_44

    .line 64
    :cond_3f
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :goto_44
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method private updateTrackRectF(FF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 19
    .line 20
    sub-int/2addr v1, v2

    .line 21
    div-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 29
    .line 30
    int-to-float v1, v2

    .line 31
    add-float/2addr v0, v1

    .line 32
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 33
    .line 34
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    iput p2, p0, Landroid/graphics/RectF;->right:F

    .line 37
    .line 38
    return-void
.end method

.method public static bridge synthetic v(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic w(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic x(Lcom/android/launcher/pageindicators/OplusPageIndicator;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->doPageNumChangedAnimIfNeed(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic y(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic z(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initBlurBackground()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public alphaColor(FZ)V
    .registers 5

    .line 1
    if-eqz p2, :cond_c

    .line 2
    .line 3
    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    .line 4
    .line 5
    int-to-float v0, p2

    .line 6
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    .line 7
    .line 8
    :goto_7
    sub-int/2addr v1, p2

    .line 9
    int-to-float p2, v1

    .line 10
    mul-float/2addr p2, p1

    .line 11
    add-float/2addr p2, v0

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    .line 14
    .line 15
    int-to-float v0, p2

    .line 16
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    .line 17
    .line 18
    goto :goto_7

    .line 19
    :goto_12
    float-to-int p1, p2

    .line 20
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAnimColor()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public cancelPageNumChangeAnim()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageNumChangedAnimRunner:Ljava/lang/Runnable;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->cancelPageNumChangeAnim()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public cancelPressDragging()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->cancelPressDragging()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public cancelShowExitAnimator()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public clickForRecentAnimReverse()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mClickOptsForRecentReverse:Ls1/g;

    .line 2
    .line 3
    const-string v1, "OplusPageIndicator"

    .line 4
    .line 5
    if-nez v0, :cond_13

    .line 6
    .line 7
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_11

    .line 12
    .line 13
    const-string p0, "clickForRecentAnimReverse is null"

    .line 14
    .line 15
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_13
    check-cast v0, Lcom/android/quickstep/t2;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/quickstep/t2;->a(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_25

    .line 32
    .line 33
    const-string v3, "clickForRecentAnimReverse result:"

    .line 34
    .line 35
    invoke-static {v3, v1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_25
    iput-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mClickOptsForRecentReverse:Ls1/g;

    .line 39
    .line 40
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateBackgroundRect()V

    .line 8
    .line 9
    .line 10
    int-to-float v1, v0

    .line 11
    invoke-direct {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateBlurBgIfNeed(F)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawBackgroundIfNeeded(Landroid/graphics/Canvas;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawIndicatorEntryContent(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawIndicatorContent(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorVisible:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2b

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/launcher/layout/IGainFocusOrHoverPainter;->drawFocusFrame(Landroid/graphics/Canvas;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    const-string v0, "OplusPageIndicator"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_60

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 7
    .line 8
    if-nez v2, :cond_a

    .line 9
    .line 10
    goto :goto_60

    .line 11
    :cond_a
    invoke-virtual {v2}, Lcom/android/launcher/layout/FocusHoverAnimManager;->isSpiritAnimEnable()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_11

    .line 16
    .line 17
    return v1

    .line 18
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x7

    .line 23
    if-eq v2, v3, :cond_56

    .line 24
    .line 25
    const/16 v3, 0x9

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v2, v3, :cond_33

    .line 29
    .line 30
    const/16 v0, 0xa

    .line 31
    .line 32
    if-eq v2, v0, :cond_22

    .line 33
    .line 34
    goto :goto_5b

    .line 35
    :cond_22
    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mHoverStateHasChanged:Z

    .line 36
    .line 37
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 38
    .line 39
    if-eq v0, v4, :cond_2d

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 42
    .line 43
    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/launcher3/search/IndicatorEntry;->doReplaceAnimation(ZZIZ)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/launcher/layout/FocusHoverAnimManager;->resetWhenHoverExit()V

    .line 49
    .line 50
    .line 51
    goto :goto_5b

    .line 52
    :cond_33
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/launcher/layout/FocusHoverAnimManager;->initWhenHoverEnter()V

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 58
    .line 59
    if-eq v2, v4, :cond_47

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 65
    .line 66
    const/4 v3, 0x4

    .line 67
    invoke-virtual {v2, v1, v1, v3, v1}, Lcom/android/launcher3/search/IndicatorEntry;->doReplaceAnimation(ZZIZ)V

    .line 68
    .line 69
    .line 70
    iput-boolean v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mHoverStateHasChanged:Z

    .line 71
    .line 72
    :cond_47
    :try_start_47
    invoke-static {}, Lcom/android/statistics/HoverEventStatisticsManager;->getInstance()Lcom/android/statistics/HoverEventStatisticsManager;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, p1}, Lcom/android/statistics/HoverEventStatisticsManager;->recordHoverEvent(Landroid/view/MotionEvent;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4e} :catch_4f

    .line 77
    .line 78
    .line 79
    goto :goto_5b

    .line 80
    :catch_4f
    move-exception v1

    .line 81
    const-string v2, "dispatchHoverEvent, record statistics error, e = "

    .line 82
    .line 83
    invoke-static {v2, v0, v1}, Landroidx/fragment/app/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5b

    .line 87
    :cond_56
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/android/launcher/layout/FocusHoverAnimManager;->doAnimWhenHoverMove(Landroid/view/MotionEvent;)Z

    .line 90
    .line 91
    .line 92
    :goto_5b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :cond_60
    :goto_60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "dispatchHoverEvent, ev = "

    .line 100
    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ", mFocusFrameAnimManager = "

    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 113
    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p0, ", return false"

    .line 118
    .line 119
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return v1
.end method

.method public downTouchForRecentReverse(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDownTouchOptsForRecentReverse:Ls1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_13

    .line 5
    .line 6
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_12

    .line 11
    .line 12
    const-string p0, "OplusPageIndicator"

    .line 13
    .line 14
    const-string p1, "downTouchForRecentReverse is null"

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_12
    return v1

    .line 20
    :cond_13
    if-eqz p1, :cond_22

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_22

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDownTouchOptsForRecentReverse:Ls1/a;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Ls1/a;->accept(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_22
    return v1
.end method

.method public forceStopHaloEffect()V
    .registers 1

    .line 1
    return-void
.end method

.method public getAnimationImpl()Lcom/android/quickstep/util/animation/AnimationImpl;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimationImpl:Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAtLeastIndicatorEntryWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastIndicatorEntryWidth:I

    .line 2
    .line 3
    if-lez v0, :cond_5

    .line 4
    .line 5
    return v0

    .line 6
    :cond_5
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getBackgroundRadius()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    float-to-int v0, v0

    .line 21
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 22
    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public getBgWidthOffset()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 2
    .line 3
    return p0
.end method

.method public getBlurDrawable()Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_15

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 10
    .line 11
    if-eqz v0, :cond_15

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBgView:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public getBottomMargin(Lcom/android/launcher3/DeviceProfile;)I
    .registers 5

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;->Companion:Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper$Companion;->getMHotseatItemHeight()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->indicator()Lcom/android/launcher/layoutparam/PageIndicatorParam;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->getMIndicatorMarginBottomPx()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_49

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->workspace()Lcom/android/launcher/layoutparam/WorkspaceParam;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/WorkspaceParam;->getPaddingBottomWithNavBar()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->cellLayout()Lcom/android/launcher/layoutparam/CellLayoutParam;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/android/launcher/layoutparam/CellLayoutParam;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v1

    .line 35
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->hasDockerBg()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_31

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->indicator()Lcom/android/launcher/layoutparam/PageIndicatorParam;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->getMarginBottomOffSetYDp()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 p0, 0x0

    .line 51
    :goto_32
    add-int/2addr v2, p0

    .line 52
    add-int/2addr v2, v0

    .line 53
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->hotseat()Lcom/android/launcher/layoutparam/HotseatParam;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher/layoutparam/HotseatParam;->getMarginBottom()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    add-int/2addr p0, v2

    .line 62
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->indicator()Lcom/android/launcher/layoutparam/PageIndicatorParam;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->getWorkspacePageIndicatorHeight()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    sub-int/2addr p0, p1

    .line 71
    div-int/lit8 p0, p0, 0x2

    .line 72
    .line 73
    goto :goto_51

    .line 74
    :cond_49
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->indicator()Lcom/android/launcher/layoutparam/PageIndicatorParam;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->getMIndicatorMarginBottomPx()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    :goto_51
    return p0
.end method

.method public getBreenoDrawable(ZZ)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_46

    .line 4
    .line 5
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTargetBgWidthOffset:F

    .line 6
    .line 7
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 8
    .line 9
    sub-float/2addr v2, v3

    .line 10
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpl-float v2, v2, v3

    .line 17
    .line 18
    if-lez v2, :cond_35

    .line 19
    .line 20
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTargetBgWidthOffset:F

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setmBgOffset(F)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundPadding()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 32
    .line 33
    int-to-float v4, v2

    .line 34
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 35
    .line 36
    sub-float/2addr v4, v5

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    sub-int/2addr v5, v2

    .line 42
    int-to-float v2, v5

    .line 43
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 44
    .line 45
    add-float/2addr v2, v5

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    int-to-float v5, v5

    .line 51
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    .line 53
    .line 54
    :cond_35
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 55
    .line 56
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 57
    .line 58
    cmpg-float v3, v2, v0

    .line 59
    .line 60
    if-gez v3, :cond_46

    .line 61
    .line 62
    neg-float v2, v2

    .line 63
    float-to-int v2, v2

    .line 64
    const/16 v3, 0xc8

    .line 65
    .line 66
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v2, v1

    .line 72
    :goto_47
    const-string v3, "getBreenoDrawable: isForeground:"

    .line 73
    .line 74
    const-string v4, " backgroundRect:"

    .line 75
    .line 76
    invoke-static {v3, v4, p1}, Ls2/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, " bgOffset:"

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v4, " targetBgWidthOffset:"

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTargetBgWidthOffset:F

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-string v4, "OplusPageIndicator"

    .line 114
    .line 115
    invoke-static {v4, v3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    mul-int/lit8 v4, v2, 0x2

    .line 123
    .line 124
    add-int/2addr v4, v3

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 130
    .line 131
    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-instance v4, Landroid/graphics/Canvas;

    .line 136
    .line 137
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .line 139
    .line 140
    const/4 v5, 0x1

    .line 141
    if-eqz p1, :cond_c3

    .line 142
    .line 143
    iput-boolean v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawSnapShoot:Z

    .line 144
    .line 145
    int-to-float p1, v2

    .line 146
    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    .line 148
    .line 149
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 150
    .line 151
    cmpl-float v6, v2, v0

    .line 152
    .line 153
    if-nez v6, :cond_9e

    .line 154
    .line 155
    invoke-direct {p0, v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawIndicatorContent(Landroid/graphics/Canvas;)V

    .line 156
    .line 157
    .line 158
    goto :goto_a8

    .line 159
    :cond_9e
    const v6, 0x3f4ccccd    # 0.8f

    .line 160
    .line 161
    .line 162
    iput v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 163
    .line 164
    invoke-direct {p0, v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawIndicatorEntryContent(Landroid/graphics/Canvas;)V

    .line 165
    .line 166
    .line 167
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 168
    .line 169
    :goto_a8
    new-instance v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 170
    .line 171
    invoke-direct {v2, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 175
    .line 176
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 177
    .line 178
    add-float/2addr v4, p1

    .line 179
    float-to-int v4, v4

    .line 180
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 181
    .line 182
    float-to-int v6, v6

    .line 183
    iget v7, v3, Landroid/graphics/RectF;->right:F

    .line 184
    .line 185
    add-float/2addr v7, p1

    .line 186
    float-to-int p1, v7

    .line 187
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 188
    .line 189
    float-to-int v3, v3

    .line 190
    invoke-virtual {v2, v4, v6, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    .line 192
    .line 193
    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawSnapShoot:Z

    .line 194
    .line 195
    goto :goto_108

    .line 196
    :cond_c3
    new-instance p1, Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getBlurDrawable()Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v2, :cond_da

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;->getDefaultBgColor(Landroid/content/Context;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_f5

    .line 219
    :cond_da
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    .line 220
    .line 221
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 222
    .line 223
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 228
    .line 229
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 234
    .line 235
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    invoke-static {v2, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    .line 245
    .line 246
    :goto_f5
    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 247
    .line 248
    .line 249
    new-instance v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 250
    .line 251
    invoke-direct {v2, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    invoke-virtual {v2, v1, v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    .line 264
    .line 265
    :goto_108
    if-eqz p2, :cond_126

    .line 266
    .line 267
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 268
    .line 269
    cmpl-float p1, p1, v0

    .line 270
    .line 271
    if-eqz p1, :cond_112

    .line 272
    .line 273
    move p1, v5

    .line 274
    goto :goto_113

    .line 275
    :cond_112
    move p1, v1

    .line 276
    :goto_113
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getBlurDrawable()Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    if-eqz p2, :cond_11a

    .line 281
    .line 282
    move v1, v5

    .line 283
    :cond_11a
    sget-object p2, Lcom/android/launcher3/search/BreenoIndicatorAnimationRunner;->INSTANCE:Lcom/android/launcher3/search/BreenoIndicatorAnimationRunner;

    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    float-to-int p0, p0

    .line 292
    invoke-virtual {p2, p0, p1, v1}, Lcom/android/launcher3/search/BreenoIndicatorAnimationRunner;->recordLastIconInfo(IZZ)V

    .line 293
    .line 294
    .line 295
    :cond_126
    return-object v2
.end method

.method public getBreenoText()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isBreenoEntryEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getCalculatePages()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    .line 2
    .line 3
    return p0
.end method

.method public getCalculateWidth()I
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ", calculateWidth="

    .line 6
    .line 7
    const-string v2, "OplusPageIndicator"

    .line 8
    .line 9
    if-eqz v0, :cond_94

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 27
    .line 28
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 29
    .line 30
    add-int/2addr v4, v5

    .line 31
    int-to-float v4, v4

    .line 32
    add-float/2addr v4, v3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    int-to-float v5, v5

    .line 38
    add-float/2addr v4, v5

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    add-float/2addr v4, v5

    .line 45
    float-to-int v4, v4

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAtLeastIndicatorEntryWidth()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_a3

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v6, "getCalculateWidth: isIndicatorEntrySupport=true, mIndicatorIconSize="

    .line 63
    .line 64
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v6, ", mIndicatorIconPadding="

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, ", mTextMaxWidth="

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 88
    .line 89
    const-string v7, ", measureTextSize="

    .line 90
    .line 91
    const-string v8, ", textWidth="

    .line 92
    .line 93
    invoke-static {v0, v6, v7, v8, v5}, Landroidx/constraintlayout/widget/a;->c(FILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ", getPaddingLeft()="

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, ", getAtLeastIndicatorEntryWidth ="

    .line 112
    .line 113
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAtLeastIndicatorEntryWidth()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ", getPaddingRight()="

    .line 124
    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_a3

    .line 149
    :cond_94
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const-string p0, "getCalculateWidth: isIndicatorEntrySupport=false, drawPageNum="

    .line 160
    .line 161
    invoke-static {v0, v4, p0, v1, v2}, Lcom/android/common/config/n;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_a3
    :goto_a3
    return v4
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    if-eqz v0, :cond_a0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_37

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getOplusFolderPagedView()Lcom/android/launcher3/folder/OplusFolderPagedView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_a0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget v1, Lcom/android/launcher3/R$string;->folder_page_format:I

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 57
    .line 58
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5d

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget v1, Lcom/android/launcher3/R$string;->talkbar_memu_boutton:I

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_5d
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 95
    .line 96
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_a0

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_a0

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget v1, Lcom/android/launcher3/R$string;->spring_loaded_format:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :cond_a0
    const/4 p0, 0x0

    .line 162
    return-object p0
.end method

.method public getCurrentState()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 2
    .line 3
    return p0
.end method

.method public getExtraIndicatorPivotY()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/a;->c(Lcom/android/launcher/Launcher;)Z

    move-result v0

    .line 7
    const-string v1, ",extraIndicatorPivotY =  "

    .line 9
    const-string v2, "OplusPageIndicator"

    if-eqz v0, :cond_70

    .line 13
    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-nez v0, :cond_33

    .line 19
    invoke-static {}, Lcom/android/launcher/UiConfig;->isPetrel()Z

    move-result v0

    if-nez v0, :cond_33

    .line 25
    invoke-static {}, Lcom/android/launcher/UiConfig;->isSwanGoose()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_33

    .line 32
    :cond_1f
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    sget v1, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 44
    const-string/jumbo v1, "getExtraIndicatorPivotY() isTwoPanels, else if extraIndicatorPivotY =  "

    .line 46
    invoke-static {v0, v1, v2}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_116

    .line 51
    :cond_33
    :goto_33
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 57
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    sget v3, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY_with_nav:I

    .line 65
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_52

    .line 70
    :cond_46
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    sget v3, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY_without_nav:I

    .line 78
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 82
    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v4, "getExtraIndicatorPivotY() isTwoPanels,isXueying() || UiConfig.isPetrel(), ,hasNavigationBar ="

    .line 86
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_116

    .line 111
    :cond_70
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b0

    .line 118
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 120
    invoke-static {v0}, Landroidx/appcompat/widget/a;->c(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 126
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_87

    move v0, v3

    goto :goto_93

    .line 134
    :cond_87
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    sget v3, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY_single_panel_without_nav:I

    .line 142
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 146
    :goto_93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v4, "getExtraIndicatorPivotY() isFoldScreen, isNotTwoPanels, hasNavigationBar = "

    .line 150
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v4

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    .line 174
    :cond_b0
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 180
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 190
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    sget v1, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY_simple_mode:I

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 202
    const-string/jumbo v1, "getExtraIndicatorPivotY() isRLMDevice, isInBigSimpleMode,extraIndicatorPivotY =  "

    .line 204
    invoke-static {v0, v1, v2}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    .line 208
    :cond_d3
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 214
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 220
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    sget v3, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY_with_nav_tabet:I

    .line 228
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_f8

    .line 233
    :cond_ec
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    sget v3, Lcom/android/launcher3/R$dimen;->toggle_bar_page_indicator_extra_pivotY_without_nav_tabet:I

    .line 241
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    :goto_f8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v4, "getExtraIndicatorPivotY() isTablet, hasNavigationBar = "

    .line 249
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v4

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    :cond_115
    move v0, v3

    .line 274
    :goto_116
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 276
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->hasOplusBottomSearchBoxView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 286
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 288
    invoke-static {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getWorkspaceTransY(Lcom/android/launcher3/Launcher;)F

    move-result v0

    .line 292
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 294
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 296
    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    .line 300
    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 304
    const-string/jumbo p0, "getExtraIndicatorPivotY() hasOplusBottomSearchBoxView, extraIndicatorPivotY = "

    .line 306
    invoke-static {v0, p0, v2}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13a
    return v0
.end method

.method public getFadeOutAlpha(F)F
    .registers 10

    .line 1
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLeftFadeOutBorder:F

    .line 2
    .line 3
    cmpg-float v0, p1, v2

    .line 4
    .line 5
    if-gez v0, :cond_1b

    .line 6
    .line 7
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    sub-float v0, v2, v0

    .line 11
    .line 12
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 13
    .line 14
    int-to-float p0, p0

    .line 15
    sub-float v1, v0, p0

    .line 16
    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    .line 19
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move v0, p1

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1b
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 29
    .line 30
    int-to-float v1, v0

    .line 31
    add-float v2, p1, v1

    .line 32
    .line 33
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRightFadeOutBorder:F

    .line 34
    .line 35
    cmpl-float p1, v2, v3

    .line 36
    .line 37
    if-lez p1, :cond_37

    .line 38
    .line 39
    int-to-float p1, v0

    .line 40
    add-float/2addr p1, v3

    .line 41
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 42
    .line 43
    int-to-float p0, p0

    .line 44
    add-float v4, p1, p0

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 48
    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_37
    const/high16 p0, 0x3f800000    # 1.0f

    .line 57
    .line 58
    return p0
.end method

.method public getFakeState()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFakeState:I

    .line 2
    .line 3
    return p0
.end method

.method public getFocusFrameAnimManager()Lcom/android/launcher/layout/FocusHoverAnimManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHoverScale()F
    .registers 1

    .line 1
    const p0, 0x3f99999a    # 1.2f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getHoverStateHasChanged()Ljava/lang/Boolean;
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mHoverStateHasChanged:Z

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getIconAndTextContentAlpha()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 2
    .line 3
    return p0
.end method

.method public getIndicatorContentAlpha()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 2
    .line 3
    return p0
.end method

.method public getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIndicatorScrollX()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 2
    .line 3
    return p0
.end method

.method public getIndicatorText()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIndicatorVisible()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorVisible:Z

    .line 2
    .line 3
    return p0
.end method

.method public getItemFocusOrHoverRadius()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    return p0
.end method

.method public getItemFocusOrHoverRect()Landroid/graphics/RectF;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher/layout/FocusHoverAnimManager;->getMaxFocusFrameStrokeWidth()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    new-instance v1, Landroid/graphics/RectF;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 14
    .line 15
    iget v2, p0, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    add-float/2addr v2, v0

    .line 18
    iget v3, p0, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    add-float/2addr v3, v0

    .line 21
    iget v4, p0, Landroid/graphics/RectF;->right:F

    .line 22
    .line 23
    sub-float/2addr v4, v0

    .line 24
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 25
    .line 26
    sub-float/2addr p0, v0

    .line 27
    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public getItemShadowRect()Landroid/graphics/RectF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLeftByPosition(I)F
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    sub-int p1, v0, p1

    .line 14
    .line 15
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateStateChangeOffset(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 24
    .line 25
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 26
    .line 27
    add-int/2addr v2, v3

    .line 28
    mul-int/2addr v2, p1

    .line 29
    add-int/2addr v2, v1

    .line 30
    int-to-float p1, v2

    .line 31
    add-float/2addr p1, v0

    .line 32
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 33
    .line 34
    add-float/2addr p1, p0

    .line 35
    return p1
.end method

.method public getPageNumChangeAnimRunner()Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageNumChangedAnimRunner:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPendingChangeIndicatorEntryTextTask()Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->getPendingChangeIndicatorEntryTextTask()Ljava/lang/Runnable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPressFeedbackHelper()Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRectInWindow()Landroid/graphics/Rect;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSwitchTargetPage(Landroid/view/MotionEvent;)I
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPageIndex(Landroid/view/MotionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_8

    .line 7
    .line 8
    return v0

    .line 9
    :cond_8
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 10
    .line 11
    if-eqz v1, :cond_12

    .line 12
    .line 13
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 14
    .line 15
    sub-int/2addr v2, p1

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 20
    .line 21
    if-eqz v2, :cond_19

    .line 22
    .line 23
    add-int/lit8 v2, p1, -0x1

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v2, p1

    .line 27
    :goto_1a
    if-eqz v1, :cond_25

    .line 28
    .line 29
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 30
    .line 31
    sub-int/2addr v1, p1

    .line 32
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 33
    .line 34
    xor-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    sub-int p1, v1, p1

    .line 37
    .line 38
    :cond_25
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_43

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_43

    .line 51
    .line 52
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 53
    .line 54
    add-int/2addr v2, v3

    .line 55
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    div-int/2addr v2, v3

    .line 60
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 61
    .line 62
    add-int/2addr p1, v3

    .line 63
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    div-int/2addr p1, v1

    .line 68
    :cond_43
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 69
    .line 70
    if-eq p0, p1, :cond_48

    .line 71
    .line 72
    return v2

    .line 73
    :cond_48
    return v0
.end method

.method public getTargetScrollXAndRestoreActiveIndex(I)F
    .registers 11

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_6

    .line 3
    .line 4
    const/16 v1, 0x16

    .line 5
    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    :goto_a
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_16

    .line 15
    .line 16
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 20
    .line 21
    sub-int/2addr v2, v4

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 24
    .line 25
    :goto_18
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 26
    .line 27
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 28
    .line 29
    add-int/2addr v4, v5

    .line 30
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v5, :cond_74

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-ne p1, v0, :cond_38

    .line 39
    .line 40
    iget-boolean v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 41
    .line 42
    if-eqz v5, :cond_33

    .line 43
    .line 44
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 45
    .line 46
    sub-int/2addr v5, v3

    .line 47
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 48
    .line 49
    mul-int/2addr v7, v2

    .line 50
    sub-int/2addr v5, v7

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 53
    .line 54
    mul-int/2addr v5, v2

    .line 55
    :goto_36
    move v2, v5

    .line 56
    goto :goto_72

    .line 57
    :cond_38
    iget-boolean v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 58
    .line 59
    if-eqz v5, :cond_43

    .line 60
    .line 61
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    .line 62
    .line 63
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 64
    .line 65
    sub-int/2addr v7, v8

    .line 66
    add-int/2addr v7, v3

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 69
    .line 70
    :goto_45
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    if-eqz v5, :cond_59

    .line 73
    .line 74
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    .line 75
    .line 76
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 77
    .line 78
    if-eq v5, v8, :cond_50

    .line 79
    .line 80
    move v6, v4

    .line 81
    :cond_50
    if-ge v8, v2, :cond_53

    .line 82
    .line 83
    goto :goto_70

    .line 84
    :cond_53
    if-ne v5, v8, :cond_57

    .line 85
    .line 86
    mul-int/lit8 v6, v4, 0x2

    .line 87
    .line 88
    :cond_57
    :goto_57
    move v2, v7

    .line 89
    goto :goto_72

    .line 90
    :cond_59
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 91
    .line 92
    if-nez v2, :cond_6a

    .line 93
    .line 94
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    .line 95
    .line 96
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 97
    .line 98
    if-eq v2, v5, :cond_57

    .line 99
    .line 100
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 101
    .line 102
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 103
    .line 104
    add-int/2addr v2, v5

    .line 105
    neg-int v6, v2

    .line 106
    goto :goto_57

    .line 107
    :cond_6a
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    .line 108
    .line 109
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 110
    .line 111
    if-ne v2, v5, :cond_57

    .line 112
    .line 113
    :goto_70
    move v6, v4

    .line 114
    goto :goto_57

    .line 115
    :goto_72
    mul-int/lit8 v4, v4, 0x2

    .line 116
    .line 117
    :cond_74
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    if-ne p1, v0, :cond_a2

    .line 121
    .line 122
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 123
    .line 124
    if-gt p1, v1, :cond_80

    .line 125
    .line 126
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 127
    .line 128
    goto :goto_cd

    .line 129
    :cond_80
    add-int/lit8 v0, v1, -0x2

    .line 130
    .line 131
    if-gt v2, v0, :cond_87

    .line 132
    .line 133
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 134
    .line 135
    goto :goto_cd

    .line 136
    :cond_87
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 137
    .line 138
    sub-int v0, v2, v0

    .line 139
    .line 140
    neg-int v0, v0

    .line 141
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 142
    .line 143
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 144
    .line 145
    add-int v5, v3, v4

    .line 146
    .line 147
    mul-int/2addr v5, v0

    .line 148
    int-to-float v7, v5

    .line 149
    add-int/lit8 v0, p1, -0x1

    .line 150
    .line 151
    if-ne v2, v0, :cond_cd

    .line 152
    .line 153
    add-int/lit8 v0, v1, -0x1

    .line 154
    .line 155
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 156
    .line 157
    sub-int/2addr p1, v1

    .line 158
    neg-int p0, p1

    .line 159
    add-int/2addr v3, v4

    .line 160
    mul-int/2addr v3, p0

    .line 161
    int-to-float v7, v3

    .line 162
    goto :goto_cd

    .line 163
    :cond_a2
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 164
    .line 165
    if-ne p1, v1, :cond_a8

    .line 166
    .line 167
    move v5, v7

    .line 168
    goto :goto_c9

    .line 169
    :cond_a8
    add-int/lit8 v0, v1, -0x2

    .line 170
    .line 171
    if-le v2, v0, :cond_c9

    .line 172
    .line 173
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 174
    .line 175
    if-gt v5, v0, :cond_b8

    .line 176
    .line 177
    sub-int v0, v2, v5

    .line 178
    .line 179
    :goto_b2
    neg-int v0, v0

    .line 180
    mul-int/2addr v0, v4

    .line 181
    add-int/2addr v0, v6

    .line 182
    int-to-float v0, v0

    .line 183
    move v5, v0

    .line 184
    goto :goto_bd

    .line 185
    :cond_b8
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 186
    .line 187
    sub-int v0, v2, v0

    .line 188
    .line 189
    goto :goto_b2

    .line 190
    :goto_bd
    add-int/lit8 v0, p1, -0x1

    .line 191
    .line 192
    if-ne v2, v0, :cond_c9

    .line 193
    .line 194
    add-int/lit8 v0, v1, -0x1

    .line 195
    .line 196
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 197
    .line 198
    sub-int/2addr p1, v1

    .line 199
    neg-int p0, p1

    .line 200
    mul-int/2addr p0, v4

    .line 201
    int-to-float v5, p0

    .line 202
    :cond_c9
    :goto_c9
    if-ge v2, v3, :cond_cc

    .line 203
    .line 204
    goto :goto_cd

    .line 205
    :cond_cc
    move v7, v5

    .line 206
    :cond_cd
    :goto_cd
    return v7
.end method

.method public getTargetWidthByPages(I)I
    .registers 4

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 8
    .line 9
    add-int/lit8 v1, p1, -0x1

    .line 10
    .line 11
    mul-int/2addr v1, v0

    .line 12
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 13
    .line 14
    mul-int/2addr v0, p1

    .line 15
    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/2addr p1, v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/2addr p0, p1

    .line 26
    return p0
.end method

.method public getTargetWidthByState(I)I
    .registers 7

    const/4 v0, 0x1

    .line 2
    const-string v1, "OplusPageIndicator"

    if-eq p1, v0, :cond_43

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3e

    .line 9
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 21
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAtLeastIndicatorEntryWidth()I

    move-result v2

    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 33
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 47
    filled-new-array {v4, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 51
    const-string/jumbo v0, "getTargetWidthByState: targetState=%d, getTargetWidthByPages(%d)=%d, getAtLeastIndicatorEntryWidth()=%d"

    .line 53
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_47

    .line 62
    :cond_3e
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntryBgWidth()I

    move-result v0

    goto :goto_47

    .line 67
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 71
    :cond_47
    :goto_47
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p0

    if-eqz p0, :cond_55

    .line 77
    const-string/jumbo p0, "getTargetWidthByState: targetState="

    .line 79
    const-string v2, ", width="

    .line 81
    invoke-static {p1, v0, p0, v2, v1}, Lcom/android/common/config/n;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return v0
.end method

.method public getTempBgHeight()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public getTempBgWidth()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public getTextColor()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getTypedValue(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/launcher3/R$styleable;->OplusPageIndicator:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget v0, Lcom/android/launcher3/R$styleable;->OplusPageIndicator_selectIndicatorColor:I

    .line 9
    sget v1, Lcom/android/launcher3/R$color;->coui_color_white:I

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 15
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    .line 17
    sget v0, Lcom/android/launcher3/R$styleable;->OplusPageIndicator_unSelectIndicatorColor:I

    .line 19
    sget v1, Lcom/android/launcher3/R$color;->coui_color_white:I

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 25
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    .line 27
    sget v0, Lcom/android/launcher3/R$styleable;->OplusPageIndicator_indicatorType:I

    const/4 v1, 0x2

    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    .line 41
    :goto_28
    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 50
    sget v0, Lcom/android/launcher3/R$bool;->launcher_use_path_indicator:I

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 60
    sget v0, Lcom/android/launcher3/R$bool;->launcher_support_assist_indicator:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 66
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-nez p1, :cond_4e

    .line 70
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_4e

    :cond_4c
    move p1, v1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move p1, v2

    .line 80
    :goto_4f
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-nez p2, :cond_59

    .line 84
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_5a

    :cond_59
    move v1, v2

    .line 91
    :cond_5a
    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 93
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    .line 95
    const-string/jumbo p1, "getTypedValue,usePathIndicator : "

    .line 97
    const-string v0, ", mIsPathIndicator: "

    .line 99
    const-string v1, "OplusPageIndicator"

    .line 101
    invoke-static {p1, p2, v0, p0, v1}, La0/f;->c(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public getViewBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    .line 1
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportBreenoTransitionAnim()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 10
    .line 11
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    float-to-int v0, v0

    .line 14
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    float-to-int v1, v1

    .line 17
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    float-to-int v2, v2

    .line 20
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 21
    .line 22
    float-to-int p0, p0

    .line 23
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-object p1
.end method

.method public getmBgOffset()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 2
    .line 3
    return p0
.end method

.method public hasFocusFlag()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawFocusFlag:Z

    .line 2
    .line 3
    return p0
.end method

.method public hasHoverFlag()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawHoverFlag:Z

    .line 2
    .line 3
    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final initIndicatorPaint(Z)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_12

    .line 9
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isPageIndicatorBright()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_12

    .line 16
    :cond_f
    sget p1, Lcom/android/launcher3/R$color;->page_indicator_bg:I

    goto :goto_14

    .line 19
    :cond_12
    :goto_12
    sget p1, Lcom/android/launcher3/R$color;->page_indicator_bg_dark:I

    :goto_14
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 26
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 28
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8e

    .line 34
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-nez p1, :cond_2c

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    .line 40
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 45
    :cond_2c
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 47
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 49
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_43

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    .line 63
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 68
    :cond_43
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_58

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    .line 84
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 89
    :cond_58
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_6d

    .line 103
    new-instance p1, Landroid/text/TextPaint;

    .line 105
    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 110
    :cond_6d
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 112
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextSize:I

    int-to-float v2, v2

    .line 115
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 120
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 125
    const-string/jumbo v1, "sans-serif-medium"

    .line 128
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 137
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    .line 139
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b7

    .line 143
    :cond_8e
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    if-nez p1, :cond_9a

    .line 147
    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    .line 150
    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 153
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    .line 155
    :cond_9a
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_a5

    .line 159
    new-instance p1, Landroid/text/TextPaint;

    .line 161
    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 166
    :cond_a5
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 168
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextSize:I

    int-to-float v2, v2

    .line 171
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 176
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 181
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 184
    :goto_b7
    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsShadowLayer(Z)V

    .line 187
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsColor()V

    .line 190
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    if-eqz p1, :cond_c7

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 198
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 200
    :cond_c7
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 202
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isPageIndicatorBright()Z

    move-result v0

    .line 206
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isExtremeDarkWallpaper()Z

    move-result v1

    .line 210
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->getBlurColorParams(Landroid/content/Context;ZZ)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;->getBlendMode()I

    move-result v0

    .line 218
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBlendMode:I

    .line 220
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;->getBlendColor()I

    move-result v0

    .line 224
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurBlendColor:I

    .line 226
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;->getMixColor()I

    move-result p1

    .line 230
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBlurMixColor:I

    .line 232
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 234
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 238
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0xff

    .line 244
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 248
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    .line 250
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    .line 252
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    return-void
.end method

.method public final initIndicatorResource()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7
    sget v1, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_horizontal_padding:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingHorizontal:I

    .line 15
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 21
    sget v1, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_vertical_padding:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 27
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryPaddingVertical:I

    .line 29
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    sget v1, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_vertical_padding_breeno:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBreenoEntryPaddingVertical:I

    .line 43
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    sget v1, Lcom/android/launcher3/R$drawable;->icon_breeno_entry:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 71
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    sget v1, Lcom/android/launcher3/R$dimen;->search_entry_icon_size_simple_mode:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    goto :goto_63

    .line 86
    :cond_55
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/launcher3/R$dimen;->breeno_entry_icon_size:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 100
    :goto_63
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    sget v1, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_horizontal_padding_offset_breeno:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 114
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    sget v1, Lcom/android/launcher3/R$dimen;->breeno_entry_icon_padding:I

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 126
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    sget v1, Lcom/android/launcher3/R$string;->wen_xiao_bu:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    sget v1, Lcom/android/launcher3/R$dimen;->breeno_entry_text_max_width:I

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 152
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 154
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    sget v1, Lcom/android/launcher3/R$dimen;->breeno_entry_text_size:I

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 166
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextSize:I

    goto :goto_111

    .line 169
    :cond_a8
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 171
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->getSearchIndicatorEntryByConditionForInit()Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 177
    iget-boolean v2, v0, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;->mIsUsingNewSearchIndicatorEntry:Z

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->setInitialUsingFlag(Z)V

    .line 182
    iget-object v1, v0, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 184
    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 196
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    sget v2, Lcom/android/launcher3/R$dimen;->search_entry_icon_size_simple_mode:I

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 208
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    goto :goto_e0

    .line 211
    :cond_d2
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 217
    sget v2, Lcom/android/launcher3/R$dimen;->search_entry_icon_size:I

    .line 219
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 223
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 225
    :goto_e0
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 231
    sget v2, Lcom/android/launcher3/R$dimen;->search_entry_icon_padding:I

    .line 233
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 237
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 239
    iget-object v0, v0, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;->mText:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 245
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    sget v1, Lcom/android/launcher3/R$dimen;->search_entry_text_max_width:I

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 255
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 257
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    sget v1, Lcom/android/launcher3/R$dimen;->search_entry_text_size:I

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 269
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextSize:I

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    .line 274
    :goto_111
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo v1, "initIndicatorResource: updateIndicatorText: "

    .line 285
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 290
    const-string v1, "OplusPageIndicator"

    .line 292
    invoke-static {p0, v1, v0}, Lcom/android/common/util/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_126
    return-void
.end method

.method public isFocusFrameOutOnItem()Z
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isFolderHost()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    .line 2
    .line 3
    return p0
.end method

.method public isInView(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 16
    aget v2, v0, v2

    const/4 v3, 0x1

    .line 19
    aget v4, v0, v3

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    .line 26
    aget v0, v0, v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 33
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "isInView: mRectInWindow="

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", windowEv=("

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ")"

    .line 75
    const-string v2, "OplusPageIndicator"

    .line 77
    invoke-static {v1, v2, v0}, Lcom/android/common/util/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 80
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 92
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isIndicatorEntryEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->isEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public isIndicatorEntrySupport()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->isSupport()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public isPressDragging()Z
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isUsingNewSearchIndicatorEntry()Z
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->isUsingNewSearchIndicatorEntry()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public loadHaloEffect()V
    .registers 1

    .line 1
    return-void
.end method

.method public mapNumber(I)[I
    .registers 2

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    mul-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    :goto_b
    add-int/lit8 p0, p1, 0x1

    .line 13
    .line 14
    filled-new-array {p1, p0}, [I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/launcher/mode/LauncherModeManager;->registerChangeCallback(Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->registerObserver()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/launcher/pageindicators/OplusPageIndicator$5;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$5;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->registerStateChangeListener()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 41
    .line 42
    if-eqz v0, :cond_32

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->registerObserver()V

    .line 49
    .line 50
    .line 51
    :cond_32
    invoke-static {}, Lcom/android/launcher/breeno/DynamicBreenoSupportManager;->getInstance()Lcom/android/launcher/breeno/DynamicBreenoSupportManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/rusconfig/RusBaseConfigManager;->registerRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onBlurEnableStateChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initBlurBackground()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onChange()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorResource()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/launcher/mode/LauncherModeManager;->unregisterChangeCallback(Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->unregisterObserver()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->unregisterStateChangeListener()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 29
    .line 30
    if-eqz v0, :cond_26

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->unRegisterObserver()V

    .line 37
    .line 38
    .line 39
    :cond_26
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->recycleBlurBackground()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/android/launcher/breeno/DynamicBreenoSupportManager;->getInstance()Lcom/android/launcher/breeno/DynamicBreenoSupportManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/android/rusconfig/RusBaseConfigManager;->unregisterRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    xor-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/launcher/layout/FocusHoverAnimManager;->startFocusFrameAnim(Z)V

    .line 8
    .line 9
    .line 10
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onGlobalLayout()V
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget v2, v0, v2

    .line 11
    .line 12
    int-to-float v3, v2

    .line 13
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 14
    .line 15
    sub-float/2addr v3, v4

    .line 16
    float-to-int v3, v3

    .line 17
    const/4 v4, 0x1

    .line 18
    aget v5, v0, v4

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    add-int/2addr v6, v2

    .line 25
    int-to-float v2, v6

    .line 26
    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 27
    .line 28
    add-float/2addr v2, v6

    .line 29
    float-to-int v2, v2

    .line 30
    aget v0, v0, v4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/2addr v4, v0

    .line 37
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3c

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDisableUpdatePivotWhenGlobalLayout:Z

    .line 47
    .line 48
    if-nez v0, :cond_3c

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->isPressingAnim()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3c

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePivot()V

    .line 59
    .line 60
    .line 61
    :cond_3c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    if-nez p2, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    const/16 v0, 0x42

    .line 6
    .line 7
    if-ne p1, v0, :cond_13

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_13

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    if-nez p2, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    const/16 v0, 0x42

    .line 6
    .line 7
    if-ne p1, v0, :cond_34

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_34

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    if-eqz p1, :cond_33

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_33

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p1, p1, Lcom/android/launcher3/OplusDragLayer;

    .line 41
    .line 42
    if-eqz p1, :cond_33

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/IndicatorEntry;->startIndicatorApp(Landroid/content/Intent;)Z

    .line 50
    .line 51
    .line 52
    :cond_33
    return p2

    .line 53
    :cond_34
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public onLayoutBottomDialogStateChange(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAlpha(F)V

    .line 16
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 22
    const-string/jumbo p0, "onLayoutBottomDialogStateChange hide = "

    .line 25
    const-string v0, " ,callers = "

    .line 27
    invoke-static {p0, v0, p1}, Ls2/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x5

    .line 32
    const-string v0, "OplusPageIndicator"

    .line 34
    invoke-static {p0, p1, v0}, Lcom/android/common/util/x0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_e2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_c8

    .line 31
    .line 32
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextSize:I

    .line 33
    .line 34
    int-to-float v2, v2

    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_61

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 62
    .line 63
    int-to-float v2, v2

    .line 64
    cmpl-float v0, v0, v2

    .line 65
    .line 66
    if-lez v0, :cond_61

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget v3, Lcom/android/launcher3/R$dimen;->breeno_entry_text_size_min:I

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    int-to-float v2, v2

    .line 83
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 95
    .line 96
    .line 97
    goto :goto_91

    .line 98
    :cond_61
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_91

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 111
    .line 112
    int-to-float v2, v2

    .line 113
    cmpl-float v0, v0, v2

    .line 114
    .line 115
    if-lez v0, :cond_91

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 118
    .line 119
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget v3, Lcom/android/launcher3/R$dimen;->search_entry_text_size_min:I

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    int-to-float v2, v2

    .line 132
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 144
    .line 145
    .line 146
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextPaint:Landroid/text/TextPaint;

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorTextWidth:F

    .line 161
    .line 162
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 163
    .line 164
    int-to-float v0, v0

    .line 165
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 170
    .line 171
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 172
    .line 173
    add-int/2addr v0, v1

    .line 174
    int-to-float v0, v0

    .line 175
    add-float/2addr v0, p2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    int-to-float p2, p2

    .line 181
    add-float/2addr v0, p2

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    int-to-float p2, p2

    .line 187
    add-float/2addr v0, p2

    .line 188
    float-to-int p2, v0

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryBgWidth:I

    .line 198
    .line 199
    move v0, p2

    .line 200
    goto :goto_c9

    .line 201
    :cond_c8
    move v0, v1

    .line 202
    :goto_c9
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastIndicatorEntryWidth:I

    .line 203
    .line 204
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryBgWidth:I

    .line 205
    .line 206
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateSupportIndicatorCount(I)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFixedMaxPagesCount:I

    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->indicator()Lcom/android/launcher/layoutparam/PageIndicatorParam;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->getWorkspacePageIndicatorHeight()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    goto :goto_108

    .line 227
    :cond_e2
    const/4 p1, 0x0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setmBgOffset(F)V

    .line 229
    .line 230
    .line 231
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 238
    .line 239
    .line 240
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    const/high16 v1, 0x40000000    # 2.0f

    .line 245
    .line 246
    if-ne p1, v1, :cond_fc

    .line 247
    .line 248
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    goto :goto_108

    .line 253
    :cond_fc
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    add-int/2addr p2, p1

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    add-int/2addr p1, p2

    .line 265
    :goto_108
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 266
    .line 267
    .line 268
    const/4 p1, 0x1

    .line 269
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam(Z)V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public onPageBeginTransition()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-eqz v0, :cond_32

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_32

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    const-wide/16 v1, 0xc8

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    new-instance v1, Lcom/android/launcher/pageindicators/c;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/android/launcher/pageindicators/c;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method

.method public onPageEndTransition()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

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
    if-eqz v0, :cond_3d

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ne v0, v1, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    cmpl-float v0, v0, v1

    .line 29
    .line 30
    if-eqz v0, :cond_3d

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    if-eqz v0, :cond_3d

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    const-wide/16 v1, 0xc8

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v1, Lcom/android/launcher/pageindicators/d;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, p0, v2}, Lcom/android/launcher/pageindicators/d;-><init>(Landroid/view/View;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void
.end method

.method public onRusConfigChanged()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    if-eqz v0, :cond_27

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onRusConfigChanged: EntryState:"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->getIndicatorEntryState()Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "OplusPageIndicator"

    .line 26
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/oplus/basecommon/thread/Executors;->MAIN_EXECUTOR:Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 31
    new-instance v1, Lcom/android/launcher/pageindicators/b;

    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, p0, v2}, Lcom/android/launcher/pageindicators/b;-><init>(Ljava/lang/Object;I)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/oplus/basecommon/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

.method public onSearchEntryConditionValueChanged()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->onSearchEntryConditionValueChanged()V

    return-void
.end method

.method public onSearchEntryConditionValueChanged(Z)V
    .registers 2

    .line 2
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->onSearchEntryConditionValueChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDownTouchOptsForRecentReverse:Ls1/a;

    .line 8
    .line 9
    if-eqz v0, :cond_15

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_15

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDownTouchOptsForRecentReverse:Ls1/a;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ls1/a;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initBlurBackground()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public pauseAnimations()V
    .registers 1

    .line 1
    return-void
.end method

.method public prepareForRecentAnimReverse(Ls1/a;Ls1/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ls1/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDownTouchOptsForRecentReverse:Ls1/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mClickOptsForRecentReverse:Ls1/g;

    .line 4
    .line 5
    return-void
.end method

.method public requireAnimate()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    sget-object v1, Lcom/android/launcher3/LauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_16

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 12
    .line 13
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_16

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    :goto_17
    return p0
.end method

.method public resetBgOffsetIfNeed()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result v0

    .line 7
    const-string v1, "OplusPageIndicator"

    if-eqz v0, :cond_17

    .line 11
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 17
    const-string/jumbo p0, "resetBgOffsetIfNeed: mAnimHelper.isPageChangeAnimating()=true, return."

    .line 20
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void

    .line 24
    :cond_17
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5b

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_25

    goto :goto_5f

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    if-eqz v0, :cond_3d

    .line 42
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->isStateBgAnimRunning()Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_3d

    .line 49
    :cond_30
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 55
    const-string/jumbo v0, "resetBgOffsetIfNeed: skip ALL_INDICATOR_STATE setmBgOffset, bgAnimRunning=true"

    .line 58
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByState(I)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCalculateWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setmBgOffset(F)V

    goto :goto_5f

    .line 77
    :cond_4c
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByState(I)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCalculateWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setmBgOffset(F)V

    goto :goto_5f

    :cond_5b
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setmBgOffset(F)V

    .line 96
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v2, "resetBgOffsetIfNeed: current state="

    .line 107
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 112
    const-string v2, ", caller="

    const/16 v3, 0xa

    .line 116
    invoke-static {p0, v3, v2, v1, v0}, Lcom/android/launcher/pageindicators/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_76
    return-void
.end method

.method public resetBgPadding()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->resetBgPadding()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetIndicatorEntryState()V
    .registers 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    .line 4
    .line 5
    return-void
.end method

.method public resetRecentReverseOpts()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDownTouchOptsForRecentReverse:Ls1/a;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mClickOptsForRecentReverse:Ls1/g;

    .line 5
    .line 6
    return-void
.end method

.method public restoreColorAndScale()V
    .registers 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAnimColor()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public scrollToDefaultScreen(I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 13
    .line 14
    if-eqz v0, :cond_1a

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->isStateAnimRunning()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1a

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/launcher3/search/IndicatorEntry;->cancelScrollXAnim()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->modifyActivePageValueForSwitchMode(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    if-ne v0, v2, :cond_26

    .line 35
    .line 36
    const/16 v0, 0x16

    .line 37
    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2a
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    .line 44
    .line 45
    if-eqz v2, :cond_34

    .line 46
    .line 47
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 48
    .line 49
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    sub-int p1, v2, p1

    .line 52
    .line 53
    :cond_34
    add-int/lit8 v2, v0, -0x2

    .line 54
    .line 55
    if-gt p1, v2, :cond_3c

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 58
    .line 59
    .line 60
    goto :goto_5b

    .line 61
    :cond_3c
    sub-int v1, p1, v2

    .line 62
    .line 63
    neg-int v1, v1

    .line 64
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 65
    .line 66
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 67
    .line 68
    add-int/2addr v2, v3

    .line 69
    mul-int/2addr v2, v1

    .line 70
    int-to-float v1, v2

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 75
    .line 76
    add-int/lit8 v2, v1, -0x1

    .line 77
    .line 78
    if-ne p1, v2, :cond_5b

    .line 79
    .line 80
    sub-int/2addr v1, v0

    .line 81
    neg-int p1, v1

    .line 82
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 83
    .line 84
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 85
    .line 86
    add-int/2addr v0, v1

    .line 87
    mul-int/2addr v0, p1

    .line 88
    int-to-float p1, v0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 90
    .line 91
    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method

.method public setActiveMarker(I)V
    .registers 9

    .line 1
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 3
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-eq v0, v1, :cond_bb

    .line 7
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    .line 9
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 11
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    .line 13
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->modifyActivePageValueForSwitchMode(I)I

    move-result v1

    .line 17
    invoke-direct {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActivePage(I)V

    .line 20
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 29
    :goto_1c
    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 31
    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateActiveIndex(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v1

    if-nez v1, :cond_64

    .line 40
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 46
    const-string/jumbo v1, "setActiveMarker, mLastPage:"

    .line 49
    const-string v4, ", mActivePage:"

    .line 51
    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/g0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 57
    const-string v5, ", activePage:"

    .line 59
    const-string v6, ", mIsFirst:"

    .line 61
    invoke-static {v4, p1, v5, v6, v1}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 64
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, ", mNumPages"

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string p1, ", mPageChanged:"

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    const-string p1, ", activeIndex="

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 96
    const-string v4, "OplusPageIndicator"

    .line 98
    invoke-static {v1, p1, v4}, Lcom/android/common/config/l;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    :cond_64
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    if-eqz p1, :cond_9e

    .line 105
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    if-eqz p1, :cond_9e

    .line 109
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-eqz p1, :cond_9e

    .line 113
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    if-nez p1, :cond_9e

    .line 117
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 119
    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 125
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 127
    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 133
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz p1, :cond_90

    .line 137
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-le v0, p1, :cond_8e

    :goto_8c
    move p1, v2

    goto :goto_95

    :cond_8e
    move p1, v3

    goto :goto_95

    .line 145
    :cond_90
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ge v0, p1, :cond_8e

    goto :goto_8c

    .line 150
    :goto_95
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    .line 152
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->stopTrackAnimation()V

    .line 155
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startTrackAnimation()V

    goto :goto_b3

    .line 159
    :cond_9e
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 163
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 165
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 174
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam()V

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 180
    :goto_b3
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    .line 182
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ne v0, p1, :cond_bb

    .line 186
    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    .line 188
    :cond_bb
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    .line 190
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eq p1, v0, :cond_d2

    .line 194
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 196
    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 202
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 204
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 206
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    .line 208
    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startDragSwitchPageAnim(II)V

    :cond_d2
    return-void
.end method

.method public setAlpha(F)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/launcher/togglebar/animation/ArrangeLayoutSpringAnimationHelper;->Companion:Lcom/android/launcher/togglebar/animation/ArrangeLayoutSpringAnimationHelper$Companion;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/animation/ArrangeLayoutSpringAnimationHelper$Companion;->getInstance()Lcom/android/launcher/togglebar/animation/ArrangeLayoutSpringAnimationHelper;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/animation/ArrangeLayoutSpringAnimationHelper;->getMHasFadeOutAnim()Z

    move-result v0

    .line 11
    const-string v1, "; caller = "

    .line 13
    const-string v2, "OplusPageIndicator"

    if-eqz v0, :cond_35

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_35

    .line 23
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 29
    const-string/jumbo p0, "setAlpha skip alpha:"

    .line 32
    invoke-static {p0, p1, v1}, Lcom/android/common/util/w0;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x7

    .line 37
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    const-string p1, "Arrange_Layout"

    .line 50
    invoke-static {p1, v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void

    .line 54
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 61
    invoke-static {p1, v0}, Lcom/oplus/basecommon/util/FunctionsKt;->shouldPrintAlphaLog(FF)Z

    move-result p0

    if-eqz p0, :cond_56

    .line 67
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p0

    if-eqz p0, :cond_56

    .line 73
    const-string/jumbo p0, "setAlpha "

    .line 76
    const-string v3, "; oldAlpha = "

    .line 78
    invoke-static {p0, p1, v3, v0, v1}, Landroidx/fragment/app/o;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    .line 84
    invoke-static {p0, p1, v2}, Lcom/android/common/util/x0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_56
    return-void
.end method

.method public setAlphaIfNeeded(FZ)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    if-eqz p2, :cond_11

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorAlphaAnim(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_23

    .line 18
    :cond_11
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getIndicatorAlphaAnim()Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_20

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 31
    .line 32
    .line 33
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAlpha(F)V

    .line 34
    .line 35
    .line 36
    :goto_23
    return-void
.end method

.method public setAnimAlpha(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimScaleX(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimScaleY(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimTransX(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimTransY(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimVisibility(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimate(Z)V
    .registers 4

    .line 1
    const-string/jumbo v0, "setAnimate,animate :"

    .line 4
    const-string v1, "OplusPageIndicator"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBgAlpha(I)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->setBgAlpha(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBgWidthOffset(F)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setmBgOffset(F)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget v1, p1, v1

    .line 14
    .line 15
    int-to-float v2, v1

    .line 16
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 17
    .line 18
    sub-float/2addr v2, v3

    .line 19
    float-to-int v2, v2

    .line 20
    const/4 v3, 0x1

    .line 21
    aget v4, p1, v3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    add-int/2addr v5, v1

    .line 28
    int-to-float v1, v5

    .line 29
    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 30
    .line 31
    add-float/2addr v1, v5

    .line 32
    float-to-int v1, v1

    .line 33
    aget p1, p1, v3

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, p1

    .line 40
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setCurrentActiveMarker()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 11
    .line 12
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setDecoratorAlpha(F)V
    .registers 2

    .line 1
    return-void
.end method

.method public setDisableUpdatePivotWhenGlobalLayout(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDisableUpdatePivotWhenGlobalLayout:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawFocusFlag(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawFocusFlag:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawHoverFlag(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawHoverFlag:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePivot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFakeState(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFakeState:I

    .line 2
    .line 3
    return-void
.end method

.method public setFixedIndicatorScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setIconAndTextContentAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 2
    .line 3
    return-void
.end method

.method public setIconAndTextContentScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentScale:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorContentAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorScrollX(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    if-lez v1, :cond_6

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_6
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    .line 8
    .line 9
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    return-void
.end method

.method public setMarkersCount(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(IZ)V

    return-void
.end method

.method public setMarkersCount(IZ)V
    .registers 8

    .line 2
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v0, :cond_6

    move v0, p1

    goto :goto_8

    :cond_6
    add-int/lit8 v0, p1, -0x1

    :goto_8
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    add-int/lit8 v0, p1, 0x1

    .line 3
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    .line 4
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    move-result v0

    if-eqz v0, :cond_2c

    mul-int/lit8 p1, p1, 0x2

    .line 5
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_26

    add-int/lit8 p1, p1, 0x1

    .line 6
    :cond_26
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    .line 7
    :cond_2c
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-ltz p1, :cond_35

    .line 8
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 9
    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result p1

    if-nez p1, :cond_55

    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 10
    const-string/jumbo p1, "setMarkersCount: oldNumPages->"

    const-string v1, ", mNumPages->"

    .line 11
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/g0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const-string v2, ", caller->"

    const/16 v3, 0xa

    const-string v4, "OplusPageIndicator"

    .line 13
    invoke-static {v1, v3, v2, v4, p1}, Lcom/android/launcher/pageindicators/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_55
    if-nez p2, :cond_60

    .line 14
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-eq v0, p1, :cond_5c

    goto :goto_60

    .line 15
    :cond_5c
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_aa

    .line 16
    :cond_60
    :goto_60
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-le v0, p1, :cond_6f

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    add-int/lit8 v1, p1, -0x1

    if-le p2, v1, :cond_6f

    add-int/lit8 p1, p1, -0x1

    .line 17
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActivePage(I)V

    .line 18
    :cond_6f
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 19
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result p1

    .line 20
    iget-boolean p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz p2, :cond_85

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 p2, p2, -0x1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    sub-int/2addr p2, v1

    goto :goto_87

    :cond_85
    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_87
    add-int/lit8 p1, p1, -0x1

    .line 21
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    .line 22
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    if-eqz p1, :cond_aa

    .line 23
    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry;->isStateBgAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 24
    new-instance p1, Lcom/android/launcher/pageindicators/OplusPageIndicator$1;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$1;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageNumChangedAnimRunner:Ljava/lang/Runnable;

    goto :goto_aa

    .line 25
    :cond_a1
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->doPageNumChangedAnimIfNeed(II)V

    goto :goto_aa

    .line 26
    :cond_a7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 27
    :cond_aa
    :goto_aa
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    if-nez p1, :cond_bb

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    move-result p1

    if-nez p1, :cond_bb

    .line 28
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->onPageNumChanged(II)Z

    :cond_bb
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 4
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 10
    const-string/jumbo p0, "setPivotY "

    .line 13
    const-string v0, "; caller = "

    .line 15
    invoke-static {p0, p1, v0}, Lcom/android/common/util/w0;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    .line 21
    const-string v0, "OplusPageIndicator"

    .line 23
    invoke-static {p0, p1, v0}, Lcom/android/common/util/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_19
    return-void
.end method

.method public setScroll(II)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 7
    iget-boolean v3, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    if-nez v3, :cond_b

    return-void

    :cond_b
    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    .line 15
    iget v4, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    .line 17
    iget v5, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 19
    iget-boolean v6, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v6, :cond_19

    add-int/lit8 v6, v4, -0x1

    goto :goto_1a

    :cond_19
    move v6, v4

    :goto_1a
    if-le v6, v3, :cond_23

    if-lez v2, :cond_23

    add-int/lit8 v7, v6, -0x1

    .line 33
    div-int v7, v2, v7

    goto :goto_31

    .line 36
    :cond_23
    iget-object v7, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 38
    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Lcom/android/launcher/layoutparam/ConfigParam;->getAvailableWidthPx()I

    move-result v7

    .line 50
    :goto_31
    iget v8, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 52
    iget v9, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v8, v9

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_6e

    .line 62
    iget v7, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    if-gt v7, v3, :cond_42

    return-void

    .line 67
    :cond_42
    iget-boolean v9, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v9, :cond_49

    add-int/lit8 v9, v7, -0x1

    goto :goto_4a

    :cond_49
    move v9, v7

    .line 75
    :goto_4a
    div-int v9, v2, v9

    .line 77
    iget v11, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastCurrentScroll:I

    sub-int v11, v1, v11

    if-lez v11, :cond_55

    .line 83
    iput v10, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    goto :goto_57

    .line 86
    :cond_55
    iput v3, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    :goto_57
    mul-int/lit8 v8, v8, 0x2

    .line 90
    iput v1, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastCurrentScroll:I

    .line 92
    iget v11, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_6d

    .line 97
    iget-boolean v11, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-nez v11, :cond_68

    .line 101
    iget v11, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eq v11, v7, :cond_6d

    :cond_68
    if-le v1, v2, :cond_6b

    goto :goto_6d

    :cond_6b
    move v7, v9

    goto :goto_6e

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    :goto_6e
    if-nez v7, :cond_88

    .line 113
    const-string/jumbo v1, "setScroll return, scrollGap is zero, totalScroll="

    .line 116
    const-string v3, ", mTotalActivePage="

    .line 118
    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/g0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    iget v0, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "OplusPageIndicator"

    .line 133
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_88
    iget-boolean v9, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v9, :cond_91

    sub-int/2addr v6, v3

    .line 142
    div-int v11, v1, v7

    sub-int/2addr v6, v11

    goto :goto_93

    .line 146
    :cond_91
    div-int v6, v1, v7

    .line 148
    :goto_93
    iget-boolean v11, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v11, :cond_99

    add-int/lit8 v6, v6, 0x1

    :cond_99
    if-ltz v1, :cond_a4

    if-eqz v9, :cond_a0

    if-gt v6, v5, :cond_a4

    goto :goto_a2

    :cond_a0
    if-lt v6, v5, :cond_a4

    :goto_a2
    move v6, v3

    goto :goto_a5

    :cond_a4
    const/4 v6, 0x0

    .line 166
    :goto_a5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 172
    iget v6, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    if-ne v6, v10, :cond_b1

    move v6, v3

    goto :goto_b2

    :cond_b1
    const/4 v6, 0x0

    .line 179
    :cond_b2
    :goto_b2
    iget-boolean v9, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-nez v9, :cond_164

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v9

    if-nez v9, :cond_164

    .line 189
    rem-int v9, v1, v7

    int-to-float v12, v9

    int-to-float v7, v7

    div-float/2addr v12, v7

    int-to-float v13, v1

    div-float/2addr v13, v7

    int-to-float v7, v8

    mul-float/2addr v13, v7

    .line 198
    iget-boolean v14, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v14, :cond_ce

    .line 202
    iget v15, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v15, v3

    sub-int/2addr v15, v5

    goto :goto_cf

    :cond_ce
    move v15, v5

    :goto_cf
    if-nez v14, :cond_db

    .line 210
    iget-boolean v14, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v14, :cond_db

    .line 214
    iget v14, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int/2addr v14, v3

    :goto_d8
    mul-int/2addr v14, v8

    int-to-float v8, v14

    goto :goto_de

    .line 220
    :cond_db
    iget v14, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    goto :goto_d8

    .line 223
    :goto_de
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    move-result v14

    const/4 v11, 0x0

    if-eqz v14, :cond_104

    .line 230
    iget-boolean v8, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v8, :cond_eb

    move v7, v11

    goto :goto_f8

    .line 236
    :cond_eb
    iget v8, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    .line 238
    iget v14, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTotalActivePage:I

    if-ne v8, v14, :cond_f2

    goto :goto_f8

    .line 243
    :cond_f2
    iget v7, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 245
    iget v8, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 249
    :goto_f8
    iget-boolean v8, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v8, :cond_103

    .line 253
    iget v7, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 255
    iget v8, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v7, v8

    int-to-float v8, v7

    goto :goto_104

    :cond_103
    move v8, v7

    .line 261
    :cond_104
    :goto_104
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result v7

    if-eqz v6, :cond_114

    .line 267
    iget v14, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int/2addr v7, v10

    if-lt v14, v7, :cond_114

    sub-int/2addr v4, v10

    if-ge v15, v4, :cond_114

    move v4, v3

    goto :goto_115

    :cond_114
    const/4 v4, 0x0

    :goto_115
    if-nez v6, :cond_11e

    .line 280
    iget v7, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    if-gt v7, v3, :cond_11e

    if-le v15, v3, :cond_11e

    goto :goto_11f

    :cond_11e
    const/4 v3, 0x0

    .line 288
    :goto_11f
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isDoubleDot()Z

    move-result v7

    if-eqz v7, :cond_128

    xor-int/lit8 v3, v6, 0x1

    move v4, v6

    :cond_128
    if-nez v4, :cond_12c

    if-eqz v3, :cond_131

    :cond_12c
    sub-float/2addr v13, v8

    neg-float v3, v13

    .line 303
    invoke-virtual {v0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 306
    :cond_131
    invoke-virtual {v0, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v3

    .line 310
    iget v4, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 314
    invoke-direct {v0, v3, v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateAdjacentTrackRectF(FF)V

    if-eqz v6, :cond_151

    if-gt v1, v2, :cond_161

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v12

    .line 324
    iput v1, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 326
    iget-object v1, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 328
    iget v2, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 330
    iget v3, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 334
    invoke-virtual {v1, v2, v11}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_161

    :cond_151
    if-ltz v9, :cond_161

    .line 340
    iput v12, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 342
    iget-object v1, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    .line 344
    iget v2, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 346
    iget v3, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    .line 351
    invoke-virtual {v1, v2, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 354
    :cond_161
    :goto_161
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_164
    return-void
.end method

.method public setSearchIndicatorEntry(Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7
    const-string v0, "OplusPageIndicator"

    .line 9
    const-string/jumbo v1, "setSearchIndicatorEntry"

    .line 12
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryHelper:Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper;->syncUsingFlag(Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;)V

    .line 20
    iget-object v0, p1, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 34
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    sget v1, Lcom/android/launcher3/R$dimen;->search_entry_icon_size_simple_mode:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    goto :goto_3e

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    sget v1, Lcom/android/launcher3/R$dimen;->search_entry_icon_size:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconSize:I

    .line 63
    :goto_3e
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    sget v1, Lcom/android/launcher3/R$dimen;->search_entry_icon_padding:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorIconPadding:I

    .line 77
    iget-object p1, p1, Lcom/android/launcher/pageindicators/SearchIndicatorEntryHelper$SearchIndicatorEntryData;->mText:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 87
    sget v0, Lcom/android/launcher3/R$dimen;->search_entry_text_max_width:I

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 93
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextMaxWidth:I

    .line 95
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 101
    sget v0, Lcom/android/launcher3/R$dimen;->search_entry_text_size:I

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 107
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextSize:I

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntryPaddingOffsetX:I

    return-void
.end method

.method public setShouldAutoHide(Z)V
    .registers 2

    .line 1
    return-void
.end method

.method public setShowAssistScreenPoint(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSize(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/ConfigParam;->getInv()Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorSpacingPx:I

    .line 17
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 19
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/ConfigParam;->getInv()Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    .line 31
    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorWidthPx:I

    .line 33
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 35
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/android/launcher/layoutparam/ConfigParam;->getInv()Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v2

    .line 47
    iget v2, v2, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorHeightPx:I

    if-nez p1, :cond_3e

    .line 51
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    if-ne v0, v3, :cond_3e

    .line 55
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    if-ne v1, v3, :cond_3e

    .line 59
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    if-eq v2, v3, :cond_80

    .line 63
    :cond_3e
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    .line 65
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    .line 67
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    .line 69
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v0, :cond_4f

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    goto :goto_7b

    .line 80
    :cond_4f
    sget v0, Lcom/android/launcher3/R$drawable;->ic_launcher_page_point_normal:I

    .line 82
    const-string/jumbo v1, "ic_launcher_page_point_normal.png"

    .line 85
    invoke-direct {p0, v1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLauncherDrawableByNameForUser(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    const-string/jumbo v0, "ic_launcher_page_point_focused.png"

    .line 94
    sget v2, Lcom/android/launcher3/R$drawable;->ic_launcher_page_point_focused:I

    .line 96
    invoke-direct {p0, v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLauncherDrawableByNameForUser(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-eqz v0, :cond_73

    .line 106
    const-string/jumbo v0, "launcher_ic_page_point_assist.png"

    .line 109
    sget v1, Lcom/android/launcher3/R$drawable;->launcher_ic_page_point_assist:I

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLauncherDrawableByNameForUser(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_79

    .line 116
    :cond_73
    sget v0, Lcom/android/launcher3/R$drawable;->ic_launcher_page_point_normal:I

    .line 118
    invoke-direct {p0, v1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLauncherDrawableByNameForUser(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    :goto_79
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_7b
    if-nez p1, :cond_80

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_80
    return-void
.end method

.method public setState(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(IZ)V

    return-void
.end method

.method public setState(IZ)V
    .registers 7

    .line 2
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setFakeState(I)V

    .line 4
    const-string v0, "OplusPageIndicator"

    if-nez p2, :cond_12

    .line 5
    const-string/jumbo p0, "setState: "

    const-string p2, ", not set params to this state"

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/android/common/util/j1;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_12
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    const/16 v3, 0xff

    if-eq p1, p2, :cond_32

    const/4 p2, 0x4

    if-eq p1, p2, :cond_23

    goto :goto_66

    .line 8
    :cond_23
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBgAlpha(I)V

    .line 9
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->adjustPadding()V

    .line 10
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 11
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 12
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 13
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    goto :goto_66

    .line 14
    :cond_32
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntryEnable()Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    :goto_3a
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBgAlpha(I)V

    .line 15
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    .line 16
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->adjustPadding()V

    .line 17
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 18
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 19
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 20
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    goto :goto_66

    .line 21
    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    .line 22
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->adjustPadding()V

    .line 23
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 24
    invoke-static {}, Lcom/android/launcher3/search/IndicatorEntry;->isUsingBreenoEntry()Z

    move-result p1

    if-eqz p1, :cond_60

    const p1, 0x3f4ccccd    # 0.8f

    .line 25
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    goto :goto_62

    .line 26
    :cond_60
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentAlpha:F

    .line 27
    :goto_62
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIconAndTextContentScale:F

    .line 28
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    .line 29
    :goto_66
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Lcom/android/launcher3/search/IndicatorEntry;->isStateAnimRunning()Z

    move-result p1

    if-nez p1, :cond_79

    .line 30
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    .line 31
    :cond_79
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setState: mCurrentState="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIndicatorScrollX="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", caller="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 33
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    return-void
.end method

.method public setTargetBgWidthOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTargetBgWidthOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setTempBgHeight(F)V
    .registers 2

    .line 1
    float-to-int p1, p1

    .line 2
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    .line 3
    .line 4
    return-void
.end method

.method public setTempBgWidth(F)V
    .registers 2

    .line 1
    float-to-int p1, p1

    .line 2
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setTouchInteractive(Z)V
    .registers 4

    .line 1
    const-string/jumbo v0, "setTouchInteractive="

    .line 4
    const-string v1, "OplusPageIndicator"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    return-void
.end method

.method public setVisibleForBreeno(Z)V
    .registers 4

    .line 1
    const-string/jumbo v0, "setVisibleForBreeno visible:"

    .line 4
    const-string v1, " "

    .line 6
    invoke-static {v0, v1, p1}, Ls2/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 11
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "OplusPageIndicator"

    .line 24
    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorVisible:Z

    if-eq v0, p1, :cond_32

    .line 31
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorVisible:Z

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 39
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFocusHoverAnimManager:Lcom/android/launcher/layout/FocusHoverAnimManager;

    if-eqz v0, :cond_2f

    xor-int/lit8 p1, p1, 0x1

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/launcher/layout/FocusHoverAnimManager;->startFocusFrameAnim(Z)V

    .line 48
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_32
    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->indicator()Lcom/android/launcher/layoutparam/PageIndicatorParam;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/PageIndicatorParam;->getWorkspacePageIndicatorHeight()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getBottomMargin(Lcom/android/launcher3/DeviceProfile;)I

    move-result v1

    .line 27
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 29
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->adjustPadding()V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v3, "setWindowInsets: Indicator marginBottom = "

    .line 37
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, ", windowInsets = "

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, ", hotseatBarSizePx = "

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->hotseat()Lcom/android/launcher/layoutparam/HotseatParam;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/android/launcher/layoutparam/HotseatParam;->getHotseatBarSizePx()I

    move-result p1

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v0, "OplusPageIndicator"

    .line 75
    invoke-static {v0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setmBgOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public skipAnimationsToEnd()V
    .registers 1

    .line 1
    return-void
.end method

.method public startAnimation(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    .line 12
    :cond_b
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    .line 13
    .line 14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public startBreenoDecoratorAlphaAnim()V
    .registers 1

    .line 1
    return-void
.end method

.method public startDragWorkspace(Z)V
    .registers 4

    .line 1
    const-string v0, "Start drag workspace, swipeLeft = "

    .line 2
    .line 3
    const-string v1, "OplusPageIndicator"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 9
    .line 10
    if-eqz p0, :cond_10

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/android/launcher3/search/IndicatorEntry;->doReplaceAnimation(ZZIZ)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public startPressDragging()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-gez v0, :cond_f

    .line 13
    .line 14
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    .line 15
    .line 16
    :cond_f
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startPressDragging()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public supportQuickDrag()Z
    .registers 1

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public updateBackground(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public updateBreenoText()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isBreenoEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 7
    invoke-static {}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->getInstance()Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/launcher3/search/BreenoIndicatorConfigSettingManager;->getNextBreenoText()Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "OplusPageIndicator"

    if-eqz v0, :cond_31

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_31

    .line 26
    :cond_19
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 28
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 34
    const-string/jumbo v2, "updateIndicatorText: "

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorText:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_37

    .line 50
    :cond_31
    :goto_31
    const-string/jumbo p0, "updateIndicatorText: no breeno text in current language, use default"

    .line 53
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public updateContent()V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorEntry:Lcom/android/launcher3/search/IndicatorEntry;

    .line 2
    .line 3
    if-eqz p0, :cond_8

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/IndicatorEntry;->updateContent(Z)V

    .line 7
    .line 8
    .line 9
    :cond_8
    return-void
.end method

.method public updateInsetForChildrenMode()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setWindowInsets(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public updatePivot()V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/anim/ripple/ItemsRippleAnimator;->shouldDeferPageIndicatorPinchSync(Landroid/view/View;)Z

    move-result v0

    .line 5
    const-string v1, "OplusPageIndicator"

    if-eqz v0, :cond_f

    .line 9
    const-string/jumbo p0, "updatePivot() return: page indicator in clear-badge ripple"

    .line 12
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 18
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 24
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 32
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 34
    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getWorkSpaceScaling()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 44
    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 46
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3d

    if-eqz v0, :cond_41

    .line 62
    :cond_3d
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawHoverFlag:Z

    if-eqz v0, :cond_63

    .line 66
    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->resetPivot()V

    .line 69
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result p0

    if-eqz p0, :cond_62

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v0, "resetPivot, caller = "

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 85
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-void

    .line 100
    :cond_63
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    .line 102
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getExtraIndicatorPivotY()I

    move-result v2

    .line 110
    const-string/jumbo v3, "updatePivot() getExtraIndicatorPivotY = "

    .line 113
    invoke-static {v2, v3, v1}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v3, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    .line 118
    invoke-virtual {v3}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 124
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Landroid/view/View;)V

    :cond_7e
    if-eqz v2, :cond_8c

    .line 129
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mExtraIndicatorPivotY:I

    if-eq v2, v0, :cond_8c

    .line 133
    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mExtraIndicatorPivotY:I

    .line 135
    const-string/jumbo p0, "updatePivot extraIndicatorPivotY = "

    .line 138
    invoke-static {v2, p0, v1}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8c
    return-void
.end method
