.class public final Lcom/oplus/quickstep/views/OplusTaskHeaderView;
.super Landroid/widget/FrameLayout;
.source "OplusTaskHeaderView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00bc\u00012\u00020\u0001:\u0002\u00bc\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ7\u0010#\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u000b\u00a2\u0006\u0004\u0008%\u0010\rJ7\u0010,\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008,\u0010-J#\u0010\u0012\u001a\u00020\u000b2\u0008\u0010/\u001a\u0004\u0018\u00010.2\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0012\u00101J\u0017\u00102\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u00082\u00103J!\u00102\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u00082\u00105J%\u00108\u001a\u00020\u000b2\u0006\u00106\u001a\u00020&2\u0006\u00107\u001a\u00020&2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u00088\u00109J\u0015\u0010;\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019\u00a2\u0006\u0004\u0008;\u0010\u001cJ\r\u0010<\u001a\u00020\u000b\u00a2\u0006\u0004\u0008<\u0010\rJ\r\u0010=\u001a\u00020\u0006\u00a2\u0006\u0004\u0008=\u0010>J\u001d\u0010?\u001a\u00020\u000b2\u0006\u00106\u001a\u00020&2\u0006\u00107\u001a\u00020&\u00a2\u0006\u0004\u0008?\u0010@J\u0019\u0010C\u001a\u00020\u000b2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0014\u00a2\u0006\u0004\u0008C\u0010DJ\u0015\u0010E\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019\u00a2\u0006\u0004\u0008E\u0010\u001cJ\u0015\u0010F\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019\u00a2\u0006\u0004\u0008F\u0010\u001cJ\r\u0010G\u001a\u00020\u0019\u00a2\u0006\u0004\u0008G\u0010HJ\u0015\u0010I\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019\u00a2\u0006\u0004\u0008I\u0010\u001cJ\u0015\u0010J\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019\u00a2\u0006\u0004\u0008J\u0010\u001cJ\r\u0010K\u001a\u00020\u0019\u00a2\u0006\u0004\u0008K\u0010HJ\u000f\u0010L\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008L\u0010\rJ\r\u0010M\u001a\u00020&\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ;\u0010X\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010R\u001a\u00020O2\u0006\u0010S\u001a\u00020&2\u0006\u0010U\u001a\u00020T2\n\u0010W\u001a\u00060VR\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008X\u0010YJ3\u0010Z\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010R\u001a\u00020O2\u0006\u0010U\u001a\u00020T2\n\u0010W\u001a\u00060VR\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008Z\u0010[JE\u0010]\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\\\u001a\u00020O2\u0006\u0010S\u001a\u00020&2\u0006\u0010U\u001a\u00020T2\n\u0010W\u001a\u00060VR\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\'\u0010_\u001a\u00020&2\u0006\u0010U\u001a\u00020T2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008_\u0010`J\u0017\u0010b\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008b\u0010cJ!\u0010f\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u001d2\u0008\u0010e\u001a\u0004\u0018\u00010dH\u0002\u00a2\u0006\u0004\u0008f\u0010gJ\u0017\u0010f\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008f\u0010cJ\'\u0010l\u001a\u00020k2\u0006\u0010h\u001a\u00020\u00192\u0006\u0010i\u001a\u00020\u00192\u0006\u0010j\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008l\u0010mJ\'\u0010n\u001a\u00020k2\u0006\u0010h\u001a\u00020\u00192\u0006\u0010i\u001a\u00020\u00192\u0006\u0010j\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008n\u0010mJ/\u0010o\u001a\u00020k2\u0006\u00106\u001a\u00020&2\u0006\u0010h\u001a\u00020\u00192\u0006\u0010i\u001a\u00020\u00192\u0006\u0010j\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010r\u001a\u00020\u000b2\u0006\u0010q\u001a\u00020OH\u0002\u00a2\u0006\u0004\u0008r\u0010sJ\u0017\u0010t\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008t\u0010\u001cJ\u0017\u0010u\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008u\u0010\u001cR\"\u0010w\u001a\u00020v8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R&\u0010~\u001a\u00020}8\u0006@\u0006X\u0086.\u00a2\u0006\u0016\n\u0004\u0008~\u0010\u007f\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R*\u0010\u0085\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R*\u0010\u008b\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u008b\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u0088\u0001\"\u0006\u0008\u008d\u0001\u0010\u008a\u0001R(\u0010\u008e\u0001\u001a\u00020}8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008\u008e\u0001\u0010\u007f\u001a\u0006\u0008\u008f\u0001\u0010\u0081\u0001\"\u0006\u0008\u0090\u0001\u0010\u0083\u0001R(\u0010\u0091\u0001\u001a\u00020}8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008\u0091\u0001\u0010\u007f\u001a\u0006\u0008\u0092\u0001\u0010\u0081\u0001\"\u0006\u0008\u0093\u0001\u0010\u0083\u0001R(\u0010\u0094\u0001\u001a\u00020}8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008\u0094\u0001\u0010\u007f\u001a\u0006\u0008\u0095\u0001\u0010\u0081\u0001\"\u0006\u0008\u0096\u0001\u0010\u0083\u0001R(\u0010\u0097\u0001\u001a\u00020}8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008\u0097\u0001\u0010\u007f\u001a\u0006\u0008\u0098\u0001\u0010\u0081\u0001\"\u0006\u0008\u0099\u0001\u0010\u0083\u0001R(\u0010\u009a\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001\"\u0005\u0008\u009e\u0001\u0010cR,\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\"\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0019\u0010\u00a6\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u0019\u0010\u00a8\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a7\u0001R\u0019\u0010\u00a9\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00a7\u0001R\u001d\u0010\u00ac\u0001\u001a\u00080\u00aa\u0001j\u0003`\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u0019\u0010\u00ae\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0019\u0010\u00b0\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00af\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u0019\u0010\u00b3\u0001\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b2\u0001R\u001b\u0010\u00b4\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u001b\u0010\u00b6\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u00b5\u0001R\u001b\u0010\u00b7\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b5\u0001R\u001c\u0010\u00b9\u0001\u001a\u0005\u0018\u00010\u00b8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u001c\u0010\u00bb\u0001\u001a\u0005\u0018\u00010\u00b8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00ba\u0001\u00a8\u0006\u00bd\u0001"
    }
    d2 = {
        "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttrs",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Lm9/n;",
        "onFinishInflate",
        "()V",
        "Lcom/android/systemui/shared/recents/model/Task;",
        "task",
        "Lcom/android/quickstep/views/TaskView;",
        "taskView",
        "setIcon",
        "(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V",
        "setShortCutIcon",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "",
        "p0",
        "setRotation",
        "(F)V",
        "Landroid/view/View;",
        "child",
        "parentWidthMeasureSpec",
        "widthUsed",
        "parentHeightMeasureSpec",
        "heightUsed",
        "measureChildWithMargins",
        "(Landroid/view/View;IIII)V",
        "fixEllipsizeForTV",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "Landroid/graphics/drawable/Drawable;",
        "icon",
        "background",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V",
        "setTitle",
        "(Lcom/android/systemui/shared/recents/model/Task;)V",
        "secondaryTask",
        "(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V",
        "expectedVisible",
        "isHasAnimation",
        "updateLockIconVisibility",
        "(ZZLcom/android/quickstep/views/TaskView;)V",
        "alpha",
        "setShortCutAlpha",
        "reset",
        "getMenuBtnImageBottom",
        "()I",
        "updateHintPointVisibility",
        "(ZZ)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "setTitleAlpha",
        "setTitleAlphaWithSpring",
        "getTitleAlpha",
        "()F",
        "setLockIconAlpha",
        "setLockIconAlphaWithSpring",
        "getLockIconAlpha",
        "onDetachedFromWindow",
        "isLockIconShowOrHideAnimRunning",
        "()Z",
        "",
        "toString",
        "()Ljava/lang/String;",
        "pkgName",
        "inMiniWindow",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        "activity",
        "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
        "taskContainer",
        "showCompatibleModeIcon",
        "(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V",
        "showFloatWindowIcon",
        "(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V",
        "basePkgName",
        "showSplitWindowIcon",
        "(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V",
        "isCanSplitWindow",
        "(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z",
        "view",
        "hideWindowIcon",
        "(Landroid/view/View;)V",
        "Landroid/view/View$OnClickListener;",
        "onClickListener",
        "showWindowIcon",
        "(Landroid/view/View;Landroid/view/View$OnClickListener;)V",
        "initScaleX",
        "initScaleY",
        "initAlpha",
        "Landroid/animation/Animator;",
        "createLockIconShowAnim",
        "(FFF)Landroid/animation/Animator;",
        "createLockIconHideAnim",
        "createLockIconShowHideAnim",
        "(ZFFF)Landroid/animation/Animator;",
        "newTitle",
        "setTitleWithLayoutCheck",
        "(Ljava/lang/String;)V",
        "setTitleAlphaInternal",
        "setLockIconAlphaInternal",
        "Landroid/widget/TextView;",
        "titleTv",
        "Landroid/widget/TextView;",
        "getTitleTv",
        "()Landroid/widget/TextView;",
        "setTitleTv",
        "(Landroid/widget/TextView;)V",
        "Landroid/widget/ImageButton;",
        "menuBtn",
        "Landroid/widget/ImageButton;",
        "getMenuBtn",
        "()Landroid/widget/ImageButton;",
        "setMenuBtn",
        "(Landroid/widget/ImageButton;)V",
        "Lcom/android/quickstep/views/OplusIconView;",
        "taskIcon",
        "Lcom/android/quickstep/views/OplusIconView;",
        "getTaskIcon",
        "()Lcom/android/quickstep/views/OplusIconView;",
        "setTaskIcon",
        "(Lcom/android/quickstep/views/OplusIconView;)V",
        "lockIcon",
        "getLockIcon",
        "setLockIcon",
        "splitWindowBtn",
        "getSplitWindowBtn",
        "setSplitWindowBtn",
        "miniWindowBtn",
        "getMiniWindowBtn",
        "setMiniWindowBtn",
        "scaleToBigBtn",
        "getScaleToBigBtn",
        "setScaleToBigBtn",
        "scaleToSmallBtn",
        "getScaleToSmallBtn",
        "setScaleToSmallBtn",
        "hintPoint",
        "Landroid/view/View;",
        "getHintPoint",
        "()Landroid/view/View;",
        "setHintPoint",
        "Lcom/coui/appcompat/tooltips/COUIToolTips;",
        "mToolTips",
        "Lcom/coui/appcompat/tooltips/COUIToolTips;",
        "getMToolTips",
        "()Lcom/coui/appcompat/tooltips/COUIToolTips;",
        "setMToolTips",
        "(Lcom/coui/appcompat/tooltips/COUIToolTips;)V",
        "totalWidthWithoutText",
        "I",
        "lockIconMargin",
        "textMargin",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "tmpBuilder",
        "Ljava/lang/StringBuilder;",
        "mTextSizeSp",
        "F",
        "mLastFontScale",
        "taskIsNull",
        "Z",
        "titleTvFirstMeasured",
        "hintPointHideAnim",
        "Landroid/animation/Animator;",
        "lockIconShowAnim",
        "lockIconHideAnim",
        "Lcom/android/quickstep/util/animation/SpringAnimation;",
        "titleAlphaSpringAnim",
        "Lcom/android/quickstep/util/animation/SpringAnimation;",
        "lockIconAlphaSpringAnim",
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
.field public static final Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

.field public static final HEADER_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field private static final HINT_POINT_HIDE_ANIM_DURATION:J = 0x14dL

.field private static final INIT_END_SCALE_X_Y_VALUE:F = 0.8f

.field private static final LOCK_ICON_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK_ICON_ALPHA_AMPLIFICATION_FACTOR:F = 1000.0f

.field private static final LOCK_ICON_ALPHA_SPRING_STIFFNESS:F = 1000.0f

.field private static final LOCK_ICON_SHOW_HIDE_ANIM_DURATION:J = 0x14dL

.field private static final MAX_ELLIPSIZE_TIMES:I = 0x3

.field public static final MINI_WINDOW_DEFAULT_PKG:Ljava/lang/String; = "Default"

.field private static final SPRING_LOCK_ICON_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPRING_TITLE_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusTaskHeaderView"

.field private static final TITLE_ALPHA_AMPLIFICATION_FACTOR:F = 1000.0f

.field private static final TITLE_ALPHA_SPRING_STIFFNESS:F = 1000.0f

.field public static final WINDOWING_MODE_BRACKET:I = 0x73

.field private static allowResizeableInSetting:Z

.field private static canMiniMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static canSplitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static compatibleModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static miniWindowName:Ljava/lang/String;

.field private static miniWindowTaskId:I

.field private static parallelVersionMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hintPoint:Landroid/view/View;

.field private hintPointHideAnim:Landroid/animation/Animator;

.field public lockIcon:Lcom/android/quickstep/views/OplusIconView;

.field private lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private lockIconHideAnim:Landroid/animation/Animator;

.field private lockIconMargin:I

.field private lockIconShowAnim:Landroid/animation/Animator;

.field private mLastFontScale:F

.field private mTextSizeSp:F

.field private mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field public menuBtn:Landroid/widget/ImageButton;

.field public miniWindowBtn:Landroid/widget/ImageButton;

.field public scaleToBigBtn:Landroid/widget/ImageButton;

.field public scaleToSmallBtn:Landroid/widget/ImageButton;

.field public splitWindowBtn:Landroid/widget/ImageButton;

.field public taskIcon:Lcom/android/quickstep/views/OplusIconView;

.field private taskIsNull:Z

.field private textMargin:I

.field private titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field public titleTv:Landroid/widget/TextView;

.field private titleTvFirstMeasured:Z

.field private final tmpBuilder:Ljava/lang/StringBuilder;

.field private totalWidthWithoutText:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    sput v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    .line 11
    .line 12
    const-string v0, "Default"

    .line 13
    .line 14
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    const/16 v1, 0x80

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 48
    .line 49
    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$HEADER_ALPHA$1;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$HEADER_ALPHA$1;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->HEADER_ALPHA:Landroid/util/FloatProperty;

    .line 55
    .line 56
    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$SPRING_TITLE_ALPHA$1;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$SPRING_TITLE_ALPHA$1;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->SPRING_TITLE_ALPHA:Landroid/util/FloatProperty;

    .line 62
    .line 63
    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$SPRING_LOCK_ICON_ALPHA$1;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$SPRING_LOCK_ICON_ALPHA$1;-><init>()V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->SPRING_LOCK_ICON_ALPHA:Landroid/util/FloatProperty;

    .line 69
    .line 70
    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$LOCK_ICON_ALPHA$1;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$LOCK_ICON_ALPHA$1;-><init>()V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->LOCK_ICON_ALPHA:Landroid/util/Property;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mTextSizeSp:F

    .line 8
    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIsNull:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/launcher3/R$dimen;->generic_dp_value_4:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/launcher3/R$dimen;->color_task_header_title_view_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    .line 4
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleAlphaWithSpring$lambda$22(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAllowResizeableInSetting$cp()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getCanMiniMap$cp()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCanSplitMap$cp()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCompatibleModeMap$cp()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMiniWindowName$cp()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMiniWindowTaskId$cp()I
    .registers 1

    .line 1
    sget v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getParallelVersionMode$cp()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setAllowResizeableInSetting$cp(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setCanMiniMap$cp(Ljava/util/HashMap;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setCanSplitMap$cp(Ljava/util/HashMap;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setCompatibleModeMap$cp(Ljava/util/HashMap;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setHintPointHideAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLockIconAlphaInternal(Lcom/oplus/quickstep/views/OplusTaskHeaderView;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIconAlphaInternal(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setLockIconHideAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLockIconShowAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMiniWindowName$cp(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMiniWindowTaskId$cp(I)V
    .registers 1

    .line 1
    sput p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setParallelVersionMode$cp(Ljava/util/HashMap;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setTitleAlphaInternal(Lcom/oplus/quickstep/views/OplusTaskHeaderView;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleAlphaInternal(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIconAlphaWithSpring$lambda$23(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createLockIconHideAnim(FFF)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowHideAnim(ZFFF)Landroid/animation/Animator;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconHideAnim$lambda$16$$inlined$addListener$default$1;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconHideAnim$lambda$16$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconHideAnim$lambda$16$$inlined$addListener$default$2;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconHideAnim$lambda$16$$inlined$addListener$default$2;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method private final createLockIconShowAnim(FFF)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowHideAnim(ZFFF)Landroid/animation/Animator;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconShowAnim$lambda$13$$inlined$addListener$default$1;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconShowAnim$lambda$13$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconShowAnim$lambda$13$$inlined$addListener$default$2;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconShowAnim$lambda$13$$inlined$addListener$default$2;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method private final createLockIconShowHideAnim(ZFFF)Landroid/animation/Animator;
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v4, 0x14d

    .line 10
    .line 11
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    .line 14
    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    .line 15
    .line 16
    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v5, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 27
    .line 28
    const v6, 0x3f4ccccd    # 0.8f

    .line 29
    .line 30
    .line 31
    const/high16 v7, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-eqz p1, :cond_24

    .line 34
    .line 35
    move v8, v7

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v8, v6

    .line 38
    :goto_25
    new-array v9, v2, [F

    .line 39
    .line 40
    aput p2, v9, v1

    .line 41
    .line 42
    aput v8, v9, v0

    .line 43
    .line 44
    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sget-object v5, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 53
    .line 54
    if-eqz p1, :cond_38

    .line 55
    .line 56
    move v6, v7

    .line 57
    :cond_38
    new-array v8, v2, [F

    .line 58
    .line 59
    aput p3, v8, v1

    .line 60
    .line 61
    aput v6, v8, v0

    .line 62
    .line 63
    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    sget-object v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->LOCK_ICON_ALPHA:Landroid/util/Property;

    .line 68
    .line 69
    if-eqz p1, :cond_47

    .line 70
    .line 71
    goto :goto_48

    .line 72
    :cond_47
    const/4 v7, 0x0

    .line 73
    :goto_48
    new-array p1, v2, [F

    .line 74
    .line 75
    aput p4, p1, v1

    .line 76
    .line 77
    aput v7, p1, v0

    .line 78
    .line 79
    invoke-static {p0, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const/4 p1, 0x3

    .line 84
    new-array p1, p1, [Landroid/animation/Animator;

    .line 85
    .line 86
    aput-object p2, p1, v1

    .line 87
    .line 88
    aput-object p3, p1, v0

    .line 89
    .line 90
    aput-object p0, p1, v2

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 93
    .line 94
    .line 95
    const-wide/16 p0, 0x0

    .line 96
    .line 97
    invoke-virtual {v3, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 98
    .line 99
    .line 100
    return-object v3
.end method

.method private final hideWindowIcon(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_15

    .line 16
    .line 17
    const/4 p0, 0x4

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    const/16 p0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final isCanSplitWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 6

    .line 1
    iget-boolean p0, p3, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    .line 2
    .line 3
    if-eqz p0, :cond_14

    .line 4
    .line 5
    sget-object p0, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->Companion:Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

    .line 6
    .line 7
    iget-object v0, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 8
    .line 9
    const-string/jumbo v1, "key"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;->isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2e

    .line 20
    .line 21
    :cond_14
    invoke-static {p3}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 p3, 0x0

    .line 26
    if-eqz p0, :cond_2f

    .line 27
    .line 28
    sget-object p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    aget-object p2, p2, p3

    .line 35
    .line 36
    const-string v0, "get(...)"

    .line 37
    .line 38
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;->support(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2f

    .line 46
    .line 47
    :cond_2e
    const/4 p3, 0x1

    .line 48
    :cond_2f
    return p3
.end method

.method public static synthetic setIcon$default(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILjava/lang/Object;)V
    .registers 5

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_5

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final setLockIconAlphaInternal(F)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final setLockIconAlphaWithSpring$lambda$23(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    return-void
.end method

.method private final setTitleAlphaInternal(F)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final setTitleAlphaWithSpring$lambda$22(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 10
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private final setTitleWithLayoutCheck(Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 7
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_52

    .line 25
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_36

    .line 35
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_52

    .line 45
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_52

    .line 55
    :cond_36
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_50

    goto :goto_52

    :cond_50
    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    :goto_52
    const/4 v0, 0x0

    .line 84
    :goto_53
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 97
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 105
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 113
    const-string/jumbo v3, "setTitleWithLayoutCheck(), newTitle:"

    .line 116
    const-string v4, ",last width:"

    .line 118
    const-string v5, " titleTv.text:"

    .line 120
    invoke-static {v3, p1, v1, v4, v5}, Landroidx/transition/s;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, " needRelayout:"

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string v1, "OplusTaskHeaderView"

    .line 141
    invoke-static {v1, p1}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    if-eqz v0, :cond_98

    .line 146
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_98
    return-void
.end method

.method private final showCompatibleModeIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 7
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 15
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    .line 17
    invoke-static {p2, p1}, Lkotlin/collections/k0;->f(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    if-nez p3, :cond_95

    if-nez p1, :cond_95

    .line 44
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_95

    .line 54
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 56
    invoke-static {p2, p1}, Lkotlin/collections/k0;->f(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v0, "taskPackageName: "

    .line 65
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "  "

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    const-string p3, "OplusTaskHeaderView"

    .line 85
    invoke-static {p3, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;

    .line 90
    sget-object p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 92
    invoke-static {p2, p3}, Lkotlin/collections/k0;->f(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    .line 96
    check-cast p2, Ljava/lang/Number;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 102
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;->showScaleChangeBtn(I)Ljava/lang/Boolean;

    move-result-object p1

    .line 106
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 114
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 118
    sget-object p2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_SMALL:Lcom/android/quickstep/TaskShortcutFactory;

    .line 120
    invoke-interface {p2, p4, p5}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p2

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_95

    .line 128
    :cond_7f
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 130
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 136
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 140
    sget-object p2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_BIG:Lcom/android/quickstep/TaskShortcutFactory;

    .line 142
    invoke-interface {p2, p4, p5}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p2

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    nop

    :cond_95
    :goto_95
    return-void
.end method

.method private final showFloatWindowIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_5d

    .line 6
    .line 7
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 12
    .line 13
    goto :goto_5d

    .line 14
    :cond_d
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_38

    .line 21
    .line 22
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-static {p2, p1}, Lkotlin/collections/k0;->f(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_30

    .line 35
    .line 36
    new-instance p1, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;

    .line 37
    .line 38
    invoke-direct {p1, p3, p4}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    goto :goto_5d

    .line 49
    :cond_30
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    goto :goto_5d

    .line 57
    :cond_38
    sget-object p1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    .line 58
    .line 59
    invoke-interface {p1, p3, p4}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_4f

    .line 64
    .line 65
    sget-object p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 66
    .line 67
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_5d

    .line 80
    :cond_4f
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 81
    .line 82
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method

.method private final showSplitWindowIcon(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 8

    .line 1
    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b1

    .line 4
    .line 5
    if-eqz p2, :cond_10

    .line 6
    .line 7
    iget-boolean v0, p2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    .line 8
    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    invoke-static {p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_b1

    .line 16
    .line 17
    :cond_10
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    goto/16 :goto_b1

    .line 24
    .line 25
    :cond_18
    if-eqz p4, :cond_27

    .line 26
    .line 27
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_27

    .line 34
    .line 35
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_27
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_68

    .line 47
    .line 48
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-static {p3, p1}, Lkotlin/collections/k0;->f(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_60

    .line 61
    .line 62
    if-nez p4, :cond_60

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_53

    .line 73
    .line 74
    new-instance p2, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;

    .line 75
    .line 76
    invoke-direct {p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p5, p6}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    goto :goto_5c

    .line 84
    :cond_53
    new-instance p2, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;

    .line 85
    .line 86
    invoke-direct {p2}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p5, p6}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :goto_5c
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    goto :goto_a2

    .line 97
    :cond_60
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    goto :goto_a2

    .line 105
    :cond_68
    sget-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->MULTI_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    .line 106
    .line 107
    invoke-interface {v0, p5, p6}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    .line 108
    .line 109
    .line 110
    move-result-object p6

    .line 111
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p5, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->isCanSplitWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7b

    .line 119
    .line 120
    if-eqz p6, :cond_7b

    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    const/4 p1, 0x0

    .line 125
    :goto_7c
    iput-boolean p1, p2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->canSplitWindow:Z

    .line 126
    .line 127
    if-eqz p1, :cond_94

    .line 128
    .line 129
    if-nez p4, :cond_94

    .line 130
    .line 131
    if-nez p6, :cond_85

    .line 132
    .line 133
    return-void

    .line 134
    :cond_85
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 135
    .line 136
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1, p6}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    goto :goto_a2

    .line 149
    :cond_94
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 150
    .line 151
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :goto_a2
    if-eqz p4, :cond_b1

    .line 164
    .line 165
    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_b1

    .line 172
    .line 173
    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_b1
    :goto_b1
    return-void
.end method

.method private final showWindowIcon(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final fixEllipsizeForTV()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 19
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 35
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 44
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 54
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 56
    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 76
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5e

    const/4 v3, 0x3

    if-lt v1, v3, :cond_5c

    goto :goto_5e

    :cond_5c
    move-object v0, v2

    goto :goto_10

    :cond_5e
    :goto_5e
    if-eqz v0, :cond_75

    .line 97
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 111
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_75
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 124
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v3, "titleTv.text="

    .line 137
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    const-string p0, ", ellipsizePreStr="

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string p0, ", ellipsizeStr="

    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    const-string v0, ""

    .line 165
    const-string v1, "OplusTaskHeaderView"

    .line 167
    invoke-static {v0, v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    return-void
.end method

.method public final getHintPoint()Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPoint:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "hintPoint"

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getLockIcon()Lcom/android/quickstep/views/OplusIconView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "lockIcon"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLockIconAlpha()F
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getMToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMenuBtn()Landroid/widget/ImageButton;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->menuBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "menuBtn"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMenuBtnImageBottom()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    .line 26
    .line 27
    if-eqz v3, :cond_1f

    .line 28
    .line 29
    check-cast v2, Landroid/graphics/drawable/VectorDrawable;

    .line 30
    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v2, 0x0

    .line 33
    :goto_20
    if-eqz v2, :cond_27

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :goto_2f
    sub-int/2addr v1, p0

    .line 49
    div-int/lit8 v1, v1, 0x2

    .line 50
    .line 51
    sub-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public final getMiniWindowBtn()Landroid/widget/ImageButton;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "miniWindowBtn"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleToBigBtn()Landroid/widget/ImageButton;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToBigBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "scaleToBigBtn"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleToSmallBtn()Landroid/widget/ImageButton;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToSmallBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "scaleToSmallBtn"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSplitWindowBtn()Landroid/widget/ImageButton;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->splitWindowBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "splitWindowBtn"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTaskIcon()Lcom/android/quickstep/views/OplusIconView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIcon:Lcom/android/quickstep/views/OplusIconView;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "taskIcon"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitleAlpha()F
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getTitleTv()Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTv:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    return-object p0

    .line 6
    :cond_5
    const-string/jumbo p0, "titleTv"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isLockIconShowOrHideAnimRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1a

    .line 13
    .line 14
    :cond_d
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    .line 15
    .line 16
    if-eqz p0, :cond_1c

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1c

    .line 26
    .line 27
    :cond_1a
    const/4 p0, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p0, 0x0

    .line 30
    :goto_1d
    return p0
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 15

    .line 1
    const-string v0, "child"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v0, p1, Landroid/widget/TextView;

    .line 8
    const-string v1, "OplusTaskHeaderView"

    .line 10
    const-string v2, ""

    if-eqz v0, :cond_3b

    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 22
    iget v4, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    sub-int v4, v3, v4

    .line 26
    invoke-static {v4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 30
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 36
    iget v5, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    .line 38
    const-string/jumbo v6, "measureChildWithMargins: widthSize = "

    .line 41
    const-string v7, ", widthMode = "

    .line 43
    const-string v8, ", totalWidth = "

    .line 45
    invoke-static {v3, p2, v6, v7, v8}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 49
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {v2, v1, p2}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    move p2, v4

    .line 60
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 64
    const-string/jumbo v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 67
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    .line 74
    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 77
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    .line 80
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    .line 84
    iget p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 86
    invoke-static {p2, v4, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 90
    iget p3, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    .line 92
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr p3, v4

    .line 95
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v4

    .line 98
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v4

    add-int/2addr p3, p5

    .line 102
    iget p5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 104
    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 108
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    if-nez v0, :cond_93

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 117
    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    .line 120
    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    .line 123
    iget p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    add-int/2addr p2, p1

    .line 126
    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    .line 128
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result p2

    if-eqz p2, :cond_93

    .line 134
    iget p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    .line 136
    const-string/jumbo p2, "measureChildWithMargins: sw = "

    .line 139
    const-string p3, ", totalWidthWithoutText = "

    .line 141
    invoke-static {p1, p0, p2, p3}, Lt2/c;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {v2, v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTvFirstMeasured:Z

    .line 6
    .line 7
    if-eqz p1, :cond_2f

    .line 8
    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    .line 20
    .line 21
    cmpg-float v1, v1, v2

    .line 22
    .line 23
    if-nez v1, :cond_19

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_19
    if-nez v0, :cond_1c

    .line 27
    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    if-eqz p1, :cond_2f

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x2

    .line 41
    iget v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mTextSizeSp:F

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    .line 47
    .line 48
    :cond_2f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTvFirstMeasured:Z

    .line 6
    .line 7
    return-void
.end method

.method public onFinishInflate()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_app_icon:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10
    const-string/jumbo v1, "requireViewById(...)"

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast v0, Lcom/android/quickstep/views/OplusIconView;

    .line 18
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTaskIcon(Lcom/android/quickstep/views/OplusIconView;)V

    .line 21
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_title_view:I

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleTv(Landroid/widget/TextView;)V

    .line 35
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_lock_icon:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    check-cast v0, Lcom/android/quickstep/views/OplusIconView;

    .line 46
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIcon(Lcom/android/quickstep/views/OplusIconView;)V

    .line 49
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 59
    sget v3, Lcom/android/launcher3/R$drawable;->oplus_lock_icon:I

    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    .line 67
    :goto_42
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_split_button:I

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    check-cast v0, Landroid/widget/ImageButton;

    .line 81
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setSplitWindowBtn(Landroid/widget/ImageButton;)V

    .line 84
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_float_button:I

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    check-cast v0, Landroid/widget/ImageButton;

    .line 95
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMiniWindowBtn(Landroid/widget/ImageButton;)V

    .line 98
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_to_big_button:I

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    check-cast v0, Landroid/widget/ImageButton;

    .line 109
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setScaleToBigBtn(Landroid/widget/ImageButton;)V

    .line 112
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_to_small_button:I

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    check-cast v0, Landroid/widget/ImageButton;

    .line 123
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setScaleToSmallBtn(Landroid/widget/ImageButton;)V

    .line 126
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_menu_button:I

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    check-cast v0, Landroid/widget/ImageButton;

    .line 137
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMenuBtn(Landroid/widget/ImageButton;)V

    .line 140
    new-instance v0, Lcom/android/quickstep/OplusKeyButtonRipple;

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v3

    .line 150
    sget v4, Lcom/android/launcher3/R$dimen;->color_task_header_menu_icon_size:I

    .line 152
    invoke-direct {v0, v2, v3, v4}, Lcom/android/quickstep/OplusKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 155
    sget-object v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 157
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setType(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;)V

    .line 160
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 164
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    sget v0, Lcom/android/launcher3/R$id;->oplus_task_header_menu_hint_point:I

    .line 169
    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setHintPoint(Landroid/view/View;)V

    .line 179
    sget-object v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->INSTANCE:Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;

    .line 181
    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isSameSizeEnable()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 187
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->INSTANCE:Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;

    .line 189
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    const-string v3, "getResources(...)"

    .line 199
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget v3, Lcom/android/launcher3/R$dimen;->oplus_overview_grid_task_header_icon_size:I

    .line 204
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->setViewWidthAndHeight(Landroid/view/View;Landroid/content/res/Resources;II)V

    .line 207
    :cond_ce
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 215
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 217
    iput v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 227
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v1, 0x0

    .line 230
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_ed

    const/high16 v0, 0x3f800000    # 1.0f

    .line 238
    :cond_ed
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 246
    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxToSp(FF)F

    move-result v0

    .line 250
    iput v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mTextSizeSp:F

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 6
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v6

    .line 52
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v7

    .line 60
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v8

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v9

    .line 76
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v10

    .line 84
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v11

    .line 92
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v12

    .line 100
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v13

    .line 108
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v14

    .line 116
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v15

    .line 124
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v16

    .line 132
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v0

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v16

    move/from16 p1, v0

    .line 142
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v0

    move/from16 p2, v0

    .line 148
    const-string/jumbo v0, "onLayout: rtl = "

    move/from16 p3, v15

    .line 153
    const-string v15, "\ntv = "

    move/from16 p4, v13

    .line 157
    const-string v13, ", "

    .line 159
    invoke-static {v0, v15, v13, v2, v1}, Lcom/android/common/util/f3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {v3, v4, v13, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 166
    const-string v1, "\nlock = "

    .line 168
    invoke-static {v5, v6, v1, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 171
    invoke-static {v7, v8, v13, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 174
    const-string v1, "\ntaskIcon = "

    .line 176
    invoke-static {v9, v10, v1, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 179
    invoke-static {v11, v12, v13, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 182
    const-string v1, "\nmenu = "

    move/from16 v2, p4

    .line 186
    invoke-static {v2, v14, v1, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move/from16 v2, p1

    move/from16 v1, p3

    .line 193
    invoke-static {v1, v2, v13, v13, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move/from16 v1, p2

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, ""

    .line 207
    const-string v2, "OplusTaskHeaderView"

    .line 209
    invoke-static {v1, v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 228
    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_eb

    .line 233
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_ec

    :cond_eb
    move-object v1, v3

    :goto_ec
    if-eqz v1, :cond_f3

    .line 239
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_fb

    .line 244
    :cond_f3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_fb
    sub-int/2addr v0, v1

    .line 253
    div-int/lit8 v0, v0, 0x2

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 271
    instance-of v4, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_115

    .line 275
    check-cast v2, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_116

    :cond_115
    move-object v2, v3

    :goto_116
    if-eqz v2, :cond_11d

    .line 281
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_125

    .line 286
    :cond_11d
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_125
    sub-int/2addr v1, v2

    .line 295
    div-int/lit8 v1, v1, 0x2

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_28c

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v4, p0

    .line 313
    iget v5, v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    add-int/2addr v2, v5

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v5

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v6

    .line 324
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v7

    .line 332
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v8

    .line 341
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 345
    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 348
    iget v2, v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v5

    .line 354
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v6

    .line 367
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v7

    .line 375
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v8

    .line 384
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 388
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 395
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 403
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a1

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 413
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    .line 418
    :cond_1a1
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 422
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1b4

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 432
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    .line 437
    :cond_1b4
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 441
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v6

    .line 451
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 465
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v9

    .line 473
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v10

    .line 481
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 485
    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 496
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v9

    .line 504
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v10

    .line 512
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 516
    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 527
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v9

    .line 535
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 539
    invoke-virtual {v7, v5, v8, v2, v9}, Landroid/view/View;->layout(IIII)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 546
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_232

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 556
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v6, v2, v5

    goto :goto_233

    :cond_232
    move v2, v5

    .line 564
    :goto_233
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 572
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 580
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 584
    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/view/View;->layout(IIII)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_255

    move-object v3, v2

    :cond_255
    if-eqz v3, :cond_3d1

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 604
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 622
    sget v5, Lcom/android/launcher3/R$dimen;->task_header_menu_hint_point_offset:I

    .line 624
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v4

    .line 643
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 648
    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3d1

    :cond_28c
    move-object/from16 v4, p0

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    .line 659
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 663
    iget v5, v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    sub-int/2addr v2, v5

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v5

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v6

    .line 674
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v2, v6

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v7

    .line 684
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v8

    .line 692
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 696
    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/view/View;->layout(IIII)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    .line 703
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 707
    iget v5, v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    sub-int/2addr v2, v5

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v5

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v6

    .line 718
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v2, v6

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v7

    .line 728
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v8

    .line 736
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 740
    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/view/View;->layout(IIII)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 747
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 755
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_301

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 765
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 770
    :cond_301
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 774
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_314

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 784
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 789
    :cond_314
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    .line 793
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v6

    .line 802
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 815
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v9

    .line 823
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v10

    .line 831
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 835
    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/view/View;->layout(IIII)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 846
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v9

    .line 854
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v10

    .line 862
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 866
    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/view/View;->layout(IIII)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 877
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v9

    .line 885
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 889
    invoke-virtual {v7, v2, v8, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v7

    .line 900
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 908
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 912
    invoke-virtual {v2, v5, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v2

    .line 919
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_39d

    move-object v3, v2

    :cond_39d
    if-eqz v3, :cond_3d1

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    .line 932
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 946
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 950
    sget v5, Lcom/android/launcher3/R$dimen;->task_header_menu_hint_point_offset:I

    .line 952
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v4

    .line 970
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 975
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/view/View;->layout(IIII)V

    :cond_3d1
    :goto_3d1
    return-void
.end method

.method public onMeasure(II)V
    .registers 14

    .line 1
    const-string v0, "OplusTaskHeaderView#onMeasure"

    const-wide/16 v1, 0x8

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_1a

    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v5, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v4

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v0, v3

    .line 28
    :goto_1b
    iput v4, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_3d

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_3d

    .line 42
    iget-boolean v5, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTvFirstMeasured:Z

    if-eqz v5, :cond_3d

    .line 46
    iget-boolean v5, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIsNull:Z

    if-eqz v5, :cond_3d

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_5d

    .line 62
    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 70
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 76
    iget-boolean p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTvFirstMeasured:Z

    if-nez p1, :cond_5b

    .line 80
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v3, v4

    .line 92
    :cond_5b
    :goto_5b
    iput-boolean v3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTvFirstMeasured:Z

    .line 94
    :goto_5d
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result p1

    if-eqz p1, :cond_df

    .line 100
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 116
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 124
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 132
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 140
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v6

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 148
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v7

    .line 152
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 156
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v8

    .line 160
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 164
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v10, "onMeasure: title = "

    .line 177
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    const-string p1, "\nmeasureMatchParentChildren = "

    .line 185
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string p1, "\ntaskIcon = "

    .line 193
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string p1, ", "

    .line 198
    const-string v0, "\nlockIcon = "

    .line 200
    invoke-static {p2, v3, p1, v0, v9}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 203
    const-string p2, "\ntitleTv = "

    .line 205
    invoke-static {v4, v5, p1, p2, v9}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 208
    const-string p2, "\nmenuBtn = "

    .line 210
    invoke-static {v6, v7, p1, p2, v9}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 213
    invoke-static {v9, v8, p0, p1}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string p1, ""

    .line 219
    const-string p2, "OplusTaskHeaderView"

    .line 221
    invoke-static {p1, p2, p0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_df
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final reset()V
    .registers 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHintPoint(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPoint:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusIconView;->setBackgroundColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V
    .registers 6

    const-string/jumbo v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 1
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon$default(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 2
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public final setLockIcon(Lcom/android/quickstep/views/OplusIconView;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    .line 7
    .line 8
    return-void
.end method

.method public final setLockIconAlpha(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->finishToEndImmediately()V

    .line 6
    .line 7
    .line 8
    :cond_7
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIconAlphaInternal(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setLockIconAlphaWithSpring(F)V
    .registers 5

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 5
    .line 6
    if-nez v1, :cond_34

    .line 7
    .line 8
    new-instance v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 9
    .line 10
    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->SPRING_LOCK_ICON_ALPHA:Landroid/util/FloatProperty;

    .line 11
    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 16
    .line 17
    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 31
    .line 32
    if-nez v0, :cond_22

    .line 33
    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 36
    .line 37
    .line 38
    :goto_25
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 39
    .line 40
    if-eqz v0, :cond_34

    .line 41
    .line 42
    new-instance v1, Lcom/oplus/quickstep/views/h;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/oplus/quickstep/views/h;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 52
    .line 53
    :cond_34
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 54
    .line 55
    if-eqz p0, :cond_3b

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    return-void
.end method

.method public final setMToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    .line 2
    .line 3
    return-void
.end method

.method public final setMenuBtn(Landroid/widget/ImageButton;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->menuBtn:Landroid/widget/ImageButton;

    .line 7
    .line 8
    return-void
.end method

.method public final setMiniWindowBtn(Landroid/widget/ImageButton;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowBtn:Landroid/widget/ImageButton;

    .line 7
    .line 8
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTvFirstMeasured:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setScaleToBigBtn(Landroid/widget/ImageButton;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToBigBtn:Landroid/widget/ImageButton;

    .line 7
    .line 8
    return-void
.end method

.method public final setScaleToSmallBtn(Landroid/widget/ImageButton;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToSmallBtn:Landroid/widget/ImageButton;

    .line 7
    .line 8
    return-void
.end method

.method public final setShortCutAlpha(F)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V
    .registers 16

    .line 1
    const-string/jumbo v0, "taskView"

    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_15c

    .line 9
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_15c

    .line 15
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 21
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1d

    .line 25
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 30
    :cond_1d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_21
    const-string v1, ""

    if-nez v0, :cond_26

    move-object v0, v1

    .line 39
    :cond_26
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    .line 47
    :goto_2e
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_35

    goto :goto_40

    .line 54
    :cond_35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_40

    .line 61
    :cond_3c
    instance-of v2, p2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v2, :cond_41

    :goto_40
    return-void

    .line 66
    :cond_41
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    invoke-static {v2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    .line 74
    check-cast v2, Lcom/android/launcher3/BaseDraggingActivity;

    .line 76
    sget-object v3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 78
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5d

    .line 86
    sget-object v3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 88
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 94
    :cond_5d
    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_69

    .line 98
    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v6, 0x64

    if-ne v3, v6, :cond_69

    move v9, v4

    goto :goto_6a

    :cond_69
    move v9, v5

    .line 107
    :goto_6a
    instance-of v3, v2, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_72

    move-object v3, v2

    .line 112
    check-cast v3, Lcom/android/launcher/Launcher;

    goto :goto_73

    :cond_72
    const/4 v3, 0x0

    :goto_73
    if-eqz v3, :cond_7a

    .line 118
    invoke-virtual {v3}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v3

    goto :goto_7b

    :cond_7a
    move v3, v5

    .line 124
    :goto_7b
    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_88

    .line 128
    iget v7, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    if-eqz v7, :cond_86

    const/4 v8, -0x1

    if-ne v7, v8, :cond_88

    :cond_86
    move v7, v4

    goto :goto_89

    :cond_88
    move v7, v5

    :goto_89
    if-eqz v6, :cond_92

    .line 140
    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v8, 0x73

    if-ne v6, v8, :cond_92

    goto :goto_93

    :cond_92
    move v4, v5

    .line 148
    :goto_93
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v6

    .line 152
    const-string v10, "OplusTaskHeaderView"

    if-eqz v6, :cond_cd

    .line 156
    sget-object v6, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v11, "setShortCutIcon(), task="

    .line 163
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v11, ", inMini="

    .line 171
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v11, ", miniName="

    .line 179
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v11, ", inSplit="

    .line 184
    const-string v12, ", pkg="

    .line 186
    invoke-static {v6, v11, v12, v8, v3}, Lcom/android/launcher/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 189
    const-string v6, ", basePkg="

    .line 191
    const-string v11, ", bracket="

    .line 193
    invoke-static {v8, v0, v6, v1, v11}, Landroidx/room/h;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {v10, v6}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    if-nez v3, :cond_140

    if-nez v4, :cond_140

    if-nez v7, :cond_d5

    goto/16 :goto_140

    .line 214
    :cond_d5
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v3

    .line 218
    aget-object v11, v3, v5

    .line 220
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, v1

    move v6, v9

    move-object v7, v2

    move-object v8, v11

    .line 232
    invoke-direct/range {v3 .. v8}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCompatibleModeIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    .line 235
    invoke-direct {p0, p2, v1, v2, v11}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showFloatWindowIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    move-object v5, p1

    move-object v6, v1

    move v7, v9

    move-object v8, v2

    move-object v9, v11

    .line 243
    invoke-direct/range {v3 .. v9}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showSplitWindowIcon(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    .line 246
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result p0

    if-eqz p0, :cond_15c

    .line 252
    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    .line 254
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    .line 256
    sget-object p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    .line 258
    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    .line 260
    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    const-string/jumbo v4, "taskPackageName: "

    .line 267
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, ", parallelVersionMode="

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    const-string p0, ", canSplitMap="

    .line 283
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    const-string p0, ", canMiniMap="

    .line 291
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    const-string p0, ", miniWindowName="

    .line 299
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string p0, ", compatibleModeMap="

    .line 307
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 317
    invoke-static {v10, p0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    .line 321
    :cond_140
    :goto_140
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 328
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 332
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 335
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 339
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    .line 342
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :cond_15c
    :goto_15c
    return-void
.end method

.method public final setSplitWindowBtn(Landroid/widget/ImageButton;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->splitWindowBtn:Landroid/widget/ImageButton;

    .line 7
    .line 8
    return-void
.end method

.method public final setTaskIcon(Lcom/android/quickstep/views/OplusIconView;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIcon:Lcom/android/quickstep/views/OplusIconView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 1
    :goto_6
    iput-boolean v1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIsNull:Z

    if-eqz p1, :cond_13

    .line 2
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v1

    if-ne v1, v0, :cond_13

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_27

    :cond_13
    if-eqz p1, :cond_25

    sget-object v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_27

    :cond_25
    const-string p1, ""

    .line 3
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    return-void

    .line 4
    :cond_36
    iget v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_47

    goto :goto_5d

    .line 5
    :cond_47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mTextSizeSp:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    :goto_5d
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleWithLayoutCheck(Ljava/lang/String;)V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 7

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    iput-boolean v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIsNull:Z

    .line 9
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/i;->d(Ljava/lang/StringBuilder;)V

    .line 10
    const-string v0, ""

    const-string/jumbo v1, "mContext"

    if-eqz p1, :cond_22

    sget-object v2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_23

    :cond_22
    move-object p1, v0

    .line 11
    :cond_23
    iget-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3d

    .line 12
    sget-object v2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v0, p2

    .line 13
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_66

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_66

    .line 14
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-static {p2}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_66
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_84

    return-void

    .line 17
    :cond_84
    iget p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float p1, p1, p2

    if-nez p1, :cond_95

    goto :goto_ab

    .line 18
    :cond_95
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mLastFontScale:F

    .line 19
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x2

    iget v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mTextSizeSp:F

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    :goto_ab
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleWithLayoutCheck(Ljava/lang/String;)V

    return-void
.end method

.method public final setTitleAlpha(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->finishToEndImmediately()V

    .line 6
    .line 7
    .line 8
    :cond_7
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleAlphaInternal(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTitleAlphaWithSpring(F)V
    .registers 5

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 5
    .line 6
    if-nez v1, :cond_34

    .line 7
    .line 8
    new-instance v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 9
    .line 10
    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->SPRING_TITLE_ALPHA:Landroid/util/FloatProperty;

    .line 11
    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 16
    .line 17
    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 31
    .line 32
    if-nez v0, :cond_22

    .line 33
    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 36
    .line 37
    .line 38
    :goto_25
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 39
    .line 40
    if-eqz v0, :cond_34

    .line 41
    .line 42
    new-instance v1, Lcom/oplus/quickstep/views/g;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/oplus/quickstep/views/g;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 52
    .line 53
    :cond_34
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x2

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleAlphaSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 63
    .line 64
    if-eqz p0, :cond_44

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 67
    .line 68
    .line 69
    :cond_44
    return-void
.end method

.method public final setTitleTv(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTv:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "+{titleTv.text="

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo p0, "}"

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateHintPointVisibility(ZZ)V
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_58

    .line 5
    .line 6
    if-nez p2, :cond_8

    .line 7
    .line 8
    goto :goto_58

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    .line 10
    .line 11
    if-eqz p1, :cond_13

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne p1, v0, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_57

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object p2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x2

    .line 52
    new-array v4, v4, [F

    .line 53
    .line 54
    aput v3, v4, v2

    .line 55
    .line 56
    aput v1, v4, v0

    .line 57
    .line 58
    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$19$$inlined$addListener$default$1;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$19$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v0, 0x14d

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    .line 77
    .line 78
    const-wide/16 v0, 0x0

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    .line 87
    .line 88
    :cond_57
    return-void

    .line 89
    :cond_58
    :goto_58
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    .line 90
    .line 91
    if-eqz p2, :cond_5f

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 94
    .line 95
    .line 96
    :cond_5f
    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-eqz p1, :cond_6a

    .line 104
    .line 105
    const/high16 v1, 0x3f800000    # 1.0f

    .line 106
    .line 107
    :cond_6a
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p1, :cond_74

    .line 115
    .line 116
    goto :goto_76

    .line 117
    :cond_74
    const/16 v2, 0x8

    .line 118
    .line 119
    :goto_76
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final updateLockIconVisibility(ZZLcom/android/quickstep/views/TaskView;)V
    .registers 14

    .line 1
    const-string/jumbo v0, "taskView"

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/android/quickstep/views/OplusPanoramaLayout;

    if-eqz v0, :cond_18

    .line 15
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    const/16 p1, 0x8

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 36
    sget v3, Lcom/android/launcher3/R$drawable;->oplus_lock_icon:I

    .line 38
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 48
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    .line 52
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    goto :goto_38

    :cond_37
    move-object v1, v2

    .line 57
    :goto_38
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_49

    move v0, v1

    goto :goto_4a

    :cond_49
    move v0, v3

    .line 75
    :goto_4a
    iget-object v4, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_56

    .line 79
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-ne v4, v1, :cond_56

    move v4, v1

    goto :goto_57

    :cond_56
    move v4, v3

    :goto_57
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_62

    if-nez v4, :cond_64

    :cond_62
    if-nez p2, :cond_9e

    .line 101
    :cond_64
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_6b

    .line 105
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 108
    :cond_6b
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    .line 110
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_74

    .line 114
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 117
    :cond_74
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    .line 119
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    if-eqz p1, :cond_7e

    move p3, v7

    goto :goto_7f

    :cond_7e
    move p3, v8

    .line 128
    :goto_7f
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    if-eqz p1, :cond_85

    move v8, v7

    .line 134
    :cond_85
    invoke-virtual {p2, v8}, Landroid/view/View;->setScaleY(F)V

    .line 137
    sget-object p3, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 139
    invoke-virtual {p3}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result p3

    if-nez p3, :cond_96

    if-eqz p1, :cond_93

    move v5, v7

    .line 148
    :cond_93
    invoke-virtual {p0, v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIconAlpha(F)V

    :cond_96
    if-eqz p1, :cond_99

    goto :goto_9a

    :cond_99
    move v3, v6

    .line 155
    :goto_9a
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_9e
    if-eqz v0, :cond_a2

    if-nez p1, :cond_a6

    :cond_a2
    if-eqz v4, :cond_a7

    if-nez p1, :cond_a7

    :cond_a6
    return-void

    .line 168
    :cond_a7
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    if-eqz p2, :cond_c8

    .line 174
    iget-object p2, p2, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    if-eqz p2, :cond_c8

    .line 178
    invoke-virtual {p2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p2

    if-ne p2, v1, :cond_c8

    .line 184
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    if-eqz p2, :cond_c6

    .line 190
    invoke-virtual {p2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    move-result p2

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_d6

    :cond_c6
    move-object p2, v2

    goto :goto_d6

    .line 201
    :cond_c8
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    if-eqz p2, :cond_c6

    .line 207
    invoke-virtual {p2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageNearestToCenterOfScreen()I

    move-result p2

    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 215
    :goto_d6
    sget-object v9, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 217
    invoke-virtual {v9}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 223
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    if-eqz v9, :cond_12c

    .line 229
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    if-eqz v9, :cond_f3

    .line 235
    invoke-virtual {v9, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    .line 239
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_f4

    :cond_f3
    move-object p3, v2

    .line 245
    :goto_f4
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12c

    if-eqz v0, :cond_104

    .line 253
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    .line 257
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12b

    :cond_104
    if-eqz v4, :cond_10e

    .line 263
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    .line 267
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12b

    .line 271
    :cond_10e
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    if-eqz p1, :cond_115

    goto :goto_116

    :cond_115
    move v3, v6

    .line 279
    :goto_116
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_11c

    goto :goto_11d

    :cond_11c
    move v7, v8

    .line 286
    :goto_11d
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    .line 290
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 293
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    .line 297
    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleY(F)V

    :goto_12b
    return-void

    :cond_12c
    if-eqz v0, :cond_155

    .line 303
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_135

    .line 307
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 310
    :cond_135
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    .line 312
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    .line 320
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    .line 324
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    .line 328
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIconAlpha()F

    move-result p3

    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconHideAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 339
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    goto :goto_1b6

    :cond_155
    if-eqz v4, :cond_17e

    .line 344
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_15e

    .line 348
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 351
    :cond_15e
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    .line 353
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    .line 361
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    .line 365
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    .line 369
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIconAlpha()F

    move-result p3

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 380
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    goto :goto_1b6

    .line 383
    :cond_17e
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    .line 387
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_189

    goto :goto_18a

    :cond_189
    move v1, v3

    :goto_18a
    if-ne v1, p1, :cond_18d

    return-void

    :cond_18d
    if-eqz p1, :cond_199

    .line 400
    invoke-direct {p0, v8, v8, v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 407
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    goto :goto_1b6

    .line 410
    :cond_199
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    .line 418
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    .line 422
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    .line 426
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIconAlpha()F

    move-result p3

    .line 430
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconHideAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 437
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    :goto_1b6
    return-void
.end method
