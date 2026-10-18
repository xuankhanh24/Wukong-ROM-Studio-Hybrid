.class public Lcom/android/launcher3/OplusHotseat;
.super Lcom/android/launcher3/Hotseat;
.source "OplusHotseat.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher/IPropertyAnimation;
.implements Lcom/android/launcher3/IUpdatableCellLayout;
.implements Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;
.implements Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;
.implements Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;
.implements Lcom/oplus/quickstep/task/FrontTaskMonitor$FrontTaskChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;
    }
.end annotation


# static fields
.field public static final ALPHA_ALPHA_INDEX_LABELS:[Ljava/lang/String;

.field public static final ALPHA_INDEX_BACK_ANIMATION_CONTROL:I = 0x2

.field public static final ALPHA_INDEX_DEFAULT:I = 0x0

.field private static final ALPHA_INDEX_SIZE:I = 0x3

.field public static final ALPHA_INDEX_TASKBAR_ALIGNMENT:I = 0x1

.field public static final BACKGROUND_ALPHA_ALPHA_INDEX_LABELS:[Ljava/lang/String;

.field public static final BACKGROUND_ALPHA_INDEX_DEFAULT:I = 0x0

.field private static final BACKGROUND_ALPHA_INDEX_SIZE:I = 0x2

.field public static final BACKGROUND_ALPHA_INDEX_TASKBAR_ALIGNMENT:I = 0x1

.field public static final BACKGROUND_CORNER_RADIUS_FACTOR:F = 0.31f

.field public static final BACKGROUND_SMOOTH_CORNER_RADIUS_FACTOR:F = 0.26f

.field public static final CHECK_REPLACE_FOLDER_FINAL_ITEM_HAPPEN_DELAY_TIME:I = 0x32

.field public static final TAG:Ljava/lang/String; = "OplusHotseat"

.field public static final TRANSLATION_Y_ALPHA_INDEX_LABELS:[Ljava/lang/String;

.field public static final TRANSLATION_Y_INDEX_DEFAULT:I = 0x0

.field private static final TRANSLATION_Y_INDEX_SIZE:I

.field public static final TRANSLATION_Y_INDEX_TASKBAR_ALIGNMENT:I = 0x1


# instance fields
.field private dragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private isDragging:Z

.field private mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

.field private mAnimationImpl:Lcom/android/quickstep/util/animation/AnimationImpl;

.field private mBackgroundVisible:Z

.field private mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

.field private mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

.field private mHotseatAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

.field private mHotseatBackgroundAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

.field private mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

.field private mHotseatResizeHelper:Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;

.field private mHotseatSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

.field private mHotseatTranslationY:Lcom/android/launcher3/util/OplusMultiValueTranslation;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mNeedRefreshAfterAttached:Z

.field private mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

.field private mReplaceIconsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mStashedHandlerHiddenListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

.field private mVisibleForTaskbarIconAlign:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "TRANSLATION_Y_INDEX_DEFAULT"

    .line 2
    .line 3
    const-string v1, "TRANSLATION_Y_INDEX_TASKBAR_ALIGNMENT"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/launcher3/OplusHotseat;->TRANSLATION_Y_ALPHA_INDEX_LABELS:[Ljava/lang/String;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    sput v0, Lcom/android/launcher3/OplusHotseat;->TRANSLATION_Y_INDEX_SIZE:I

    .line 13
    .line 14
    const-string v0, "ALPHA_INDEX_TASKBAR_ALIGNMENT"

    .line 15
    .line 16
    const-string v1, "ALPHA_INDEX_BACK_ANIM_CONTROL"

    .line 17
    .line 18
    const-string v2, "ALPHA_INDEX_DEFAULT"

    .line 19
    .line 20
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/android/launcher3/OplusHotseat;->ALPHA_ALPHA_INDEX_LABELS:[Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "BACKGROUND_ALPHA_INDEX_DEFAULT"

    .line 27
    .line 28
    const-string v1, "BACKGROUND_ALPHA_INDEX_TASKBAR_ALIGNMENT"

    .line 29
    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/launcher3/OplusHotseat;->BACKGROUND_ALPHA_ALPHA_INDEX_LABELS:[Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/android/launcher3/OplusHotseat;->isDragging:Z

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    .line 9
    iput-boolean p3, p0, Lcom/android/launcher3/OplusHotseat;->mNeedRefreshAfterAttached:Z

    .line 10
    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 11
    new-instance p2, Lcom/android/launcher3/a5;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/a5;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    .line 12
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->init(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    .line 15
    new-instance p1, Lcom/android/quickstep/util/animation/AnimationImpl;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/animation/AnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mAnimationImpl:Lcom/android/quickstep/util/animation/AnimationImpl;

    return-void
.end method

.method private addDragListener(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method private createBlurDrawable()Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_6
    new-instance v2, Landroid/graphics/Canvas;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v9, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    .line 21
    .line 22
    sget v0, Lcom/support/appcompat/R$attr;->couiColorLabelQuaternary:I

    .line 23
    .line 24
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->getBackgroundRadius(F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-float v3, v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    sub-int/2addr v4, v5

    .line 55
    int-to-float v5, v4

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    int-to-float v6, v4

    .line 61
    const/4 v4, 0x0

    .line 62
    move v7, v0

    .line 63
    move v8, v0

    .line 64
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 68
    .line 69
    if-eqz v2, :cond_4c

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->getBlurDrawable()Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_58

    .line 76
    .line 77
    :cond_4c
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 78
    .line 79
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    const/4 v4, 0x4

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static {v2, v3, v5, v5, v4}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->prepareBlur(Landroid/view/View;Landroid/content/Context;ZZI)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 88
    .line 89
    :cond_58
    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 90
    .line 91
    if-eqz v2, :cond_60

    .line 92
    .line 93
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->updateBlurParams(F)Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :cond_60
    return-object v1
.end method

.method public static getBackgroundRadius(F)F
    .registers 2

    .line 1
    const v0, 0x3e9eb852    # 0.31f

    .line 2
    .line 3
    .line 4
    mul-float/2addr p0, v0

    .line 5
    return p0
.end method

.method public static getDefaultTranslationYProperty(Lcom/android/launcher3/Hotseat;)Landroid/util/FloatProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Hotseat;",
            ")",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/android/launcher3/OplusHotseat;

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    check-cast p0, Lcom/android/launcher3/OplusHotseat;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getHotseatTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_16

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->convertToFloatProperty()Landroid/util/FloatProperty;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    .line 27
    .line 28
    :goto_1b
    return-object p0
.end method

.method private getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "_"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getCellY()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private getScreenWidth(I)I
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_d

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    :goto_e
    if-eqz p0, :cond_12

    .line 16
    .line 17
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    :cond_12
    return p1
.end method

.method public static getSmoothBackgroundRadius(F)F
    .registers 2

    .line 1
    const v0, 0x3e851eb8    # 0.26f

    .line 2
    .line 3
    .line 4
    mul-float/2addr p0, v0

    .line 5
    return p0
.end method

.method private getSpecialHotseatHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1d

    .line 16
    .line 17
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget v0, Lcom/android/launcher3/R$dimen;->dynamic_grid_big_simple_hotseat_height:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_25

    .line 30
    :cond_1d
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->hotseat()Lcom/android/launcher/layoutparam/HotseatParam;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher/layoutparam/HotseatParam;->getHotseatBarSizePx()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_25
    return p0
.end method

.method private handlerDragOverEvent(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private hotSeatRealmeInjector(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->hotseat()Lcom/android/launcher/layoutparam/HotseatParam;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/launcher/layoutparam/HotseatParam;->chooseMarginBottom(Z)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_26

    .line 15
    .line 16
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_26

    .line 25
    .line 26
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget p2, Lcom/android/launcher3/R$dimen;->toggle_bar_layout_margin_bottom:I

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p1, p0

    .line 39
    :cond_26
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/common/logcontroller/ProviderLogController;->getDrawBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7
    sget v0, Lcom/android/launcher3/R$drawable;->debug_draw_background_red:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 19
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_21

    .line 23
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 25
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getSupportDockerBg()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31
    :cond_1e
    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 34
    :cond_21
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    .line 43
    :cond_2a
    new-instance v0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 45
    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    .line 48
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 50
    iget-object p1, v0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 54
    iget-object p1, v0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_4b

    .line 62
    new-instance p1, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatResizeHelper:Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;

    goto :goto_64

    .line 76
    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v0, "init: mLauncher == null ? "

    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_58

    const/4 v1, 0x1

    .line 89
    :cond_58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    const-string p1, "OplusHotseat"

    .line 98
    invoke-static {p1, p0}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method private initViewAddAndRemoveListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2
    .line 3
    new-instance v1, Lcom/android/launcher3/OplusHotseat$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusHotseat$1;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic j(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$setScaleY$1(FLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$setScaleX$2(FLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 11

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/android/launcher3/OplusHotseat;->lambda$animateChildToPosition$5(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$animateChildToPosition$5(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 12

    .line 1
    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p10

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-nez p10, :cond_a

    .line 8
    .line 9
    move p10, v0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    check-cast p10, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p10}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p10

    .line 17
    :goto_10
    sub-float/2addr v0, p10

    .line 18
    int-to-float p1, p1

    .line 19
    mul-float/2addr p1, v0

    .line 20
    int-to-float p2, p2

    .line 21
    mul-float/2addr p2, p10

    .line 22
    add-float/2addr p2, p1

    .line 23
    float-to-int p1, p2

    .line 24
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 25
    .line 26
    int-to-float p1, p3

    .line 27
    mul-float/2addr p1, v0

    .line 28
    int-to-float p2, p4

    .line 29
    mul-float/2addr p2, p10

    .line 30
    add-float/2addr p2, p1

    .line 31
    float-to-int p1, p2

    .line 32
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 33
    .line 34
    int-to-float p1, p5

    .line 35
    mul-float/2addr p1, v0

    .line 36
    int-to-float p2, p6

    .line 37
    mul-float/2addr p2, p10

    .line 38
    add-float/2addr p2, p1

    .line 39
    float-to-int p1, p2

    .line 40
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 41
    .line 42
    int-to-float p1, p7

    .line 43
    mul-float/2addr v0, p1

    .line 44
    int-to-float p1, p8

    .line 45
    mul-float/2addr p10, p1

    .line 46
    add-float/2addr p10, v0

    .line 47
    float-to-int p1, p10

    .line 48
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 49
    .line 50
    invoke-virtual {p9}, Landroid/view/View;->requestLayout()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_19

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 8
    .line 9
    if-eqz p1, :cond_19

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_19

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method private static synthetic lambda$setScaleX$2(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$setScaleY$1(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$setTranslationX$3(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$setTranslationYInner$4(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/OplusHotseat;Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$new$0(Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$setTranslationX$3(FLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private needAddOrRemoveDivider(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 22

    move-object/from16 v0, p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getHotseatItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    .line 26
    new-instance v5, Lcom/android/launcher3/x4;

    const/4 v6, 0x0

    .line 29
    invoke-direct {v5, v6}, Lcom/android/launcher3/x4;-><init>(I)V

    .line 32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 35
    new-instance v5, Lcom/android/launcher3/y4;

    const/4 v6, 0x0

    .line 38
    invoke-direct {v5, v6}, Lcom/android/launcher3/y4;-><init>(I)V

    .line 41
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    .line 56
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/lit8 v9, v8, 0x1

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 70
    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_64

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 80
    check-cast v16, Lcom/android/launcher3/model/data/ItemInfo;

    .line 82
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v17

    if-eqz v17, :cond_5a

    move-object/from16 v14, v16

    const/4 v12, 0x1

    .line 91
    :cond_5a
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v17

    if-eqz v17, :cond_45

    move-object/from16 v15, v16

    const/4 v13, 0x1

    goto :goto_45

    .line 101
    :cond_64
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    .line 105
    const-string v11, "OplusHotseat"

    .line 107
    const-string v10, "Hotseat"

    if-eqz v1, :cond_88

    .line 111
    const-string/jumbo v1, "needAddOrRemoveDivider---->hasSubscribeItem:"

    move-object/from16 v18, v15

    .line 116
    const-string v15, ",hasNormalItem:"

    move-object/from16 v19, v14

    .line 120
    const-string v14, ",hasExpandItem:"

    .line 122
    invoke-static {v1, v6, v15, v7, v14}, Lcom/android/common/config/f;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string v6, ",hasSubscribeDivider:"

    .line 128
    const-string v7, ",hasExpandDivider:"

    .line 130
    invoke-static {v1, v9, v6, v12, v7}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 133
    invoke-static {v1, v13, v10, v11}, Lcom/android/common/config/f;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_88
    move-object/from16 v19, v14

    move-object/from16 v18, v15

    .line 141
    :goto_8c
    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    .line 143
    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    .line 147
    check-cast v1, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_129

    if-nez v12, :cond_cb

    if-nez v5, :cond_9c

    if-eqz v3, :cond_a2

    :cond_9c
    if-nez v5, :cond_cb

    if-nez v8, :cond_cb

    if-eqz v3, :cond_cb

    .line 163
    :cond_a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    .line 168
    :cond_a7
    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_be

    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 178
    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    .line 180
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v9

    if-le v9, v6, :cond_a7

    .line 186
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v6

    goto :goto_a7

    :cond_be
    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 193
    invoke-static {v6}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 201
    invoke-virtual {v0, v6, v2, v7}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_cb
    if-nez v13, :cond_fc

    if-nez v3, :cond_fc

    if-nez v8, :cond_fc

    .line 210
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    .line 215
    :cond_d6
    :goto_d6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 225
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 227
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v6

    if-ge v6, v10, :cond_d6

    .line 233
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v4

    move v10, v4

    goto :goto_d6

    :cond_ee
    add-int/lit8 v10, v10, -0x1

    .line 241
    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    .line 245
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    .line 250
    invoke-virtual {v0, v4, v2, v6}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_fc
    if-eqz v12, :cond_105

    if-nez v5, :cond_107

    if-eqz v3, :cond_105

    if-eqz v8, :cond_105

    goto :goto_107

    :cond_105
    const/4 v2, 0x0

    goto :goto_116

    .line 264
    :cond_107
    :goto_107
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 268
    filled-new-array/range {v19 .. v19}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v4

    .line 272
    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    const/4 v2, 0x0

    .line 276
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :goto_116
    if-eqz v13, :cond_135

    if-eqz v3, :cond_135

    .line 283
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 287
    filled-new-array/range {v18 .. v18}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    .line 291
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 294
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_135

    .line 298
    :cond_129
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 304
    const-string/jumbo v0, "launcher is null"

    .line 307
    invoke-static {v10, v11, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    :goto_135
    return-void
.end method

.method public static needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lcom/android/launcher3/OplusHotseat;

    .line 2
    .line 3
    if-eqz p0, :cond_10

    .line 4
    .line 5
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->canShowHotseatCenterMode()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_10

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p0, 0x0

    .line 18
    :goto_11
    return p0
.end method

.method public static synthetic o(FLandroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$setTranslationYInner$4(FLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic p(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic q(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic r(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private recycleBlurBackground()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

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
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method private removeDragListener(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method private resetDragAnimIfNecessary()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->resetDragAnimIfNecessary()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public static bridge synthetic s(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private setAlphaInner(F)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    .line 10
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v1, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->oplusFeatureSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 18
    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    :cond_1a
    invoke-static {p1, v0}, Lcom/oplus/basecommon/util/FunctionsKt;->shouldPrintAlphaLog(FF)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 33
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p0

    if-eqz p0, :cond_43

    .line 39
    const-string/jumbo p0, "setAlpha:"

    .line 42
    const-string v1, "-->"

    .line 44
    const-string v2, "; caller = "

    .line 46
    invoke-static {p0, v0, v1, p1, v2}, Landroidx/fragment/app/o;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xf

    .line 52
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    const-string p1, "OplusHotseat"

    .line 65
    invoke-static {p1, p0}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method private setBackgroundAlphaInner(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method private setSpecialFlagForBlurViewInsideHotseat(Landroid/view/View;Z)V
    .registers 5

    .line 1
    instance-of p0, p1, Lcom/android/launcher3/folder/FlexibleFolderIcon;

    if-eqz p0, :cond_42

    .line 5
    check-cast p1, Lcom/android/launcher3/folder/FlexibleFolderIcon;

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FlexibleFolderIcon;->getPreviewBackground()Lcom/android/launcher3/folder/OplusPreviewBackground;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBlurProp()Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v0, "setSpecialFlagForBlurViewInsideHotseat inHotseat = "

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    const-string v0, "Hotseat"

    .line 34
    const-string v1, "OplusHotseat"

    .line 36
    invoke-static {v0, v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FlexibleFolderIcon;->getPreviewBackground()Lcom/android/launcher3/folder/OplusPreviewBackground;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBlurProp()Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    move-result-object p0

    .line 47
    invoke-virtual {p0, p2}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setIgnorePageScrollBlurAnim(Z)V

    .line 50
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p0

    if-eqz p0, :cond_42

    .line 56
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FlexibleFolderIcon;->getPreviewBackground()Lcom/android/launcher3/folder/OplusPreviewBackground;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBlurProp()Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    move-result-object p0

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setSkipFadeBlurAnimaWhenStateTransition(Z)V

    :cond_42
    return-void
.end method

.method private setTranslationYInner(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/launcher3/z4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/launcher3/z4;-><init>(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->syncBottomSearchIfNotInClearBadgeRipple(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private syncBottomSearchIfNotInClearBadgeRipple(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->oplusFeatureSupport(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1b

    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/launcher3/anim/ripple/ItemsRippleAnimator;->shouldDeferNearbyRipplePinchSync(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_18

    .line 23
    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static bridge synthetic t(Lcom/android/launcher3/OplusHotseat;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAlphaInner(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic u(Lcom/android/launcher3/OplusHotseat;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setBackgroundAlphaInner(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private updateBlurParams(F)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->getBlurColorParams(Landroid/content/Context;)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setBlurCornerRadius(FZLcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;->getBlendMode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;->getBlendColor()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$BlendColorParams;->getMixColor()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v3, 0x320

    .line 30
    .line 31
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setBlurParams(IIII)Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->setIgnorePageScrollBlurAnim(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->getBlurDrawable()Lcom/android/launcher3/uioverrides/states/blurdrawable/LayerBlurDrawable;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;II)V
    .registers 6

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    invoke-virtual {p2, p4, p5}, Lcom/android/launcher3/model/data/ItemInfo;->setCellXY(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p4, p5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellXY(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p4, p5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellXY(II)V

    .line 10
    .line 11
    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p3, p4, p5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellXY(II)V

    .line 14
    .line 15
    .line 16
    :goto_f
    iput p4, p3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->reorderToCellX:I

    .line 17
    .line 18
    iput p5, p3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->reorderToCellY:I

    .line 19
    .line 20
    return-void
.end method

.method public static bridge synthetic v(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusHotseat;->setSpecialFlagForBlurViewInsideHotseat(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic w(Lcom/android/launcher3/OplusHotseat;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setTranslationYInner(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z
    .registers 15

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    .line 6
    .line 7
    if-eqz v1, :cond_23

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 11
    .line 12
    iget v2, v1, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 13
    .line 14
    invoke-static {}, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;->getHotseatIconSize()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eq v2, v3, :cond_1c

    .line 19
    .line 20
    invoke-static {}, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;->getHotseatIconSize()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, v1, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->forceReapplyFancyIcon()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object v3, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 37
    .line 38
    move-object v4, p1

    .line 39
    move v5, p2

    .line 40
    move v6, p3

    .line 41
    move-object v7, p4

    .line 42
    move v8, p5

    .line 43
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)V

    .line 44
    .line 45
    .line 46
    return v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .registers 30

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    const/4 v8, 0x0

    .line 10
    if-nez v15, :cond_13

    .line 11
    .line 12
    const-string v0, "OplusHotseat"

    .line 13
    .line 14
    const-string v1, "animateChildToPosition, child == null, return false"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v8

    .line 20
    :cond_13
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x1

    .line 25
    if-eq v0, v1, :cond_124

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v14, v0

    .line 32
    check-cast v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getSpanX()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getSpanY()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v14, v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setSpanXY(II)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v13, 0x1

    .line 59
    if-eqz v0, :cond_68

    .line 60
    .line 61
    iget v0, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->reorderToCellX:I

    .line 62
    .line 63
    move/from16 v4, p2

    .line 64
    .line 65
    if-ne v0, v4, :cond_55

    .line 66
    .line 67
    iget v0, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->reorderToCellY:I

    .line 68
    .line 69
    move/from16 v5, p3

    .line 70
    .line 71
    if-ne v0, v5, :cond_57

    .line 72
    .line 73
    move-object/from16 v0, p0

    .line 74
    .line 75
    move/from16 v1, p6

    .line 76
    .line 77
    move-object v3, v14

    .line 78
    move/from16 v4, p2

    .line 79
    .line 80
    move/from16 v5, p3

    .line 81
    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;II)V

    .line 83
    .line 84
    .line 85
    return v13

    .line 86
    :cond_55
    move/from16 v5, p3

    .line 87
    .line 88
    :cond_57
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/animation/Animator;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 97
    .line 98
    .line 99
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    move/from16 v4, p2

    .line 106
    .line 107
    move/from16 v5, p3

    .line 108
    .line 109
    :goto_6c
    iget v9, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 110
    .line 111
    iget v11, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 112
    .line 113
    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 114
    .line 115
    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 116
    .line 117
    if-eqz p7, :cond_a7

    .line 118
    .line 119
    if-eqz p6, :cond_7b

    .line 120
    .line 121
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 122
    .line 123
    goto :goto_7d

    .line 124
    :cond_7b
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 125
    .line 126
    :goto_7d
    iget v1, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellX:I

    .line 127
    .line 128
    iget v3, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellY:I

    .line 129
    .line 130
    iget v8, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 131
    .line 132
    iget v13, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 133
    .line 134
    const/16 v21, 0x0

    .line 135
    .line 136
    move-object/from16 v16, v0

    .line 137
    .line 138
    move/from16 v17, v1

    .line 139
    .line 140
    move/from16 v18, v3

    .line 141
    .line 142
    move/from16 v19, v8

    .line 143
    .line 144
    move/from16 v20, v13

    .line 145
    .line 146
    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 147
    .line 148
    .line 149
    iget v1, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 150
    .line 151
    iget v3, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 152
    .line 153
    const/16 v21, 0x1

    .line 154
    .line 155
    move/from16 v17, p2

    .line 156
    .line 157
    move/from16 v18, p3

    .line 158
    .line 159
    move/from16 v19, v1

    .line 160
    .line 161
    move/from16 v20, v3

    .line 162
    .line 163
    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 164
    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    goto :goto_a8

    .line 168
    :cond_a7
    move v0, v13

    .line 169
    :goto_a8
    iput-boolean v0, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 170
    .line 171
    move-object/from16 v0, p0

    .line 172
    .line 173
    move/from16 v1, p6

    .line 174
    .line 175
    move-object v3, v14

    .line 176
    move/from16 v4, p2

    .line 177
    .line 178
    move/from16 v5, p3

    .line 179
    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 188
    .line 189
    iget v0, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 190
    .line 191
    iget v1, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 192
    .line 193
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 194
    .line 195
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 196
    .line 197
    iput v9, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 198
    .line 199
    iput v11, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 200
    .line 201
    iput v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 202
    .line 203
    iput v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 204
    .line 205
    if-ne v9, v0, :cond_d8

    .line 206
    .line 207
    if-ne v11, v1, :cond_d8

    .line 208
    .line 209
    if-ne v12, v2, :cond_d8

    .line 210
    .line 211
    if-ne v10, v3, :cond_d8

    .line 212
    .line 213
    const/4 v4, 0x1

    .line 214
    iput-boolean v4, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 215
    .line 216
    return v4

    .line 217
    :cond_d8
    const/4 v4, 0x1

    .line 218
    const/4 v5, 0x2

    .line 219
    new-array v5, v5, [F

    .line 220
    .line 221
    fill-array-data v5, :array_126

    .line 222
    .line 223
    .line 224
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    move/from16 v7, p4

    .line 229
    .line 230
    int-to-long v7, v7

    .line 231
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    .line 233
    .line 234
    sget-object v7, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 235
    .line 236
    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    .line 238
    .line 239
    iget-object v7, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 240
    .line 241
    invoke-virtual {v7, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    new-instance v13, Lcom/android/launcher3/b5;

    .line 245
    .line 246
    move-object v7, v13

    .line 247
    move-object v8, v14

    .line 248
    move/from16 v16, v10

    .line 249
    .line 250
    move v10, v0

    .line 251
    move v0, v12

    .line 252
    move v12, v1

    .line 253
    move v1, v4

    .line 254
    move-object v4, v13

    .line 255
    move v13, v0

    .line 256
    move-object v0, v14

    .line 257
    move v14, v2

    .line 258
    move-object v2, v15

    .line 259
    move/from16 v15, v16

    .line 260
    .line 261
    move/from16 v16, v3

    .line 262
    .line 263
    move-object/from16 v17, p1

    .line 264
    .line 265
    invoke-direct/range {v7 .. v17}, Lcom/android/launcher3/b5;-><init>(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;IIIIIIIILandroid/view/View;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    new-instance v4, Lcom/android/launcher3/OplusHotseat$5;

    .line 276
    .line 277
    invoke-direct {v4, v6, v0, v2, v3}, Lcom/android/launcher3/OplusHotseat$5;-><init>(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;Landroid/view/View;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    .line 282
    .line 283
    move/from16 v0, p5

    .line 284
    .line 285
    int-to-long v2, v0

    .line 286
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 290
    .line 291
    .line 292
    return v1

    .line 293
    :cond_124
    move v0, v8

    .line 294
    return v0

    .line 295
    :array_126
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V
    .registers 4

    .line 1
    return-void
.end method

.method public calculateHotseatCellWidth(IIII)I
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_31

    .line 6
    .line 7
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->isFoldScreenExpandedFromDisplay()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_31

    .line 12
    .line 13
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p4, 0x2

    .line 18
    if-eqz p0, :cond_1d

    .line 19
    .line 20
    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1d

    .line 27
    .line 28
    move p0, p4

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 p0, 0x1

    .line 31
    :goto_1e
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    mul-int/2addr v0, p0

    .line 36
    sub-int/2addr p1, v0

    .line 37
    add-int/lit8 v0, p3, -0x1

    .line 38
    .line 39
    mul-int/2addr v0, p2

    .line 40
    sub-int/2addr p1, v0

    .line 41
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    mul-int/2addr p2, p4

    .line 46
    sub-int/2addr p1, p2

    .line 47
    sub-int/2addr p3, p0

    .line 48
    div-int/2addr p1, p3

    .line 49
    return p1

    .line 50
    :cond_31
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isDockerMax5()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_46

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->hotseat()Lcom/android/launcher/layoutparam/HotseatParam;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, p4}, Lcom/android/launcher/layoutparam/HotseatParam;->getAdaptiveHotseatCellWidth(I)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_46
    add-int/lit8 p0, p3, -0x1

    .line 72
    .line 73
    mul-int/2addr p0, p2

    .line 74
    sub-int/2addr p1, p0

    .line 75
    div-int/2addr p1, p3

    .line 76
    return p1
.end method

.method public canReceivePointerEvents()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->canReceivePointerEvents()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 8
    .line 9
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

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

.method public cancelAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public cancelHotseatExpandAnimate()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->cancelHotseatExpandAnimate()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public clearSpringAnimation(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->clearAnimation(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public deleteExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->deleteExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public deleteExpandItems(Ljava/util/ArrayList;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->deleteExpandItems(Ljava/util/ArrayList;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_19

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "ev = "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "OplusHotseat"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public endAllSpringAnimations()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->endAllAnimations()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public endAndClearAllSpringAnimations()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->clearAllAnimations()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public findNearestArea(IIII[I)[I
    .registers 6

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->getTargetCellx(Ljava/lang/Number;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 p1, 0x0

    .line 12
    filled-new-array {p0, p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public findNearestAreaForMergeFolder(IIII[I)[I
    .registers 6

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->getNearestCellX(F)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 p1, 0x0

    .line 9
    filled-new-array {p0, p1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public finishAnimation()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->finishAnimation()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public finishHotseatExpandAnimate()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->finishHotseatExpandAnimate()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public getAdaptiveHotseatCellWidth(I)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isDockerMax5()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->hotseat()Lcom/android/launcher/layoutparam/HotseatParam;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/launcher/layoutparam/HotseatParam;->getAdaptiveHotseatCellWidth(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_15
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 23
    .line 24
    return p0
.end method

.method public getAnimationImpl()Lcom/android/quickstep/util/animation/AnimationImpl;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimationImpl:Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBackgroundAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatBackgroundAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    new-instance v0, Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 6
    .line 7
    new-instance v1, Lcom/android/launcher3/OplusHotseat$6;

    .line 8
    .line 9
    const-string v2, "HotseatBackgroundAlpha"

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/OplusHotseat$6;-><init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/util/OplusMultiValueAlpha;-><init>(Landroid/view/View;Landroid/util/FloatProperty;II)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatBackgroundAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 20
    .line 21
    :cond_14
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatBackgroundAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 22
    .line 23
    return-object p0
.end method

.method public getCellXFromOrder(I)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 17
    .line 18
    if-eqz v0, :cond_15

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_15
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_6e

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreenByActivity(Lcom/android/launcher3/Launcher;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_58

    .line 51
    .line 52
    const-string v2, "getCellXFromOrder,rank:"

    .line 53
    .line 54
    const-string v3, ",normalItemCount:"

    .line 55
    .line 56
    const-string v4, ",subscribeAndDividerCount:"

    .line 57
    .line 58
    invoke-static {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, ",isSupportDockerExpandScreen:"

    .line 63
    .line 64
    const-string v4, ", call = "

    .line 65
    .line 66
    invoke-static {v1, v3, v4, v2, p0}, Landroidx/compose/ui/graphics/colorspace/d;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 67
    .line 68
    .line 69
    const/16 v3, 0x19

    .line 70
    .line 71
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "Taskbar"

    .line 83
    .line 84
    const-string v4, "OplusHotseat"

    .line 85
    .line 86
    invoke-static {v3, v4, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_58
    if-eqz p0, :cond_65

    .line 90
    .line 91
    if-gt v1, p1, :cond_65

    .line 92
    .line 93
    add-int v2, v0, v1

    .line 94
    .line 95
    if-ge p1, v2, :cond_65

    .line 96
    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    sub-int/2addr v2, p1

    .line 100
    add-int/2addr v2, v1

    .line 101
    return v2

    .line 102
    :cond_65
    if-nez p0, :cond_6d

    .line 103
    .line 104
    if-ge p1, v0, :cond_6d

    .line 105
    .line 106
    add-int/lit8 p1, p1, 0x1

    .line 107
    .line 108
    sub-int/2addr v0, p1

    .line 109
    return v0

    .line 110
    :cond_6d
    return p1

    .line 111
    :cond_6e
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 112
    .line 113
    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    sub-int/2addr p0, p1

    .line 120
    return p0
.end method

.method public getCellYFromOrder(I)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1b

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    sub-int/2addr v0, p1

    .line 27
    return v0

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getChildAt(II)Landroid/view/View;
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->getChildAt(II)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getDistanceFromWorkspaceCellVisualCenter(Lcom/android/launcher3/model/data/ItemInfo;FF[I)F
    .registers 5

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->getDistance(FF)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getDragObject()Lcom/android/launcher3/DropTarget$DragObject;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public getFinalDestRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->getFinalDestRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getFinalRect(I)Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->getFinalRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getFinalRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->getFinalRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getFinalXY(Lcom/android/launcher3/model/data/ItemInfo;[F)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->getFinalXY(Lcom/android/launcher3/model/data/ItemInfo;[F)V

    return-void
.end method

.method public getFinalXY(Lcom/android/launcher3/model/data/ItemInfo;[I)V
    .registers 3

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->getFinalXY(Lcom/android/launcher3/model/data/ItemInfo;[I)V

    return-void
.end method

.method public getFirstExpandItem(I)Landroid/view/View;
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getFirstExpandItem(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFixedCellHeight()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public getFixedCellWidth()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public getHotseatAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 2
    .line 3
    if-nez v0, :cond_18

    .line 4
    .line 5
    new-instance v0, Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 6
    .line 7
    new-instance v1, Lcom/android/launcher3/OplusHotseat$7;

    .line 8
    .line 9
    const-string v2, "HotseatAlpha"

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/OplusHotseat$7;-><init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/util/OplusMultiValueAlpha;-><init>(Landroid/view/View;Landroid/util/FloatProperty;II)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OplusMultiValueAlpha;->setUpdateVisibility(Z)V

    .line 23
    .line 24
    .line 25
    :cond_18
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatAlpha:Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 26
    .line 27
    return-object p0
.end method

.method public getHotseatResizeHelper()Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatResizeHelper:Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHotseatTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatTranslationY:Lcom/android/launcher3/util/OplusMultiValueTranslation;

    .line 2
    .line 3
    if-nez v0, :cond_1b

    .line 4
    .line 5
    new-instance v0, Lcom/android/launcher3/util/OplusMultiValueTranslation;

    .line 6
    .line 7
    new-instance v3, Lcom/android/launcher3/OplusHotseat$3;

    .line 8
    .line 9
    const-string v1, "HotseatTranslationY"

    .line 10
    .line 11
    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/OplusHotseat$3;-><init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v4, Lcom/android/launcher3/OplusHotseat;->TRANSLATION_Y_INDEX_SIZE:I

    .line 15
    .line 16
    sget-object v5, Lcom/android/launcher3/util/OplusMultiValueTranslation;->TRANSLATION_AGGREGATOR:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    sget-object v7, Lcom/android/launcher3/OplusHotseat;->TRANSLATION_Y_ALPHA_INDEX_LABELS:[Ljava/lang/String;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move-object v2, p0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/util/OplusMultiValueTranslation;-><init>(Landroid/view/View;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F[Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatTranslationY:Lcom/android/launcher3/util/OplusMultiValueTranslation;

    .line 27
    .line 28
    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatTranslationY:Lcom/android/launcher3/util/OplusMultiValueTranslation;

    .line 29
    .line 30
    return-object p0
.end method

.method public getMaxDistanceForFolderCreation(Lcom/android/launcher/WorkspaceInjector;Lcom/android/launcher3/model/data/ItemInfo;[I)F
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/launcher3/hotseat/animations/HotseatResizeHelper;->getHotseatIconSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const p1, 0x3ee66666    # 0.45f

    .line 7
    .line 8
    .line 9
    mul-float/2addr p0, p1

    .line 10
    return p0
.end method

.method public getUIDividerCount()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_19

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v2, v2, Lcom/android/launcher3/hotseat/HotseatDividerView;

    .line 18
    .line 19
    if-eqz v2, :cond_16

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_19
    return v1
.end method

.method public getUINormalChildViews()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_32

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_2f

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 28
    .line 29
    if-eqz v4, :cond_2f

    .line 30
    .line 31
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2f

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2f

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_6

    .line 51
    :cond_32
    return-object v0
.end method

.method public getUISubscribeCount()I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_2d

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_2a

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 24
    .line 25
    if-eqz v3, :cond_2a

    .line 26
    .line 27
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_28

    .line 34
    .line 35
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2a

    .line 40
    .line 41
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2d
    return v1
.end method

.method public getUnusedHorizontalSpace()I
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int/2addr v2, v3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v2, v3

    .line 21
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 22
    .line 23
    sub-int/2addr v3, v0

    .line 24
    mul-int/2addr v3, v1

    .line 25
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    mul-int/2addr v1, v0

    .line 30
    add-int/2addr v1, v3

    .line 31
    sub-int/2addr v2, v1

    .line 32
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 33
    .line 34
    sub-int/2addr v1, v0

    .line 35
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 36
    .line 37
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    mul-int/2addr v1, p0

    .line 40
    sub-int/2addr v2, v1

    .line 41
    return v2
.end method

.method public hasVerticalHotseat()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 2
    .line 3
    return p0
.end method

.method public initUpdateSizeRunable(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/launcher3/OplusHotseat$2;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/OplusHotseat$2;-><init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public injectOnMeasureLog1(II)V
    .registers 3

    .line 1
    return-void
.end method

.method public injectOnMeasureLog2(II)V
    .registers 3

    .line 1
    return-void
.end method

.method public isDragging()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/OplusHotseat;->isDragging:Z

    .line 2
    .line 3
    return p0
.end method

.method public isDragingUpdateExpandData()Ljava/lang/Boolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->isDragingUpdateExpandData()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    return-object p0
.end method

.method public isFinishDragToInToOut()Ljava/lang/Boolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->isFinishDragToInToOut()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    return-object p0
.end method

.method public isHotseatExpandAnimating()Z
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->isHotseatExpandAnimating()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public isHotseatUpdatingExpandWithOutAnim()Z
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->isHotseatUpdatingExpandWithOutAnim()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public isMoving()Z
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->isMoving()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public isRegionVacant(IIII)Z
    .registers 5

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public mapPointFromDropLayout(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;[F[I)V
    .registers 6

    .line 1
    iget-object p4, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p4, p1, p3, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAddItem(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onAddItem(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-direct {p0}, Lcom/android/launcher3/OplusHotseat;->initViewAddAndRemoveListener()V

    .line 7
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    .line 9
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    .line 15
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    .line 17
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->addStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->reattach()V

    .line 27
    :cond_1a
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "onAttachedToWindow mNeedRefreshAfterAttached:"

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mNeedRefreshAfterAttached:Z

    .line 43
    const-string v2, "OplusHotseat"

    .line 45
    invoke-static {v2, v0, v1}, Landroidx/room/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 48
    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    if-eqz v0, :cond_3d

    .line 52
    iget-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mNeedRefreshAfterAttached:Z

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mNeedRefreshAfterAttached:Z

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->initList(Z)V

    .line 62
    :cond_3d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/launcher3/OplusHotseat$4;

    .line 74
    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusHotseat$4;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4f
    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onCreate(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onDestroy(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/launcher3/OplusHotseat;->recycleBlurBackground()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->removeStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 21
    .line 22
    if-eqz p0, :cond_1a

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->cleanup()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void
.end method

.method public onDokcerItemChang(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDokcerItemChang(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDragCancelAndForceGoBack(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->dragCancelAndForceGoBack(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDragEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->isDragging:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDragEnd()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->removeDragListener(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 25
    .line 26
    if-eqz v0, :cond_1e

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->onDragEnd()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->removeDragListener(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->resetDragFromHotseatToUnNormalAreaItem()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "onDragEnter, screenId="

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mContainerType="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 29
    const-string v2, "Drag"

    .line 31
    const-string v3, "OplusHotseat"

    .line 33
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/g;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_23
    sget-object v0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 38
    invoke-virtual {v0}, Lcom/oplus/basecommon/util/TraceHelper;->isTraceViewEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_4e

    .line 46
    sget-object v0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    const-string v4, "ON_DRAG_ENTER#Type="

    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v4, ",screenId="

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/basecommon/util/TraceHelper;->traceBegin(JLjava/lang/String;)V

    .line 79
    :cond_4e
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    if-eqz v0, :cond_6e

    .line 86
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->addDragListener(Landroid/content/Context;)V

    .line 91
    iget-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->isDragging:Z

    if-nez v0, :cond_69

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 97
    invoke-virtual {v0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->isDragging:Z

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    goto :goto_6e

    .line 106
    :cond_69
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 111
    :cond_6e
    :goto_6e
    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_75

    return-void

    .line 118
    :cond_75
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_88

    .line 122
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 124
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->addDragListener(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 132
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 137
    :cond_88
    sget-object p0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 139
    invoke-virtual {p0}, Lcom/oplus/basecommon/util/TraceHelper;->isTraceViewEnable()Z

    move-result p0

    if-eqz p0, :cond_95

    .line 145
    sget-object p0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 147
    invoke-virtual {p0, v1, v2}, Lcom/oplus/basecommon/util/TraceHelper;->traceEnd(J)V

    :cond_95
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "onDragExit,  screenId="

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mContainerType="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 29
    const-string v2, "Drag"

    .line 31
    const-string v3, "OplusHotseat"

    .line 33
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/g;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_23
    sget-object v0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 38
    invoke-virtual {v0}, Lcom/oplus/basecommon/util/TraceHelper;->isTraceViewEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_4e

    .line 46
    sget-object v0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    const-string v4, "ON_DRAG_EXIT#Type="

    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v4, ",screenId="

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/basecommon/util/TraceHelper;->traceBegin(JLjava/lang/String;)V

    .line 79
    :cond_4e
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDragExitLocal(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    if-eqz v0, :cond_58

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 89
    :cond_58
    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_5f

    return-void

    .line 96
    :cond_5f
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_66

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 103
    :cond_66
    sget-object p0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 105
    invoke-virtual {p0}, Lcom/oplus/basecommon/util/TraceHelper;->isTraceViewEnable()Z

    move-result p0

    if-eqz p0, :cond_73

    .line 111
    sget-object p0, Lcom/oplus/basecommon/util/TraceHelper;->INSTANCE:Lcom/oplus/basecommon/util/TraceHelper;

    .line 113
    invoke-virtual {p0, v1, v2}, Lcom/oplus/basecommon/util/TraceHelper;->traceEnd(J)V

    :cond_73
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->handlerDragOverEvent(Lcom/android/launcher3/DropTarget$DragObject;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    .line 1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_c

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->updateDockerBgIfNecessary()V

    .line 11
    .line 12
    .line 13
    :cond_c
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1f

    .line 16
    .line 17
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getSupportDockerBg()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1f

    .line 24
    .line 25
    sget-object v0, Lcom/android/launcher/custom/OplusToolUtils;->INSTANCE:Lcom/android/launcher/custom/OplusToolUtils;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 28
    .line 29
    invoke-interface {v0, p1, p0, v1}, Lcom/android/launcher/custom/IBrandExt;->drawDockerBack(Landroid/graphics/Canvas;Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/Launcher;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    return-void
.end method

.method public onDropCompleted(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDropCompleted(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDroppedToFolder(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDroppedToFolder(Landroid/view/View;)V

    return-void
.end method

.method public onDroppedToFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDroppedToFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderIcon;)V

    return-void
.end method

.method public onFileManagerVisibilityChange(Ljava/lang/String;I)V
    .registers 6

    .line 1
    const-string v0, "fileManager visibility change"

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 13
    .line 14
    invoke-static {p2, p1, p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;->openOrCloseFileManagerCallBack(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onFindCellAndDropedOnHotseat(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFrontTaskChange(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onFrontTaskChange, frontPackages: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "OplusHotseat"

    .line 18
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    :goto_15
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 24
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 30
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 36
    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_3d

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 44
    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_3d

    .line 48
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 50
    invoke-static {v2, p1}, Lcom/android/common/util/IconUtils;->anyMatchInExpandDataList(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)Z

    move-result v2

    .line 54
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 56
    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v3, 0x1

    .line 59
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/iconrender/impl/IShadowUnderIconRenderer;->setShadowVisible(ZZ)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_40
    return-void
.end method

.method public onHotSeatFinishBinding()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->onHotSeatFinishBinding()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onHotSeatFinishRebind()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->clearAllAnimations()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onHotSeatFinishRebind()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 23
    .line 24
    if-eqz p0, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->updateGridSize()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public onIdpChange(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onIdpChange(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onIdpChangeWhenBinding(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onIdpChangeWhenBinding(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 4
    const-string p0, "OplusHotseat"

    .line 6
    const-string/jumbo p1, "onInterceptTouchEvent, ev == null, return false"

    .line 9
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_1a

    .line 20
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_1a

    .line 24
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_3a

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_3a

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p0

    const/high16 v1, 0x1000000

    or-int/2addr p0, v1

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_3a
    return v0
.end method

.method public onLauncherItemsFinishBinding()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mNewSpringAnimation:Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/animations/HotseatSpringCenterLayoutAnimation;->clearAllAnimations()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->onLauncherItemsFinishBinding()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    sub-int v0, p4, p2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 27
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-double v1, v2

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, p3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 50
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 57
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 61
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 70
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 72
    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 81
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    .line 91
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 93
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p5

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v4

    .line 101
    invoke-virtual {p3, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    iget-boolean p3, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez p3, :cond_7c

    .line 108
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p2, p4

    sub-int p3, p2, p1

    .line 117
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p1

    .line 120
    div-int/lit8 v0, p2, 0x2

    move p2, p1

    move p1, p3

    goto :goto_7d

    :cond_7c
    const/4 p2, 0x0

    .line 126
    :goto_7d
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result p3

    if-eqz p3, :cond_b7

    .line 132
    const-string/jumbo p3, "onLayout : left = "

    .line 135
    const-string p4, ", top = "

    .line 137
    const-string v2, ", right = "

    .line 139
    invoke-static {p1, v1, p3, p4, v2}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 143
    const-string p4, ", bottom = "

    .line 145
    const-string v2, ", mTempRect = "

    .line 147
    invoke-static {v0, p5, p4, v2, p3}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 150
    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string p4, ", mHasVerticalHotseat = "

    .line 157
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean p4, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 162
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string p4, ", shortcutsAndWidgetWidth = "

    .line 167
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 177
    const-string p3, "Hotseat"

    .line 179
    const-string p4, "OplusHotseat"

    .line 181
    invoke-static {p3, p4, p2}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_b7
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 186
    invoke-virtual {p0, p1, v1, v0, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget v5, Lcom/android/launcher3/R$dimen;->dynamic_grid_big_simple_hotseat_height:I

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_25

    .line 36
    .line 37
    goto :goto_29

    .line 38
    :cond_25
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    const-string v7, "OplusHotseat"

    .line 49
    .line 50
    if-eqz v6, :cond_53

    .line 51
    .line 52
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 55
    .line 56
    const/4 v6, -0x1

    .line 57
    if-ne v5, v6, :cond_53

    .line 58
    .line 59
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_45

    .line 64
    .line 65
    const-string v4, "Hotseat - onMeasure ERROR: lp.height not set"

    .line 66
    .line 67
    invoke-static {v7, v4}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    iget-object v4, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 81
    .line 82
    mul-int/lit8 v4, v4, 0x2

    .line 83
    .line 84
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    add-int/2addr v6, v5

    .line 93
    sub-int v5, v3, v6

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    add-int/2addr v8, v6

    .line 104
    sub-int v6, v4, v8

    .line 105
    .line 106
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isDockerMax5()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_88

    .line 111
    .line 112
    iget-object v8, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 113
    .line 114
    invoke-static {v8}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->hasOplusBottomSearchBoxView(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_88

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-nez v8, :cond_88

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_88

    .line 131
    .line 132
    iget-object v8, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 133
    .line 134
    invoke-static {v8}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->updateBottomSearchWidth(Lcom/android/launcher3/Launcher;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    invoke-direct {v0, v3}, Lcom/android/launcher3/OplusHotseat;->getScreenWidth(I)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eq v8, v3, :cond_9b

    .line 142
    .line 143
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_9b

    .line 148
    .line 149
    const-string v9, "Hotseat - onMeasure ERROR: widthSize = "

    .line 150
    .line 151
    const-string v10, ", screenWidth from resource = "

    .line 152
    .line 153
    invoke-static {v3, v8, v9, v10, v7}, Lcom/android/common/util/i;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_9b
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 157
    .line 158
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 159
    .line 160
    iget-boolean v9, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 161
    .line 162
    const/4 v10, 0x1

    .line 163
    if-nez v9, :cond_a6

    .line 164
    .line 165
    move v9, v10

    .line 166
    goto :goto_aa

    .line 167
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    :goto_aa
    invoke-static {v4, v8, v9}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    iput v13, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 176
    .line 177
    iget-object v11, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 178
    .line 179
    iget v12, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 180
    .line 181
    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 182
    .line 183
    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 184
    .line 185
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 186
    .line 187
    move-object/from16 v16, v8

    .line 188
    .line 189
    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    const/4 v9, 0x0

    .line 197
    if-nez v8, :cond_ce

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-eqz v8, :cond_cd

    .line 204
    .line 205
    goto :goto_ce

    .line 206
    :cond_cd
    move v10, v9

    .line 207
    :cond_ce
    :goto_ce
    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 208
    .line 209
    if-lez v8, :cond_d7

    .line 210
    .line 211
    iget v11, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 212
    .line 213
    if-lez v11, :cond_d7

    .line 214
    .line 215
    goto :goto_e2

    .line 216
    :cond_d7
    if-eqz v1, :cond_db

    .line 217
    .line 218
    if-nez v2, :cond_e0

    .line 219
    .line 220
    :cond_db
    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    .line 221
    .line 222
    invoke-static {v7, v1}, Lcom/oplus/basecommon/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_e0
    move v8, v5

    .line 226
    move v11, v6

    .line 227
    :goto_e2
    if-lez v8, :cond_ec

    .line 228
    .line 229
    if-lez v11, :cond_ec

    .line 230
    .line 231
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_18e

    .line 236
    .line 237
    :cond_ec
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v2, "Hotseat - onMeasure, mFixedCellWidth = "

    .line 240
    .line 241
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v2, " , mFixedCellHeight = "

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, " , mCellWidth = "

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v2, " , mCellHeight = "

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 275
    .line 276
    const-string v12, " , childWidthSize = "

    .line 277
    .line 278
    const-string v13, " , childHeightSize = "

    .line 279
    .line 280
    invoke-static {v2, v5, v12, v13, v1}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v2, " , mCountX = "

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v2, " , mCountY = "

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 302
    .line 303
    const-string v5, " , newWidth = "

    .line 304
    .line 305
    const-string v6, ", newHeight = "

    .line 306
    .line 307
    invoke-static {v2, v8, v5, v6, v1}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 308
    .line 309
    .line 310
    const-string v2, " , widthSize = "

    .line 311
    .line 312
    const-string v5, ", heightSize = "

    .line 313
    .line 314
    invoke-static {v11, v3, v2, v5, v1}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, " , getPaddingLeft() = "

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v2, " , getPaddingRight() = "

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v2, " , needUsePadding:"

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v2, " , isMoving():"

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v2, " , isDragging():"

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v2, " , curLauncherMode , "

    .line 377
    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v7, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_18e
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 400
    .line 401
    const/high16 v2, 0x40000000    # 2.0f

    .line 402
    .line 403
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 415
    .line 416
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 421
    .line 422
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 427
    .line 428
    if-lez v5, :cond_1b5

    .line 429
    .line 430
    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 431
    .line 432
    if-lez v5, :cond_1b5

    .line 433
    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 435
    .line 436
    .line 437
    goto :goto_1b8

    .line 438
    :cond_1b5
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 439
    .line 440
    .line 441
    :goto_1b8
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_1cf

    .line 446
    .line 447
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-lez v1, :cond_1ca

    .line 454
    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    .line 456
    .line 457
    .line 458
    goto :goto_1cf

    .line 459
    :cond_1ca
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 460
    .line 461
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    .line 463
    .line 464
    :cond_1cf
    :goto_1cf
    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 465
    .line 466
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    .line 471
    .line 472
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eq v1, v2, :cond_1f5

    .line 477
    .line 478
    iget-object v1, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 479
    .line 480
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_1f5

    .line 489
    .line 490
    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 491
    .line 492
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    iput v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    .line 501
    .line 502
    :cond_1f5
    return-void
.end method

.method public onNoCellFound(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onNoCellFound(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onOpenCloseComplete(Z)V
    .registers 3

    .line 1
    const-string/jumbo p0, "onOpenCloseComplete open: "

    .line 4
    const-string v0, "OplusHotseat"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onOpenCloseStart(Z)V
    .registers 3

    .line 1
    const-string/jumbo p0, "onOpenCloseStart open: "

    .line 4
    const-string v0, "OplusHotseat"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onPause(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRemoveFolderCreateIcon(Lcom/android/launcher3/folder/FlexibleFolderIcon;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onRemoveFolderCreateIcon(Lcom/android/launcher3/folder/FlexibleFolderIcon;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoveIconCreateFolder(Landroid/view/View;Lcom/android/launcher3/folder/FlexibleFolderIcon;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onRemoveIconCreateFolder(Landroid/view/View;Lcom/android/launcher3/folder/FlexibleFolderIcon;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoveItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onRemoveItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onResume(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReturnToHotseatToPreventShuffling(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->mHotseatSpringCenterLayoutViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onReturnToHotseatToPreventShuffling(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onStart(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onStop(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSubscribeItemChange(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onSubscribeItemChange(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSubscribeItemStateChange(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onSubscribeItemStateChange,settingsKey:"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v0, ",enable:"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    const-string v0, "Taskbar"

    .line 26
    const-string v1, "OplusHotseat"

    .line 28
    invoke-static {v0, v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p1, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemStateChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpdateItemInfoId(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->onUpdateItemInfoId(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->onVisibilityAggregated(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 8
    :cond_7
    const-string v0, "OplusHotseat"

    .line 10
    const-string/jumbo v1, "onWallpaperBrightnessChanged"

    .line 13
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 22
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 28
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->onWallpaperBrightnessChanged()V

    .line 31
    :cond_1e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mBlurProp:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;

    if-eqz v0, :cond_37

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 49
    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->getBackgroundRadius(F)F

    move-result v0

    .line 53
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->updateBlurParams(F)Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_37
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_44
    if-ge v1, v0, :cond_74

    .line 71
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 73
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 83
    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v4, :cond_57

    goto :goto_71

    :cond_57
    move-object v4, v3

    .line 89
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 91
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 97
    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_71

    .line 103
    :cond_66
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 109
    check-cast v2, Lcom/android/launcher3/hotseat/HotseatDividerView;

    .line 111
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/HotseatDividerView;->updateDividerBg()V

    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_74
    return-void
.end method

.method public performReorder(IIIIIILandroid/view/View;[I[II)[I
    .registers 17

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_a

    .line 8
    .line 9
    :cond_8
    move-object v1, p0

    .line 10
    goto :goto_15

    .line 11
    :cond_a
    move-object v0, p0

    .line 12
    move v1, p1

    .line 13
    move v2, p2

    .line 14
    move v3, p5

    .line 15
    move v4, p6

    .line 16
    move-object v5, p8

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->findNearestArea(IIII[I)[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :goto_15
    iget-object v2, v1, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move v3, p1

    .line 29
    invoke-virtual {v2, v1, p1, v0}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->performReorder(Lcom/android/launcher3/DropTarget$DragObject;II)[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public rebindHotseatForFoldStateChange()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/OplusHotseat;->resetDragAnimIfNecessary()V

    .line 4
    const-string v0, "OplusHotseat"

    .line 6
    const-string/jumbo v1, "rebindHotseatForFoldStateChange"

    .line 9
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 24
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->needAddOrRemoveDivider(Lcom/android/launcher3/model/BgDataModel;)V

    .line 27
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 29
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateNumShownHotseatIconsIfNecessary(Lcom/android/launcher3/DeviceProfile;)V

    .line 36
    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyItemCellXIfNecessary(Lcom/android/launcher3/model/BgDataModel;)V

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 41
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    const/4 v1, 0x0

    .line 44
    new-array v1, v1, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherModel;->startBindHotseatForFoldStateChange([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->onHotSeatFinishRebind()V

    return-void
.end method

.method public removeChildrenByItems(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusHotseat;->removeView(Landroid/view/View;)V

    .line 29
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v3, "removeChildrenByItems: tag = "

    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "OplusHotseat"

    .line 56
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3d
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->removeView(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public replaceExpandItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->replaceExpandItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requireAnimate()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

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
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 12
    .line 13
    sget-object v0, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

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

.method public resetLayout(Z)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->resetLayout()V

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->revertFixedWidthAndHeight()V

    .line 21
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "Hotseat - resetLayout, mFixedCellWidth = "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " , mFixedCellHeight = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " , mCellWidth = "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, " , mCellHeight = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " , mCountX = "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " , mCountY = "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, " , padding = ("

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " , "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, " )  , curLauncherMode , "

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "Hotseat"

    .line 155
    const-string v2, "OplusHotseat"

    .line 157
    invoke-static {v1, v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_9f
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    .line 163
    iput-boolean p1, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 167
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/ConfigParam;->getInv()Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->updateNumShownHotseatIcons()V

    .line 182
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    const-string v2, " mHasVerticalHotseat = "

    .line 192
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    iget-boolean v2, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, " , numShownHotseatIcons = "

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 207
    const-string/jumbo v3, "resetLayout"

    .line 210
    invoke-static {v1, v2, v3}, Lcom/android/common/config/l;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_d4
    const/4 v1, 0x1

    if-eqz p1, :cond_dd

    .line 216
    iget p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 218
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    goto :goto_e2

    .line 222
    :cond_dd
    iget p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 224
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    :goto_e2
    return-void
.end method

.method public revertFixedWidthAndHeight()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 5
    .line 6
    return-void
.end method

.method public runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getHotseatAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setAnimAlpha(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimScaleX(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setScaleX(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimScaleY(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setScaleY(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimTransX(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setTranslationX(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimTransY(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setTranslationY(F)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setAnimVisibility(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getBackgroundAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    if-eqz p1, :cond_17

    .line 20
    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setBackgroundAlpha(F)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setCellDimensionsAndNotFix(II)V
    .registers 9

    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 12
    .line 13
    move v1, p1

    .line 14
    move v2, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setDockerBackground()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->isSupportNewBlur(Landroid/content/Context;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_23

    .line 24
    .line 25
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_23

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/OplusHotseat;->createBlurDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_32

    .line 36
    :cond_23
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    invoke-static {v1}, Lcom/android/launcher3/OplusHotseat;->getSmoothBackgroundRadius(F)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getHotseatNormalBgDrawable(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_32
    if-eqz v0, :cond_39

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    iget-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    .line 59
    .line 60
    if-eqz v0, :cond_40

    .line 61
    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v0, 0x0

    .line 66
    :goto_41
    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusHotseat;->setBackgroundAlpha(F)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    return-void
.end method

.method public setNeedRefreshAfterAttached()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mNeedRefreshAfterAttached:Z

    .line 3
    .line 4
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/launcher3/v4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/launcher3/v4;-><init>(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->syncBottomSearchIfNotInClearBadgeRipple(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/launcher3/w4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/launcher3/w4;-><init>(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->syncBottomSearchIfNotInClearBadgeRipple(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTranslationX(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/launcher3/c5;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/launcher3/c5;-><init>(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->syncBottomSearchIfNotInClearBadgeRipple(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getHotseatTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->oplusFeatureSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 11
    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_13
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/16 v0, 0x8

    if-ne p1, v0, :cond_36

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 37
    const-string/jumbo v1, "setVisibility:"

    .line 40
    const-string v2, "-->"

    .line 42
    const-string v3, "; caller = "

    .line 44
    invoke-static {v0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 50
    const-string v2, "OplusHotseat"

    .line 52
    invoke-static {v0, v1, v2}, Lcom/android/common/util/x0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    :cond_36
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisibleForTaskbarIconAlign(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    .line 3
    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 10
    :cond_9
    iget-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    if-ne p1, v0, :cond_e

    return-void

    .line 15
    :cond_e
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 21
    const-string/jumbo v0, "setVisibleForTaskbarIconAlign, visible = "

    .line 24
    const-string v1, ", lastVisible = "

    .line 26
    invoke-static {v0, v1, p1}, Ls2/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ",caller:"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 41
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "OplusHotseat"

    .line 54
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_38
    iput-boolean p1, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    if-eqz p1, :cond_3f

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    .line 65
    :goto_40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Hotseat;->setIconsContainerAlpha(F)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->mHotseatParam:Lcom/android/launcher/layoutparam/HotseatParam;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/HotseatParam;->getMarginBottom()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 23
    .line 24
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 27
    .line 28
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 31
    .line 32
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_5e

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Hotseat - setWindowInsets, lp.bottomMargin  = "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " , windowInsets = "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, ",lp.height:"

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " , curLauncherMode , "

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v1, "Hotseat"

    .line 89
    .line 90
    const-string v2, "OplusHotseat"

    .line 91
    .line 92
    invoke-static {v1, v2, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public startAnimationForDeletePanel(ZZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2
    .line 3
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_32

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 12
    .line 13
    sget-object v1, Lcom/android/launcher3/LauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 20
    .line 21
    goto :goto_32

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    .line 23
    .line 24
    if-eqz v0, :cond_24

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/launcher/uninstall/HotseatAnimation;->isAnimating()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_24

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/launcher/uninstall/HotseatAnimation;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_24
    new-instance v0, Lcom/android/launcher/uninstall/HotseatAnimation;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 40
    .line 41
    check-cast v1, Lcom/android/launcher/Launcher;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/android/launcher/uninstall/HotseatAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/uninstall/HotseatAnimation;->start(ZZ)V

    .line 49
    .line 50
    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move v6, p6

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", alpha = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public updateCellLayoutItemColor()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/launcher/CellLayoutHelper;->updateCellLayoutItemColor(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/CellLayout;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateCountXForItemAdded()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "updateCountXForItemAdded,mCountX:"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 17
    const-string v1, "Hotseat_expand"

    .line 19
    const-string v2, "OplusHotseat"

    .line 21
    invoke-static {v0, p0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/g;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDockerBgIfNecessary()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_12

    .line 12
    .line 13
    if-nez v0, :cond_1a

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    .line 16
    .line 17
    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    if-eqz v0, :cond_1a

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method public updateGridSize(II)V
    .registers 10

    .line 3
    const-string/jumbo v0, "updateGridSize,x:"

    const-string v1, ",y:"

    .line 4
    invoke-static {p1, p2, v0, v1}, Lt2/c;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseat"

    invoke-static {v1, v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 7
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 8
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 9
    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateGridSize([Landroid/view/View;I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->updateGridSize([Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public updateGridSizeWithoutRequestLayout(IILcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 11

    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 3
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "mCountX:["

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ","

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 31
    const-string v3, "] --> ["

    .line 33
    invoke-static {v2, p1, v3, v1, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "]\nmOccupied: "

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string p1, "\nmTmpOccupied: "

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    const-string p2, "OplusHotseat"

    .line 65
    invoke-static {p2, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_43
    iput-object p3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 70
    iput-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 72
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 74
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 79
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 81
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 83
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 85
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 87
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateHotseatLauoutIfNeeded()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 17
    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mViewModel:Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;

    .line 19
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/HotseatSpringCenterLayoutViewModel;->updateItemsForFoldScreen()V

    .line 22
    :cond_15
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7a

    if-eqz v0, :cond_7a

    if-eqz v1, :cond_7a

    .line 32
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/ConfigParam;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_7a

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_35

    return-void

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_7a

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 61
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 65
    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_77

    .line 69
    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 75
    const-string/jumbo v2, "updateHotseatLauoutIfNeeded childWidthSize: "

    .line 78
    const-string v3, " ,iconSizePx: "

    .line 80
    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/g0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->icon()Lcom/android/launcher/layoutparam/IconParam;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lcom/android/launcher/layoutparam/IconParam;->getIconSizePx()I

    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "OplusHotseat"

    .line 101
    invoke-static {v3, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_7a

    .line 106
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->icon()Lcom/android/launcher/layoutparam/IconParam;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/IconParam;->getIconSizePx()I

    move-result v0

    if-ge v1, v0, :cond_7a

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_7a

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_7a
    :goto_7a
    return-void
.end method

.method public updateItemCellXState(Landroid/view/View;I)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->updateItemCellXState(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public updateSizeAfterDeleteView(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 2
    .line 3
    if-eqz v0, :cond_30

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    .line 6
    .line 7
    if-nez v0, :cond_11

    .line 8
    .line 9
    new-instance v0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;-><init>(Lcom/android/launcher3/OplusHotseat;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iput-boolean p1, v0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->mNeedUpdateDb:Z

    .line 19
    .line 20
    :goto_13
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2b

    .line 25
    .line 26
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2b

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    .line 33
    .line 34
    sget-object p1, Lcom/oplus/basecommon/thread/Executors;->MAIN_EXECUTOR:Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/oplus/basecommon/thread/LooperExecutor;->getHandler()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->start(Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/HotseatCenterLayoutStrategy;->checkSize(Z)V

    .line 47
    .line 48
    .line 49
    :cond_30
    :goto_30
    return-void
.end method
