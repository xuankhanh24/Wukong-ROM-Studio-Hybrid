.class public Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;
.super Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;
.source "GridRecentsViewDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 \u00c8\u00012\u00020\u0001:\u0002\u00c8\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0008J\u0017\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\u001f\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J-\u0010*\u001a\u00020\u000b2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\'\u0010.\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008.\u0010/J+\u00104\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u00142\u0008\u00102\u001a\u0004\u0018\u0001012\u0008\u00103\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00084\u00105J\u0017\u00107\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u00108J\u001f\u0010:\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0008J\u000f\u0010=\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008=\u0010\u000fJ7\u0010E\u001a\u00020D2\u0006\u0010>\u001a\u00020\u00112\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020A2\u0006\u0010C\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ)\u0010J\u001a\u00020D2\u0008\u0010G\u001a\u0004\u0018\u00010\u00112\u0006\u0010B\u001a\u00020A2\u0006\u0010I\u001a\u00020HH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0008J\u000f\u0010M\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0016J\u000f\u0010N\u001a\u000201H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008P\u0010\u000fJ\u0017\u0010S\u001a\u00020\u000b2\u0006\u0010R\u001a\u00020QH\u0016\u00a2\u0006\u0004\u0008S\u0010TJ\u0017\u0010U\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008U\u0010VJ/\u0010[\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008[\u0010\\J\u000f\u0010]\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008]\u0010\u000fJ\u001f\u0010`\u001a\u00020\u000b2\u0006\u0010^\u001a\u00020\u00062\u0006\u0010_\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008`\u0010aJ\u000f\u0010b\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008b\u0010\u000fJ\u0017\u0010d\u001a\u00020\u000b2\u0006\u0010c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008d\u00108J\u0017\u0010f\u001a\u00020\u000b2\u0006\u0010e\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008f\u0010VJ\'\u0010i\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00112\u0006\u0010g\u001a\u00020\u00142\u0006\u0010h\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008i\u0010jJ\u0017\u0010l\u001a\u00020\u00062\u0006\u0010k\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008l\u0010mJ\u0017\u0010n\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008n\u0010mJ\u0017\u0010q\u001a\u00020\u00062\u0006\u0010p\u001a\u00020oH\u0016\u00a2\u0006\u0004\u0008q\u0010rJ\u0017\u0010t\u001a\u00020\u000b2\u0006\u0010s\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008t\u00108J\u000f\u0010u\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008u\u0010\u000fJ\u0017\u0010x\u001a\u00020\u000b2\u0006\u0010w\u001a\u00020vH\u0016\u00a2\u0006\u0004\u0008x\u0010yJ\u0017\u0010|\u001a\u00020\u000b2\u0008\u0010{\u001a\u0004\u0018\u00010z\u00a2\u0006\u0004\u0008|\u0010}J\u0019\u0010~\u001a\u0004\u0018\u00010D2\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008~\u0010\u007fJF\u0010\u0087\u0001\u001a\u00020\u000b2\u0013\u0010\u0082\u0001\u001a\u000e\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u0001\u0018\u00010\u0080\u00012\u0011\u0010\u0085\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0084\u0001\u0018\u00010\u0083\u00012\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u0016\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u0089\u0001\u0010\u000fJ\u001a\u0010\u008b\u0001\u001a\u00020\u000b2\u0007\u0010\u008a\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0005\u0008\u008b\u0001\u0010VJ$\u0010\u008e\u0001\u001a\u00020\u000b2\u0007\u0010\u008c\u0001\u001a\u00020!2\u0007\u0010\u008d\u0001\u001a\u00020!H\u0016\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001J\u0011\u0010\u0090\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0005\u0008\u0090\u0001\u0010\u0016J\u0011\u0010\u0091\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0005\u0008\u0091\u0001\u0010\u0016J\u0011\u0010\u0092\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0005\u0008\u0092\u0001\u0010\u0016J\u001a\u0010\u0094\u0001\u001a\u00020\u00142\u0007\u0010\u0093\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0005\u0008\u0094\u0001\u0010\u001bJ$\u0010\u0094\u0001\u001a\u00020\u00142\u0007\u0010\u0093\u0001\u001a\u00020\u00142\u0007\u0010\u0095\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0096\u0001J\u0011\u0010\u0097\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u0097\u0001\u0010\u0008J\u0011\u0010\u0098\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0005\u0008\u0098\u0001\u0010\u0016J\u0015\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\"\u0010\u009c\u0001\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u00142\u0006\u0010h\u001a\u00020\u0014H\u0016\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009d\u0001J\u0011\u0010\u009e\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0008J\u0014\u0010\u009f\u0001\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u00a0\u0001J\u0011\u0010\u00a1\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010\u000fJ\u0011\u0010\u00a2\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010\u0008J\u001c\u0010\u00a5\u0001\u001a\u00020\u00062\u0008\u0010\u00a4\u0001\u001a\u00030\u00a3\u0001H\u0016\u00a2\u0006\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001J\u001b\u0010\u00a8\u0001\u001a\u00020\u00062\u0007\u0010\u00a7\u0001\u001a\u00020\u0014H\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J,\u0010\u00ab\u0001\u001a\u00020\u00062\u0007\u0010\u00a7\u0001\u001a\u00020\u00142\u0006\u0010B\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J5\u0010\u00ab\u0001\u001a\u00020\u00062\u0007\u0010\u00a7\u0001\u001a\u00020\u00142\u0007\u0010\u0095\u0001\u001a\u00020\u00142\u0006\u0010B\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ad\u0001J.\u0010\u00b0\u0001\u001a\u00020\u00062\u0008\u0010\u00a4\u0001\u001a\u00030\u00a3\u00012\u0007\u0010\u00ae\u0001\u001a\u00020\u00142\u0007\u0010\u00af\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001J\u0013\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0005\u0008\u00b2\u0001\u0010\u0013J\u001a\u0010\u00b4\u0001\u001a\u00020\u000b2\u0007\u0010\u00b3\u0001\u001a\u00020vH\u0016\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010yJ7\u0010\u00ba\u0001\u001a\u00020\u000b2\u0008\u0010\u00b6\u0001\u001a\u00030\u00b5\u00012\u0010\u0010\u00b8\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u00b7\u0001\u0018\u00010$2\u0007\u0010\u00b9\u0001\u001a\u00020!H\u0016\u00a2\u0006\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001J\u001b\u0010\u00ab\u0001\u001a\u00020\u00062\u0007\u0010\u00a7\u0001\u001a\u00020\u0014H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00a9\u0001R\u0019\u0010\u00bc\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u0019\u0010\u00be\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\'\u0010\u00c0\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00c0\u0001\u0010\u00bf\u0001\u001a\u0005\u0008\u00c1\u0001\u0010\u0016\"\u0005\u0008\u00c2\u0001\u0010VR\u001b\u0010\u00c3\u0001\u001a\u0004\u0018\u00010z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R$\u0010\u00c5\u0001\u001a\u0005\u0018\u00010\u0099\u00018B@\u0002X\u0082\u000e\u00a2\u0006\u0010\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u009b\u0001\u00a8\u0006\u00c9\u0001"
    }
    d2 = {
        "Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;",
        "Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl;",
        "recentsView",
        "<init>",
        "(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V",
        "",
        "isGrid",
        "()Z",
        "Landroid/graphics/Rect;",
        "outRect",
        "Lm9/n;",
        "getTaskSize",
        "(Landroid/graphics/Rect;)V",
        "updateSizeAndPadding",
        "()V",
        "updatePageOffsets",
        "Lcom/android/quickstep/views/TaskView;",
        "getFocusedTaskView",
        "()Lcom/android/quickstep/views/TaskView;",
        "",
        "getFirstViewIndex",
        "()I",
        "getLastViewIndex",
        "needScrollToAnywhere",
        "primaryScroll",
        "getPageNearestToCenterOfScreen",
        "(I)I",
        "index",
        "getScrollForPage",
        "getFreeScrollForPage",
        "focusTaskViewIndex",
        "specifyTaskView",
        "",
        "getTaskViewScaleInGeneralLayout",
        "(ILcom/android/quickstep/views/TaskView;)F",
        "",
        "Lcom/oplus/quickstep/views/StackChildLayoutParams;",
        "outOffsets",
        "layoutChildren",
        "Lcom/oplus/quickstep/views/StackPagedViewEx$ComputePageScrollsLogic;",
        "includeViewLogic",
        "handleGetPageOffsets",
        "([Lcom/oplus/quickstep/views/StackChildLayoutParams;ZLcom/oplus/quickstep/views/StackPagedViewEx$ComputePageScrollsLogic;)V",
        "touchX",
        "touchY",
        "getTouchedTaskViewIndex",
        "(III)I",
        "pageIndex",
        "Lcom/android/launcher3/util/IntArray;",
        "topRowIdArray",
        "bottomRowIdArray",
        "getOffsetFromScrollPosition",
        "(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I",
        "isTaskDismissal",
        "updateTaskSize",
        "(Z)V",
        "startRebalanceAfter",
        "updateGridProperties",
        "(ZI)V",
        "isDockViewHide",
        "updateCurveProperties",
        "dismissedTaskView",
        "animateTaskView",
        "shouldRemoveTask",
        "",
        "duration",
        "dismissingForSplitSelection",
        "Lcom/android/launcher3/anim/PendingAnimation;",
        "createTaskDismissAnimation",
        "(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;",
        "tv",
        "Landroid/view/animation/Interpolator;",
        "interpolator",
        "createTaskLaunchAnimation",
        "(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;",
        "needVibrateWhenScroll",
        "getBottomRowTaskCountForTablet",
        "getBottomRowIdArray",
        "()Lcom/android/launcher3/util/IntArray;",
        "updateCurrentPageScroll",
        "Landroid/view/View;",
        "child",
        "handleOnViewAdded",
        "(Landroid/view/View;)V",
        "updateCurrentPage",
        "(I)V",
        "initFinalX",
        "movedDelta",
        "isDeltaToUpperPage",
        "velocity",
        "calcFinalPageForSpringFling",
        "(IIZI)I",
        "reloadVisibleTask",
        "overviewGridEnabled",
        "wasEnable",
        "handleSetOverviewGridEnabled",
        "(ZZ)V",
        "handleRequestLayout",
        "freeScroll",
        "setEnableFreeScroll",
        "prevPage",
        "notifyPageSwitchListener",
        "start",
        "end",
        "isTaskViewWithinBounds",
        "(Lcom/android/quickstep/views/TaskView;II)Z",
        "taskView",
        "interceptOnLayout",
        "(Lcom/android/quickstep/views/TaskView;)Z",
        "isTaskViewWithinVisibleRange",
        "Landroid/view/MotionEvent;",
        "ev",
        "isInterceptPageViewTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "updateHandler",
        "onGestureAnimationEnd",
        "handlePageEndTransition",
        "Ljava/lang/Runnable;",
        "callback",
        "runOnPageScrollsInitialized",
        "(Ljava/lang/Runnable;)V",
        "Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;",
        "listener",
        "setPageBeginEndTransitionListener",
        "(Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;)V",
        "createAllTasksDismissAnimation",
        "(J)Lcom/android/launcher3/anim/PendingAnimation;",
        "",
        "Lcom/android/quickstep/views/OplusTaskViewImpl;",
        "exceptedTaskViews",
        "",
        "Lcom/android/systemui/shared/recents/model/Task;",
        "exceptedTasks",
        "launchTaskView",
        "onClearAllAnimationFinished",
        "(Ljava/util/Set;Ljava/util/List;Lcom/android/quickstep/views/OplusTaskViewImpl;)V",
        "startHomeFromRecents",
        "visibility",
        "handleSetVisibility",
        "x",
        "y",
        "linkPanoramaViewTrans",
        "(FF)V",
        "computeMinScroll",
        "computeMaxScroll",
        "getExtraTransForPanoramaLayout",
        "page",
        "extraPanoramaOffset",
        "pageCount",
        "(II)I",
        "isPanoramaLayoutVisible",
        "getPanoramaLayoutChildCount",
        "Lcom/android/quickstep/views/OplusPanoramaLayout;",
        "getPanoramaLayout",
        "()Lcom/android/quickstep/views/OplusPanoramaLayout;",
        "checkPanoramaTaskViewVisibility",
        "(II)V",
        "showAsGrid",
        "getCurrentPageOrExtra",
        "()Landroid/view/View;",
        "onRecentsViewReset",
        "handleHomeTab",
        "Landroid/view/KeyEvent;",
        "event",
        "handleKeyEvent",
        "(Landroid/view/KeyEvent;)Z",
        "whichPage",
        "snapToFocusedPage",
        "(I)Z",
        "immediate",
        "snapToPageWithPanorama",
        "(IIZ)Z",
        "(IIIZ)Z",
        "pageDelta",
        "cycle",
        "snapToPageRelativeByKey",
        "(Landroid/view/KeyEvent;IZ)Z",
        "getNextTaskOnToggle",
        "runnable",
        "runOnceOnNonPendingApplyLoadPlan",
        "Landroid/animation/AnimatorSet;",
        "animatorSet",
        "Lcom/android/quickstep/util/TaskViewSimulator;",
        "taskViewSimulators",
        "deltaTrans",
        "addAppToRecentsTranslationXAnim",
        "(Landroid/animation/AnimatorSet;[Lcom/android/quickstep/util/TaskViewSimulator;F)V",
        "mReloadVisibleTaskData",
        "Z",
        "lastComputedGridTaskSizeIsZeroCount",
        "I",
        "taskViewAllowDrawAreaOffsetValue",
        "getTaskViewAllowDrawAreaOffsetValue",
        "setTaskViewAllowDrawAreaOffsetValue",
        "pageBeginEndTransitionListener",
        "Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;",
        "mPanoramaLayout",
        "Lcom/android/quickstep/views/OplusPanoramaLayout;",
        "getMPanoramaLayout",
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
.field private static final CALLER_DEPTH:I = 0xa

.field public static final Companion:Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$Companion;

.field private static final LAST_COMPUTED_GRID_TASK_SIZE_COUNT_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GridRecentsViewDelegate"


# instance fields
.field private lastComputedGridTaskSizeIsZeroCount:I

.field private mPanoramaLayout:Lcom/android/quickstep/views/OplusPanoramaLayout;

.field private mReloadVisibleTaskData:Z

.field private pageBeginEndTransitionListener:Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;

.field private taskViewAllowDrawAreaOffsetValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->Companion:Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "recentsView"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/KeyEvent;I)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->snapToPageRelativeByKey$lambda$52$lambda$50(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/KeyEvent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->startHomeFromRecents$lambda$43$lambda$42(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;ILcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->snapToPageRelativeByKey$lambda$52$lambda$51(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;ILcom/android/quickstep/views/OplusRecentsViewImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 6
    .line 7
    if-eqz p0, :cond_d

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

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
    return-object p0
.end method

.method private static final snapToPageRelativeByKey$lambda$52$lambda$50(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/KeyEvent;I)V
    .registers 7

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "$this_run"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "$event"

    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->snapToPageWithPanorama(I)Z

    .line 21
    invoke-virtual {p1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getNextPage()I

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 31
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrPageTaskThumbnailView()Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateScrollDeltaWhenFocus(ILcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    .line 38
    :cond_25
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 44
    rem-int/lit8 p3, p3, 0x2

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/android/quickstep/views/OplusPanoramaLayout;->focusTransferFromRecentsView(Landroid/view/KeyEvent;I)Z

    :cond_30
    return-void
.end method

.method private static final snapToPageRelativeByKey$lambda$52$lambda$51(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;ILcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "$this_run"

    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->snapToPageWithPanorama(I)Z

    .line 15
    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrPageTaskThumbnailView()Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    move-result-object p0

    .line 19
    invoke-virtual {p2, p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateScrollDeltaWhenFocus(ILcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private final snapToPageWithPanorama(I)Z
    .registers 5

    .line 21
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23
    const-string/jumbo v0, "snapToPageWithPanorama: whichPage = "

    const-string v1, " "

    const-string v2, "GridRecentsViewDelegate"

    .line 24
    invoke-static {v0, p1, v1, v2}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_14
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMPageSnapAnimationDuration()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageWithPanorama(IIZ)Z

    move-result p0

    return p0
.end method

.method private static final startHomeFromRecents$lambda$43$lambda$42(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->startHomeFromRecents()V

    return-void
.end method


# virtual methods
.method public addAppToRecentsTranslationXAnim(Landroid/animation/AnimatorSet;[Lcom/android/quickstep/util/TaskViewSimulator;F)V
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "animatorSet"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_10
    if-ge v3, v1, :cond_46

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_1d

    .line 28
    .line 29
    goto :goto_44

    .line 30
    :cond_1d
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getAppToRecentsTranslationX()F

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-float/2addr v5, p3

    .line 35
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getAppToRecentsTranslationX()F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    cmpg-float v6, v5, v6

    .line 40
    .line 41
    if-nez v6, :cond_2b

    .line 42
    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    invoke-virtual {v4, v5}, Lcom/android/quickstep/views/TaskView;->setAppToRecentsTranslationX(F)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    const/4 v6, 0x0

    .line 48
    cmpg-float v7, v5, v6

    .line 49
    .line 50
    if-nez v7, :cond_34

    .line 51
    .line 52
    goto :goto_44

    .line 53
    :cond_34
    sget-object v7, Lcom/android/quickstep/views/TaskView;->APP_TO_RECENTS_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 54
    .line 55
    const/4 v8, 0x2

    .line 56
    new-array v8, v8, [F

    .line 57
    .line 58
    aput v5, v8, v2

    .line 59
    .line 60
    aput v6, v8, v0

    .line 61
    .line 62
    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 67
    .line 68
    .line 69
    :goto_44
    add-int/2addr v3, v0

    .line 70
    goto :goto_10

    .line 71
    :cond_46
    new-instance p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$addAppToRecentsTranslationXAnim$1;

    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate$addAppToRecentsTranslationXAnim$1;-><init>([Lcom/android/quickstep/util/TaskViewSimulator;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_5b

    .line 84
    .line 85
    const-string p0, "addAppToRecentsTranslationXAnim: deltaTrans="

    .line 86
    .line 87
    const-string p1, "GridRecentsViewDelegate"

    .line 88
    .line 89
    invoke-static {p0, p3, p1}, Lcom/android/launcher/s3;->a(Ljava/lang/String;FLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5b
    return-void
.end method

.method public calcFinalPageForSpringFling(IIZI)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->pageScrollsInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    if-eqz p2, :cond_4b

    .line 11
    .line 12
    iget-object p2, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMPageSize()Landroid/graphics/Point;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    iget p4, p4, Landroid/graphics/Point;->x:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMPageSize()Landroid/graphics/Point;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    invoke-interface {p2, p4, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-lez p2, :cond_4b

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    if-lez p4, :cond_4b

    .line 37
    .line 38
    iget p4, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mPageSpacing:I

    .line 39
    .line 40
    add-int/2addr p2, p4

    .line 41
    iget p4, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mMinScroll:I

    .line 42
    .line 43
    iget v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mMaxScroll:I

    .line 44
    .line 45
    invoke-static {p1, p4, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-double v0, p1

    .line 54
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 55
    .line 56
    mul-double/2addr v0, v2

    .line 57
    int-to-double p1, p2

    .line 58
    div-double/2addr v0, p1

    .line 59
    invoke-static {v0, v1}, Lv9/a;->a(D)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    mul-int/lit8 p1, p1, 0x2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    add-int/lit8 p0, p0, -0x1

    .line 70
    .line 71
    invoke-static {p1, p3, p0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :cond_4b
    return p3
.end method

.method public checkPanoramaTaskViewVisibility(II)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_15

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-boolean p0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->loadVisibleTaskData(IIZ)V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method public computeMaxScroll()I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez v0, :cond_84

    .line 11
    .line 12
    add-int/lit8 v2, v0, -0x1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getPanoramaLayoutChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-lez v3, :cond_4f

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v3, v3, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 26
    .line 27
    if-eqz v3, :cond_4f

    .line 28
    .line 29
    if-eq v0, v4, :cond_26

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-boolean v3, v3, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 36
    .line 37
    if-eqz v3, :cond_4f

    .line 38
    .line 39
    :cond_26
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2, v0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getRecentMaxWidth(Lcom/android/quickstep/views/RecentsView;I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {v1, p0, v0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getRecentMaxScroll(Lcom/android/quickstep/views/RecentsView;I)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :cond_4f
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportTaskAdaptiveWidth()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_6e

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-boolean v3, v3, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 91
    .line 92
    if-eqz v3, :cond_6e

    .line 93
    .line 94
    if-lt v2, v4, :cond_6e

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getScrollForPage(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/lit8 v0, v0, -0x2

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getScrollForPage(I)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    return p0

    .line 111
    :cond_6e
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-boolean v0, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 116
    .line 117
    if-eqz v0, :cond_77

    .line 118
    .line 119
    goto :goto_7f

    .line 120
    :cond_77
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeFirstViewIndex(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_7f
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getScrollForPage(I)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    return p0

    .line 133
    :cond_84
    return v1
.end method

.method public computeMinScroll()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez v0, :cond_7b

    .line 11
    .line 12
    add-int/lit8 v2, v0, -0x1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getPanoramaLayoutChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-lez v3, :cond_46

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-boolean v3, v3, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 25
    .line 26
    if-nez v3, :cond_46

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v2, v0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getRecentMaxWidth(Lcom/android/quickstep/views/RecentsView;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {v1, p0, v0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getRecentMaxScroll(Lcom/android/quickstep/views/RecentsView;I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    mul-int/lit8 p0, p0, -0x1

    .line 69
    .line 70
    return p0

    .line 71
    :cond_46
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportTaskAdaptiveWidth()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_66

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-boolean v3, v3, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 82
    .line 83
    if-nez v3, :cond_66

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    if-lt v2, v3, :cond_66

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getScrollForPage(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/lit8 v0, v0, -0x2

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getScrollForPage(I)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    goto :goto_7a

    .line 103
    :cond_66
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-boolean v0, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 108
    .line 109
    if-eqz v0, :cond_76

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeFirstViewIndex(I)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    :cond_76
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getScrollForPage(I)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    :goto_7a
    return p0

    .line 124
    :cond_7b
    return v1
.end method

.method public createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseRecentsModel;->hasPanoramaFlexibleTask()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_11

    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->panoramaCreateAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 14

    .line 1
    const-string p6, "dismissedTaskView"

    .line 2
    .line 3
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getTaskAnimationBuilder()Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    move-wide v5, p4

    .line 22
    invoke-interface/range {v0 .. v6}, Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;->createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 12

    .line 1
    const-string v0, "interpolator"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object p0, v2, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 11
    .line 12
    if-eqz p0, :cond_1c

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1c

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 27
    .line 28
    .line 29
    :cond_1c
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getTaskAnimationBuilder()Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v3, p1

    .line 38
    move-wide v4, p2

    .line 39
    move-object v6, p4

    .line 40
    invoke-interface/range {v1 .. v6}, Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;->createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_32

    .line 45
    .line 46
    new-instance p0, Lcom/android/launcher3/anim/PendingAnimation;

    .line 47
    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-object p0
.end method

.method public extraPanoramaOffset(I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->extraPanoramaOffset(II)I

    move-result p0

    return p0
.end method

.method public extraPanoramaOffset(II)I
    .registers 12

    .line 2
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p2, :cond_99

    if-ltz p1, :cond_99

    if-ge p1, p2, :cond_99

    .line 3
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isPanoramaLayoutVisible()Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_99

    .line 4
    :cond_13
    div-int/lit8 v2, p1, 0x2

    add-int/lit8 v3, p2, -0x1

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1e

    move v2, v4

    goto :goto_1f

    :cond_1e
    move v2, v1

    .line 5
    :goto_1f
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getExtraTransForPanoramaLayout()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    sub-int/2addr v3, p0

    .line 6
    rem-int/lit8 p0, p1, 0x2

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    const-string/jumbo v5, "requireTaskViewAt(...)"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v5, v1

    :goto_46
    if-ge v5, p2, :cond_5f

    .line 7
    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v4

    .line 8
    iget v7, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mPageSpacing:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    mul-int/2addr v8, v6

    sub-int/2addr v8, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_5c

    move v1, v6

    goto :goto_60

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_5f
    const/4 v5, -0x1

    :goto_60
    if-gez v5, :cond_6e

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    neg-int p0, p0

    .line 10
    iget-boolean p1, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    neg-int p0, p0

    :goto_6d
    return p0

    :cond_6e
    if-ge p1, v5, :cond_76

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    neg-int p0, p0

    goto :goto_88

    .line 12
    :cond_76
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p2, v1

    sub-int/2addr p1, v5

    div-int/lit8 p1, p1, 0x2

    iget v1, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mPageSpacing:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v1

    mul-int/2addr p0, p1

    add-int/2addr p0, p2

    :goto_88
    if-eqz v2, :cond_92

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    iget p2, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mPageSpacing:I

    sub-int/2addr p1, p2

    add-int/2addr p0, p1

    .line 14
    :cond_92
    iget-boolean p1, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    if-eqz p1, :cond_97

    goto :goto_98

    :cond_97
    neg-int p0, p0

    :goto_98
    return p0

    :cond_99
    :goto_99
    return v1
.end method

.method public getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBottomRowTaskCountForTablet()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-gtz v0, :cond_11

    .line 11
    .line 12
    new-instance p0, Lcom/android/launcher3/util/IntArray;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_11
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_1a
    if-ge v1, v0, :cond_3c

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    instance-of v4, v3, Lcom/android/quickstep/views/TaskView;

    .line 34
    .line 35
    if-eqz v4, :cond_27

    .line 36
    .line 37
    check-cast v3, Lcom/android/quickstep/views/TaskView;

    .line 38
    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v3, 0x0

    .line 41
    :goto_28
    if-eqz v3, :cond_39

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_39

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 56
    .line 57
    .line 58
    :cond_39
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1a

    .line 61
    :cond_3c
    return-object v2
.end method

.method public getBottomRowTaskCountForTablet()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sub-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public getCurrentPageOrExtra()Landroid/view/View;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getCurrentPageOrExtra()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_23

    .line 6
    .line 7
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_22

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-gtz v0, :cond_22

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_22

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->getFirstView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move-object v0, v1

    .line 36
    :cond_23
    :goto_23
    return-object v0
.end method

.method public getExtraTransForPanoramaLayout()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->isPanoramaLayoutVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_19

    return v1

    .line 26
    :cond_19
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/android/quickstep/views/RecentsView;->mPanoramaLayoutValidRect:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/android/launcher/layoutparam/ConfigParam;->getWidthPx()I

    move-result v2

    .line 40
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->overview()Lcom/android/launcher/layoutparam/OverviewParam;

    move-result-object v0

    .line 44
    const-string/jumbo v3, "overview(...)"

    .line 47
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/OverviewParam;->getPanoramaLayoutHorizontalMarginPercentage()F

    move-result v0

    int-to-float v3, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 57
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 67
    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_49

    .line 70
    :cond_45
    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    :goto_49
    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 76
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    sub-int/2addr v2, p0

    return v2
.end method

.method public getFirstViewIndex()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x1

    .line 16
    .line 17
    :goto_10
    return p0
.end method

.method public getFocusedTaskView()Lcom/android/quickstep/views/TaskView;
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getFreeScrollForPage(I)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getFreePageScrolls()[I

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->pageScrollsInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    .line 24
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMPageLayoutOffsets()[Lcom/oplus/quickstep/views/StackChildLayoutParams;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    array-length v1, v1

    if-ge p1, v1, :cond_67

    if-ltz p1, :cond_67

    if-eqz v0, :cond_29

    .line 38
    array-length v1, v0

    if-lt p1, v1, :cond_29

    goto :goto_67

    :cond_29
    if-eqz v0, :cond_2d

    .line 44
    aget v2, v0, p1

    .line 46
    :cond_2d
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "toString(...)"

    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMPageLayoutOffsets()[Lcom/oplus/quickstep/views/StackChildLayoutParams;

    move-result-object p0

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v1, "getScrollForPage: index="

    .line 75
    const-string v3, ", layoutOffset="

    .line 77
    const-string v4, ", outOffsets="

    .line 79
    invoke-static {p1, v2, v1, v3, v4}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, ", mPageLayoutOffsets="

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    const-string p1, "GridRecentsViewDelegate"

    .line 100
    invoke-static {p1, p0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    neg-int v2, v2

    :cond_67
    :goto_67
    return v2
.end method

.method public getLastViewIndex()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 6
    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/lit8 p0, p0, -0x1

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p0, 0x0

    .line 17
    :goto_10
    return p0
.end method

.method public getNextTaskOnToggle()Lcom/android/quickstep/views/TaskView;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_12

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->isPanoramaSupported()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_e

    .line 13
    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->getNextFocusableTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_12
    :goto_12
    if-eqz v1, :cond_15

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_15
    invoke-super {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getNextTaskOnToggle()Lcom/android/quickstep/views/TaskView;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .registers 4

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getPageNearestToCenterOfScreen(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMIsLayoutValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsPageInTransition:Z

    .line 12
    .line 13
    if-nez v0, :cond_10

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getFreePageScrolls()[I

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    neg-int p1, p1

    .line 38
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->extraPanoramaOffset(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/2addr v2, p1

    .line 47
    iget-boolean p1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 48
    .line 49
    invoke-interface {v1, p0, v2, v0, p1}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getDestinationPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public getPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getPanoramaLayoutChildCount()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_11

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_11

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :cond_11
    return v1
.end method

.method public getScrollForPage(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getFreePageScrolls()[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-boolean v2, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 18
    .line 19
    if-nez v2, :cond_23

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-boolean v2, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 30
    .line 31
    invoke-interface {p0, v0, p1, v1, v2}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getScrollForPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_23
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getFreeScrollForPage(I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    const-string/jumbo v0, "outRect"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 11
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 13
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 15
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 22
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getTaskViewAllowDrawAreaOffsetValue()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->taskViewAllowDrawAreaOffsetValue:I

    .line 2
    .line 3
    return p0
.end method

.method public getTaskViewScaleInGeneralLayout(ILcom/android/quickstep/views/TaskView;)F
    .registers 3

    .line 1
    const-string/jumbo p0, "specifyTaskView"

    .line 4
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getTouchedTaskViewIndex(III)I
    .registers 20

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-super/range {p0 .. p3}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getTouchedTaskViewIndex(III)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    const/4 v6, 0x1

    .line 19
    if-ge v4, v6, :cond_15

    .line 20
    .line 21
    return v5

    .line 22
    :cond_15
    new-instance v4, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v7, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v9, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isTopTaskQuickSearch()Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v12, 0x2

    .line 48
    if-eqz v10, :cond_3d

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    sub-int/2addr v10, v6

    .line 55
    rem-int/2addr v10, v12

    .line 56
    if-eqz v10, :cond_3b

    .line 57
    .line 58
    :goto_39
    move v10, v6

    .line 59
    goto :goto_45

    .line 60
    :cond_3b
    move v10, v11

    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    rem-int/2addr v10, v12

    .line 67
    if-eqz v10, :cond_3b

    .line 68
    .line 69
    goto :goto_39

    .line 70
    :goto_45
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isTopTaskQuickSearch()Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    if-eqz v10, :cond_51

    .line 79
    .line 80
    sub-int/2addr v14, v6

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    sub-int/2addr v14, v12

    .line 83
    :goto_52
    invoke-static {v14, v11}, Lz9/g;->c(II)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-eqz v15, :cond_5e

    .line 92
    .line 93
    move v15, v13

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v15, v14

    .line 96
    :goto_5f
    invoke-virtual {v2, v15}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    if-eqz v15, :cond_68

    .line 101
    .line 102
    invoke-virtual {v15, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 103
    .line 104
    .line 105
    :cond_68
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-eqz v15, :cond_6f

    .line 110
    .line 111
    move v13, v14

    .line 112
    :cond_6f
    invoke-virtual {v2, v13}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    if-eqz v13, :cond_78

    .line 117
    .line 118
    invoke-virtual {v13, v7}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    :cond_78
    iget v13, v7, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    iput v13, v8, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    iget v13, v4, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    iput v13, v8, Landroid/graphics/Rect;->top:I

    .line 128
    .line 129
    iget v13, v4, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    iput v13, v8, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    iput v13, v8, Landroid/graphics/Rect;->bottom:I

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isTopTaskQuickSearch()Z

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    if-eqz v13, :cond_95

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    if-le v13, v12, :cond_e8

    .line 148
    .line 149
    goto :goto_9b

    .line 150
    :cond_95
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-le v13, v6, :cond_e8

    .line 155
    .line 156
    :goto_9b
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isTopTaskQuickSearch()Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    if-eqz v13, :cond_a3

    .line 161
    .line 162
    move v13, v12

    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    move v13, v6

    .line 165
    :goto_a4
    if-eqz v10, :cond_ac

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    sub-int/2addr v6, v12

    .line 172
    goto :goto_b2

    .line 173
    :cond_ac
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    add-int/lit8 v6, v10, -0x1

    .line 178
    .line 179
    :goto_b2
    invoke-static {v6, v11}, Lz9/g;->c(II)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_be

    .line 188
    .line 189
    move v10, v13

    .line 190
    goto :goto_bf

    .line 191
    :cond_be
    move v10, v6

    .line 192
    :goto_bf
    invoke-virtual {v2, v10}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageAt(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    if-eqz v10, :cond_c8

    .line 197
    .line 198
    invoke-virtual {v10, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 199
    .line 200
    .line 201
    :cond_c8
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_cf

    .line 206
    .line 207
    move v13, v6

    .line 208
    :cond_cf
    invoke-virtual {v2, v13}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageAt(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    if-eqz v6, :cond_d8

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 215
    .line 216
    .line 217
    :cond_d8
    iget v6, v7, Landroid/graphics/Rect;->left:I

    .line 218
    .line 219
    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    iput v6, v9, Landroid/graphics/Rect;->top:I

    .line 224
    .line 225
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 226
    .line 227
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 228
    .line 229
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 230
    .line 231
    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 232
    .line 233
    :cond_e8
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    iget v2, v2, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    .line 242
    .line 243
    const-string v7, "getTouchedTaskViewIndex() touchedNearestIndex="

    .line 244
    .line 245
    const-string v10, ", primaryScroll="

    .line 246
    .line 247
    const-string v11, ", touchX="

    .line 248
    .line 249
    move/from16 v12, p1

    .line 250
    .line 251
    invoke-static {v3, v12, v7, v10, v11}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    const-string v10, ", touchY="

    .line 256
    .line 257
    const-string v11, ", topRowValidRegions="

    .line 258
    .line 259
    invoke-static {v0, v1, v10, v11, v7}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 260
    .line 261
    .line 262
    const-string v10, ", bottomRowValidRegions="

    .line 263
    .line 264
    const-string v11, ", isRTL="

    .line 265
    .line 266
    invoke-static {v7, v8, v10, v9, v11}, Lcom/android/launcher/layout/w;->a(Ljava/lang/StringBuilder;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v10, ", pageCount="

    .line 270
    .line 271
    const-string v11, ", progress="

    .line 272
    .line 273
    invoke-static {v6, v10, v11, v7, v4}, Landroidx/compose/runtime/h1;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 274
    .line 275
    .line 276
    const-string v4, "GridRecentsViewDelegate"

    .line 277
    .line 278
    invoke-static {v7, v2, v4}, La1/a;->c(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-nez v2, :cond_125

    .line 286
    .line 287
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_125

    .line 292
    .line 293
    move v3, v5

    .line 294
    :cond_125
    return v3
.end method

.method public handleGetPageOffsets([Lcom/oplus/quickstep/views/StackChildLayoutParams;ZLcom/oplus/quickstep/views/StackPagedViewEx$ComputePageScrollsLogic;)V
    .registers 11

    .line 1
    const-string/jumbo v0, "outOffsets"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "includeViewLogic"

    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v2

    .line 16
    array-length p0, p1

    .line 17
    new-array v3, p0, [I

    .line 19
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v1

    .line 27
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v5

    move v4, p2

    move-object v6, p3

    .line 33
    invoke-interface/range {v1 .. v6}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getPageScrolls(Lcom/android/quickstep/views/RecentsView;[IZILcom/oplus/quickstep/views/StackPagedViewEx$ComputePageScrollsLogic;)Z

    return-void
.end method

.method public handleHomeTab()Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_27

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->isPanoramaSupported()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_22

    .line 16
    :cond_f
    const/16 v2, 0x3d

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusPanoramaLayout;->focusOnFirstTaskView(I)Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_21

    .line 26
    .line 27
    const-string v0, "GridRecentsViewDelegate"

    .line 28
    .line 29
    const-string v2, "handle home+tab"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    move v0, v1

    .line 35
    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    :goto_28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_31

    .line 48
    .line 49
    return v1

    .line 50
    :cond_31
    invoke-super {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->handleHomeTab()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_55

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->isPanoramaSupported()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_16

    .line 20
    .line 21
    :cond_14
    :goto_14
    move v0, v3

    .line 22
    goto :goto_50

    .line 23
    :cond_16
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    instance-of v5, v4, Lcom/android/launcher3/RecentContainerView;

    .line 32
    .line 33
    if-eqz v5, :cond_25

    .line 34
    .line 35
    check-cast v4, Lcom/android/launcher3/RecentContainerView;

    .line 36
    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move-object v4, v1

    .line 39
    :goto_26
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-lez v5, :cond_4b

    .line 48
    .line 49
    if-eqz v4, :cond_36

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_36
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_14

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->isLastFocusedOnTaskView()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4b

    .line 74
    .line 75
    goto :goto_14

    .line 76
    :cond_4b
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusPanoramaLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    move v0, v2

    .line 81
    :goto_50
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move v3, v0

    .line 86
    :cond_55
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5e

    .line 93
    .line 94
    return v2

    .line 95
    :cond_5e
    if-eqz v3, :cond_67

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v2, :cond_67

    .line 102
    .line 103
    return v2

    .line 104
    :cond_67
    invoke-super {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0
.end method

.method public handleOnViewAdded(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of v0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 11
    .line 12
    if-eqz v0, :cond_10

    .line 13
    .line 14
    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 15
    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    if-eqz p1, :cond_18

    .line 19
    .line 20
    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setGridProgressLight(F)V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method public handlePageEndTransition()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->pageBeginEndTransitionListener:Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;

    .line 6
    .line 7
    if-eqz p0, :cond_17

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsBeingDragged:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMNextPage()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-interface {p0, v1, v2, v0}, Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;->onPageEndTransition(ZZI)V

    .line 22
    .line 23
    .line 24
    :cond_17
    sget-object p0, Lcom/oplus/quickstep/utils/PanoramaLayoutAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/PanoramaLayoutAnimUtil;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/PanoramaLayoutAnimUtil;->setFillingScrollAnimationRunning(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public handleRequestLayout()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 4
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 10
    sget-boolean p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    if-eqz p0, :cond_21

    .line 14
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p0

    if-eqz p0, :cond_21

    const/16 p0, 0xa

    .line 22
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    .line 26
    const-string/jumbo v0, "requestLayout gridRecentView, caller="

    .line 29
    const-string v1, "GridRecentsViewDelegate"

    .line 31
    invoke-static {v0, p0, v1}, Ld1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public handleSetOverviewGridEnabled(ZZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->handleSetOverviewGridEnabled(ZZ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz p1, :cond_34

    .line 9
    .line 10
    if-nez p2, :cond_34

    .line 11
    .line 12
    iget-object p1, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 13
    .line 14
    if-eqz p1, :cond_1a

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1a

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_27

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->unloadVisibleTaskData(I)V

    .line 38
    .line 39
    .line 40
    :cond_27
    const/4 p1, 0x3

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_34

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->resetIgnoreNextKeyEventUp()V

    .line 51
    .line 52
    .line 53
    :cond_34
    return-void
.end method

.method public handleSetVisibility(I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusPanoramaLayout;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_10
    :goto_10
    invoke-super {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->handleSetVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public interceptOnLayout(Lcom/android/quickstep/views/TaskView;)Z
    .registers 7

    .line 1
    const-string/jumbo v0, "taskView"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->setMenuBtnClickListener(Lcom/android/quickstep/views/TaskView;)V

    .line 10
    instance-of v0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move-object v2, p1

    .line 16
    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    if-eqz v2, :cond_1a

    .line 22
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMenuBtnPosition()Landroid/graphics/Point;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    if-eqz v2, :cond_28

    .line 30
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 32
    iget-object v4, p1, Lcom/android/quickstep/views/TaskView;->mStackMenuBtn:Landroid/widget/ImageButton;

    if-nez v4, :cond_24

    goto :goto_28

    :cond_24
    int-to-float v3, v3

    .line 38
    invoke-virtual {v4, v3}, Landroid/view/View;->setX(F)V

    :cond_28
    :goto_28
    if-eqz v2, :cond_35

    .line 43
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 45
    iget-object v3, p1, Lcom/android/quickstep/views/TaskView;->mStackMenuBtn:Landroid/widget/ImageButton;

    if-nez v3, :cond_31

    goto :goto_35

    :cond_31
    int-to-float v2, v2

    .line 51
    invoke-virtual {v3, v2}, Landroid/view/View;->setY(F)V

    :cond_35
    :goto_35
    if-eqz v0, :cond_3a

    move-object v1, p1

    .line 57
    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_3a
    if-eqz v1, :cond_3f

    .line 61
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateTaskMenuBtnSrc()V

    .line 64
    :cond_3f
    iget-object v0, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 80
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 91
    iget-object v0, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 105
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->updateMenuBtnVisibility(Lcom/android/quickstep/views/TaskView;)V

    .line 119
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 125
    invoke-super {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->interceptOnLayout(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    return p0

    :cond_81
    const/4 p0, 0x1

    return p0
.end method

.method public isDockViewHide()Z
    .registers 1

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isGrid()Z
    .registers 1

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    const-string v0, "ev"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 17
    sget-boolean v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    if-nez v0, :cond_1e

    .line 21
    sget-boolean v0, Lcom/oplus/quickstep/delegates/touch/GridTouchDelegate;->isHandlingGridTaskViewTouch:Z

    if-nez v0, :cond_1e

    .line 25
    invoke-static {}, Lcom/oplus/quickstep/utils/PanoramaLayoutAnimUtil;->isPanoramaDismissAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    move v0, v1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_30

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_30

    .line 42
    iget-boolean v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsBeingDragged:Z

    if-eqz v1, :cond_30

    .line 46
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->resetTouchState()V

    :cond_30
    if-eqz v0, :cond_5d

    .line 51
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 57
    iget-boolean p0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsBeingDragged:Z

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 63
    sget-boolean v1, Lcom/oplus/quickstep/delegates/touch/GridTouchDelegate;->isHandlingGridTaskViewTouch:Z

    .line 65
    sget-boolean v2, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    .line 67
    invoke-static {}, Lcom/oplus/quickstep/utils/PanoramaLayoutAnimUtil;->isPanoramaDismissAnimationRunning()Z

    move-result v3

    .line 71
    const-string/jumbo v4, "mIsBeingDragged:"

    .line 74
    const-string v5, "; "

    .line 76
    const-string v6, " GridRecntView fillIn animator is running.so don\'t excute any event. isHandlingGridTaskViewTouch:"

    .line 78
    invoke-static {v4, v5, v6, p1, p0}, Lcom/android/common/util/f3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 82
    const-string p1, " isGridRecntViewFillInAnimatorRunning:"

    .line 84
    const-string v4, ", isPanoramaDismissAnimationRunning:"

    .line 86
    invoke-static {p0, v1, p1, v2, v4}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 89
    const-string p1, "GridRecentsViewDelegate"

    .line 91
    invoke-static {p1, p0, v3}, La1/a;->b(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_5d
    return v0
.end method

.method public isPanoramaLayoutVisible()Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getPanoramaLayoutChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lez p0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method

.method public isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 9
    const-string/jumbo v4, "tv"

    .line 12
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v4

    .line 19
    instance-of v5, v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v5, :cond_1a

    move-object v5, v1

    .line 24
    check-cast v5, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    const/4 v7, 0x0

    if-nez v5, :cond_1f

    return v7

    .line 32
    :cond_1f
    sget-boolean v8, Lcom/oplus/quickstep/delegates/touch/GridTouchDelegate;->isHandlingGridTaskViewTouch:Z

    if-eqz v8, :cond_2e

    .line 36
    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMixedHandler()Lcom/android/quickstep/uioverrides/touchcontrollers/SlideFillMixedHandler;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lcom/android/quickstep/uioverrides/touchcontrollers/SlideFillMixedHandler;->isDismissed()Z

    move-result v5

    if-eqz v5, :cond_2e

    return v7

    :cond_2e
    if-eqz v8, :cond_42

    .line 49
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 52
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 58
    iget v5, v0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->taskViewAllowDrawAreaOffsetValue:I

    sub-int v5, v3, v5

    goto :goto_43

    .line 63
    :cond_3e
    iget v5, v0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->taskViewAllowDrawAreaOffsetValue:I

    add-int/2addr v5, v3

    goto :goto_43

    :cond_42
    move v5, v3

    .line 68
    :goto_43
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_4b

    move v9, v7

    goto :goto_4f

    .line 76
    :cond_4b
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v9

    :goto_4f
    if-eqz v8, :cond_53

    const/4 v8, 0x1

    goto :goto_57

    .line 84
    :cond_53
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v8

    .line 88
    :goto_57
    iget-object v11, v4, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-object v12, v1

    .line 91
    check-cast v12, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 93
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v13

    .line 97
    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v12

    .line 101
    invoke-interface {v11, v13, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v11

    float-to-int v11, v11

    .line 106
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v12

    if-eqz v12, :cond_71

    const/4 v12, 0x1

    goto :goto_72

    :cond_71
    const/4 v12, -0x1

    .line 115
    :goto_72
    iget-object v4, v4, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 117
    invoke-interface {v4, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v4

    int-to-float v13, v12

    .line 122
    invoke-virtual {v1, v9, v8}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v14

    mul-float/2addr v14, v13

    int-to-float v13, v4

    .line 128
    invoke-virtual {v1, v9}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v15

    mul-float/2addr v15, v13

    add-float/2addr v15, v14

    int-to-float v13, v2

    cmpl-float v16, v14, v13

    if-ltz v16, :cond_8f

    int-to-float v6, v5

    cmpg-float v6, v14, v6

    if-lez v6, :cond_98

    :cond_8f
    cmpl-float v6, v15, v13

    if-ltz v6, :cond_99

    int-to-float v6, v5

    cmpg-float v6, v15, v6

    if-gtz v6, :cond_99

    :cond_98
    const/4 v7, 0x1

    .line 154
    :cond_99
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v6

    if-eqz v6, :cond_104

    move-object v6, v1

    .line 161
    check-cast v6, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 163
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v13

    if-eqz v13, :cond_ad

    .line 169
    invoke-virtual {v13}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v13

    goto :goto_ae

    :cond_ad
    const/4 v13, 0x0

    .line 175
    :goto_ae
    invoke-virtual {v1, v9, v8}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v1

    .line 179
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v0, "isTaskViewWithinBounds: tv="

    .line 188
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v0, ", taskStart="

    .line 196
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, ", taskEnd="

    .line 204
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, ", isInBounds="

    .line 212
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, " start="

    .line 220
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, ", end="

    .line 225
    const-string v13, ", signal="

    .line 227
    invoke-static {v2, v3, v0, v13, v10}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 230
    const-string v0, ", tv.getOffsetAdjustment="

    .line 232
    const-string v3, "-"

    .line 234
    invoke-static {v1, v12, v0, v3, v10}, Landroidx/constraintlayout/widget/a;->c(FILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 237
    const-string v0, ", tv translation="

    .line 239
    invoke-static {v10, v9, v3, v8, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 242
    const-string v0, ", startAfterOffset="

    .line 244
    const-string v1, ", endAfterOffset="

    .line 246
    invoke-static {v6, v2, v0, v1, v10}, Landroidx/recyclerview/widget/e;->b(FILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "GridRecentsViewDelegate"

    .line 258
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    if-nez v7, :cond_10f

    if-nez v11, :cond_10f

    if-nez v4, :cond_10f

    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 270
    iput-boolean v1, v0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->mReloadVisibleTaskData:Z

    :cond_10f
    return v7
.end method

.method public isTaskViewWithinVisibleRange(Lcom/android/quickstep/views/TaskView;)Z
    .registers 8

    .line 1
    const-string/jumbo v0, "tv"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 11
    iget-object v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 13
    invoke-interface {v0, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getPrimaryTrans(Lcom/oplus/quickstep/views/StackPagedViewEx;)F

    move-result v0

    float-to-int v0, v0

    .line 18
    iget-object v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 20
    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    .line 24
    div-int/lit8 v2, v1, 0x2

    .line 26
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, -0x1

    :goto_22
    mul-int/2addr v0, v3

    sub-int v3, v0, v2

    add-int v4, v0, v1

    add-int/2addr v4, v2

    .line 41
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 47
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPanoramaLayoutChildCount()I

    move-result v2

    if-lez v2, :cond_3a

    .line 53
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getExtraTransForPanoramaLayout()I

    move-result v2

    sub-int/2addr v3, v2

    sub-int/2addr v4, v2

    .line 59
    :cond_3a
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v5, "isTaskViewWithinVisibleRange: screenStart="

    .line 70
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, ", pageOrientedSize="

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "GridRecentsViewDelegate"

    .line 90
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_5c
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result p0

    return p0
.end method

.method public linkPanoramaViewTrans(FF)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_10

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_d

    .line 12
    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 15
    .line 16
    .line 17
    :cond_10
    :goto_10
    return-void
.end method

.method public needScrollToAnywhere()Z
    .registers 1

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public needVibrateWhenScroll()Z
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public notifyPageSwitchListener(I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->mReloadVisibleTaskData:Z

    if-eqz v1, :cond_1f

    .line 9
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 15
    const-string/jumbo v1, "notifyPageSwitchListener(), prevPage="

    .line 18
    const-string v2, ", reload visible."

    .line 20
    const-string v3, "GridRecentsViewDelegate"

    .line 22
    invoke-static {v1, p1, v2, v3}, Lcom/android/common/util/j1;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 p1, 0x3

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->mReloadVisibleTaskData:Z

    :cond_1f
    return-void
.end method

.method public onClearAllAnimationFinished(Ljava/util/Set;Ljava/util/List;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    .line 7
    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseRecentsModel;->hasPanoramaFlexibleTask()Z

    move-result v1

    if-eqz v1, :cond_131

    if-eqz p1, :cond_131

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_131

    .line 23
    :cond_16
    check-cast p1, Ljava/lang/Iterable;

    .line 25
    new-instance p0, Ljava/util/ArrayList;

    const/16 p3, 0xa

    .line 29
    invoke-static {p1, p3}, Lkotlin/collections/s;->f(Ljava/lang/Iterable;I)I

    move-result p3

    .line 33
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move v1, p3

    .line 42
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 46
    const-string v3, ", "

    const/4 v4, 0x0

    if-eqz v2, :cond_92

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v1, 0x1

    if-ltz v1, :cond_8e

    .line 59
    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v2, :cond_43

    .line 63
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    goto :goto_44

    :cond_43
    move-object v6, v4

    :goto_44
    if-eqz v2, :cond_4b

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    goto :goto_4c

    :cond_4b
    move-object v7, v4

    :goto_4c
    if-eqz v2, :cond_5e

    .line 79
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    if-eqz v8, :cond_5e

    .line 85
    iget-object v8, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v8, :cond_5e

    .line 89
    iget v4, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 95
    :cond_5e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v9, "task"

    .line 100
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "="

    .line 108
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " taskId:"

    .line 128
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_29

    .line 143
    :cond_8e
    invoke-static {}, Lkotlin/collections/s;->r()V

    .line 146
    throw v4

    .line 147
    :cond_92
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_129

    .line 157
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 161
    :goto_a0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 167
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 171
    check-cast v1, Ljava/lang/String;

    .line 173
    check-cast p1, Ljava/lang/String;

    .line 175
    invoke-static {p1, v3, v1}, Landroidx/transition/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a0

    .line 180
    :cond_b3
    iget p0, v0, Lcom/android/quickstep/views/RecentsView;->mRemoveTaskId:I

    .line 182
    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 184
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getMRemovingTaskId()I

    move-result v2

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v5, "onClearAllAnimationFinished():"

    .line 193
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    const-string p1, ",mRemoveTaskId:"

    .line 201
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string p0, " ,removingTaskId:"

    .line 209
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string p1, ""

    .line 221
    const-string v2, "GridRecentsViewDelegate"

    .line 223
    invoke-static {p1, v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 227
    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setCreatingLaunchTaskFromClearAllButton(Z)V

    .line 230
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->startHomeFromRecents()V

    .line 233
    invoke-static {p3}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setCreatingLaunchTaskFromClearAllButton(Z)V

    .line 236
    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setLaunchingTaskFromClearAllButton(Z)V

    const-wide/16 p0, 0x3e8

    .line 241
    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->postRemoveAllViewTask(J)V

    .line 244
    sget-object p0, Lcom/android/statistics/RecentStatisticsRecorder;->INSTANCE:Lcom/android/statistics/RecentStatisticsRecorder;

    .line 246
    invoke-virtual {p0}, Lcom/android/statistics/RecentStatisticsRecorder;->getPreTaskPackageName()Ljava/lang/String;

    move-result-object p1

    .line 250
    const-string v1, "3"

    .line 252
    invoke-virtual {p0, v1, p1}, Lcom/android/statistics/RecentStatisticsRecorder;->updateOperateTaskRecord(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_10c

    .line 257
    check-cast p2, Ljava/util/Collection;

    .line 259
    new-array p0, p3, [Lcom/android/systemui/shared/recents/model/Task;

    .line 261
    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 265
    check-cast p0, [Lcom/android/systemui/shared/recents/model/Task;

    if-nez p0, :cond_10e

    .line 269
    :cond_10c
    new-array p0, p3, [Lcom/android/systemui/shared/recents/model/Task;

    .line 271
    :cond_10e
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 275
    array-length p2, p0

    .line 276
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 280
    check-cast p2, [Lcom/android/systemui/shared/recents/model/Task;

    .line 282
    invoke-static {p1, v4, p2}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V

    .line 285
    iget-object p1, v0, Lcom/android/quickstep/views/RecentsView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;

    .line 287
    array-length p2, p0

    .line 288
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 292
    check-cast p0, [Lcom/android/systemui/shared/recents/model/Task;

    .line 294
    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->clearAndRemoveAllTasks([Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    .line 298
    :cond_129
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 300
    const-string p1, "Empty collection can\'t be reduced."

    .line 302
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 305
    throw p0

    .line 306
    :cond_131
    :goto_131
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->onClearAllAnimationFinished(Ljava/util/Set;Ljava/util/List;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method public onGestureAnimationEnd(Z)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 12
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 14
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 16
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v3

    .line 28
    aget v3, v3, v1

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v5, "onGestureAnimationEnd(), updateHandler="

    .line 35
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v5, "; currentGestureEndTarget="

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "; currentState:"

    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v0, "; firstRunningTaskId: "

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v2, "GridRecentsViewDelegate"

    .line 71
    invoke-static {v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_49
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 76
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v2, :cond_6c

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 82
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 90
    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 92
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 98
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    .line 102
    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6c

    const/4 v0, 0x1

    goto :goto_6d

    :cond_6c
    move v0, v1

    .line 110
    :goto_6d
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    if-nez p1, :cond_77

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, v1, v1, p1, v0}, Lcom/oplus/quickstep/delegates/interfaces/IRecentsViewCompat;->updateGridProperties$default(Lcom/oplus/quickstep/delegates/interfaces/IRecentsViewCompat;ZIILjava/lang/Object;)V

    :cond_77
    return-void
.end method

.method public onRecentsViewReset()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->onRecentsViewReset()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public reloadVisibleTask()V
    .registers 1

    .line 1
    return-void
.end method

.method public runOnPageScrollsInitialized(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMOnPageScrollsInitializedCallbacks()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->pageScrollsInitialized()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2c

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p1, p0}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->pageScrollsInitialized(Lcom/android/quickstep/views/RecentsView;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2c

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->onPageOffsetsInitialized()V

    .line 42
    .line 43
    .line 44
    goto :goto_33

    .line 45
    :cond_2c
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->requestLayout()V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLayoutByPageScrollsInited(Z)V

    .line 50
    .line 51
    .line 52
    :goto_33
    return-void
.end method

.method public runOnceOnNonPendingApplyLoadPlan(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    const-string/jumbo v0, "runnable"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 13
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 19
    sget-object v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->Companion:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

    .line 21
    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;->getTopWindowZoom()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 27
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 33
    const-string v0, "GridRecentsViewDelegate"

    .line 35
    const-string/jumbo v1, "runOnceOnNonPendingApplyLoadPlan"

    .line 38
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSwipeUpHandler()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 51
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    .line 55
    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p0, :cond_40

    .line 59
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->runOnceOnNonPendingApplyLoadPlan(Ljava/lang/Runnable;)V

    .line 62
    sget-object p0, Lm9/n;->a:Lm9/n;

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    if-nez p0, :cond_4a

    .line 68
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_4a

    .line 72
    :cond_47
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setEnableFreeScroll(Z)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    .line 9
    const-string v1, "GridRecentsViewDelegate"

    if-eqz v0, :cond_36

    .line 13
    iget-boolean v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 15
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 17
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    move-result v3

    .line 21
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getMNextPage()I

    move-result v4

    .line 25
    const-string/jumbo v5, "setEnableFreeScroll(), "

    .line 28
    const-string v6, " -> "

    .line 30
    const-string v7, ", endTarget="

    .line 32
    invoke-static {v5, v0, v6, p1, v7}, Lcom/android/common/config/f;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, ", cur="

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ", next="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v0, v4, v1}, Lcom/android/common/config/l;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_36
    const/4 v0, 0x1

    if-eqz p1, :cond_43

    .line 58
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 60
    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v2, v3, :cond_40

    goto :goto_43

    .line 65
    :cond_40
    iput-boolean v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    return-void

    .line 68
    :cond_43
    :goto_43
    iget-boolean v2, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 70
    iput-boolean p1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateMinAndMaxScrollX()V

    if-ne v2, p1, :cond_4d

    return-void

    .line 78
    :cond_4d
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getNextPage()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_bb

    .line 87
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isSupportAutoFocusToNextPageInOverviewState()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 93
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoHomeAnimation()Z

    move-result p1

    if-nez p1, :cond_c8

    .line 99
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_6c

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    goto :goto_c8

    .line 109
    :cond_6c
    sget-object p1, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;

    .line 111
    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->isAppSwipeToRecentContinuationRunning()Z

    move-result p1

    if-nez p1, :cond_c8

    .line 117
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageNearestToCenterOfScreen()I

    move-result p1

    .line 121
    invoke-static {p0, p1, v5, v4, v3}, Lcom/oplus/quickstep/views/StackPagedViewEx;->snapToPage$default(Lcom/oplus/quickstep/views/StackPagedViewEx;IIILjava/lang/Object;)Z

    goto :goto_c8

    .line 125
    :cond_7c
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 127
    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimEndingByHomeKey()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 133
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 135
    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isSupportMultiTapMenu()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 141
    iput-boolean v5, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 143
    const-string/jumbo p0, "setEnableFreeScroll(false): recent animation is finishing by home key"

    .line 146
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 150
    :cond_95
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSwipeUpHandler()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 156
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 160
    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p1, :cond_b7

    .line 164
    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 170
    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    .line 172
    invoke-virtual {p1, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p1

    if-ne p1, v0, :cond_b7

    .line 178
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getBeingDraggingByInject()Z

    move-result p1

    if-nez p1, :cond_c8

    .line 184
    :cond_b7
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    goto :goto_c8

    .line 188
    :cond_bb
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p1

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_c8

    .line 198
    invoke-static {p0, v2, v5, v4, v3}, Lcom/oplus/quickstep/views/StackPagedViewEx;->snapToPage$default(Lcom/oplus/quickstep/views/StackPagedViewEx;IIILjava/lang/Object;)Z

    :cond_c8
    :goto_c8
    return-void
.end method

.method public final setPageBeginEndTransitionListener(Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->pageBeginEndTransitionListener:Lcom/oplus/quickstep/layout/grid/IPageBeginEndTransitionListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskViewAllowDrawAreaOffsetValue(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->taskViewAllowDrawAreaOffsetValue:I

    .line 2
    .line 3
    return-void
.end method

.method public showAsGrid()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_21

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 10
    .line 11
    if-eqz v0, :cond_1f

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0, p0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

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

.method public snapToFocusedPage(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->isPanoramaLayoutVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->snapToPageWithPanorama(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-super {p0, p1}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->snapToFocusedPage(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public snapToPageRelativeByKey(Landroid/view/KeyEvent;IZ)Z
    .registers 7

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isPanoramaLayoutVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_9b

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1b

    .line 25
    .line 26
    goto/16 :goto_9b

    .line 27
    .line 28
    :cond_1b
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/4 v1, 0x1

    .line 33
    if-nez p3, :cond_26

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setBgForClearBtn()V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_26
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isClearBtnFocused()Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_2f

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->clearBgForClearBtn()V

    .line 46
    .line 47
    .line 48
    :cond_2f
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getNextPage()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getNextPage()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, p2

    .line 57
    if-ltz v2, :cond_48

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-lt v2, p2, :cond_41

    .line 64
    .line 65
    goto :goto_48

    .line 66
    :cond_41
    new-instance p1, Lcom/android/launcher/e3;

    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    invoke-direct {p1, v2, p2, p0, v0}, Lcom/android/launcher/e3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_7e

    .line 73
    :cond_48
    :goto_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/16 v2, 0x3d

    .line 78
    .line 79
    if-eq p2, v2, :cond_6b

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const/16 v2, 0x15

    .line 86
    .line 87
    if-ne p2, v2, :cond_5c

    .line 88
    .line 89
    iget-boolean p2, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 90
    .line 91
    if-eqz p2, :cond_6b

    .line 92
    .line 93
    :cond_5c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const/16 v2, 0x16

    .line 98
    .line 99
    if-ne p2, v2, :cond_69

    .line 100
    .line 101
    iget-boolean p2, v0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 102
    .line 103
    if-eqz p2, :cond_69

    .line 104
    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    const/4 p1, 0x0

    .line 107
    goto :goto_7e

    .line 108
    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_78

    .line 113
    .line 114
    const-string p2, "GridRecentsViewDelegate"

    .line 115
    .line 116
    const-string v2, "RecentsView already snapToFinal page, change focus to PanoramaLayout"

    .line 117
    .line 118
    invoke-static {p2, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_78
    new-instance p2, Lcom/oplus/quickstep/delegates/a;

    .line 122
    .line 123
    invoke-direct {p2, p0, v0, p1, p3}, Lcom/oplus/quickstep/delegates/a;-><init>(Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/KeyEvent;I)V

    .line 124
    .line 125
    .line 126
    move-object p1, p2

    .line 127
    :goto_7e
    if-eqz p1, :cond_9a

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMFocusRequestDelayHandler()Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_91

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMFocusRequestDelayHandler()Landroid/os/Handler;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    :cond_91
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMFocusRequestDelayHandler()Landroid/os/Handler;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-wide/16 p2, 0x64

    .line 151
    .line 152
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    :cond_9a
    return v1

    .line 156
    :cond_9b
    :goto_9b
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->snapToPageRelativeByKey(Landroid/view/KeyEvent;IZ)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    return p0
.end method

.method public snapToPageWithPanorama(IIIZ)Z
    .registers 10

    .line 2
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->isPanoramaLayoutVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    invoke-super {p0, p1, p3, p4}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->snapToPageWithPanorama(IIZ)Z

    move-result p0

    return p0

    .line 4
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->validateNewPage(I)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getPrimaryTrans(Lcom/oplus/quickstep/views/StackPagedViewEx;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v0, v1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->extraPanoramaOffset(II)I

    move-result p2

    .line 9
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 10
    const-string/jumbo v2, "snapToPageWithPanorama, whichPage = "

    const-string v3, " newLoc="

    const-string v4, ", delta="

    .line 11
    invoke-static {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hiddenOffset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v2, "GridRecentsViewDelegate"

    invoke-static {v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    add-int/2addr v1, p2

    .line 14
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageWithPanorama(IIZ)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->snapToPageWithPanorama(IIIZ)Z

    move-result p0

    return p0
.end method

.method public startHomeFromRecents()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 7
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v3, "startHomeFromRecents(), resetState:"

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, ""

    .line 38
    const-string v4, "GridRecentsViewDelegate"

    .line 40
    invoke-static {v3, v4, v2}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2a
    new-instance v2, Lcom/android/launcher/folder/recommend/view/c;

    const/4 v3, 0x6

    .line 46
    invoke-direct {v2, p0, v3}, Lcom/android/launcher/folder/recommend/view/c;-><init>(Ljava/lang/Object;I)V

    .line 49
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPanoramaLayoutChildCount()I

    move-result v0

    if-lez v0, :cond_3f

    .line 55
    instance-of v0, v1, Lcom/android/launcher3/states/OPlusBaseState;

    if-eqz v0, :cond_3f

    .line 59
    check-cast v1, Lcom/android/launcher3/states/OPlusBaseState;

    .line 61
    invoke-static {v1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    .line 64
    :cond_3f
    invoke-direct {p0}, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->getMPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusPanoramaLayout;->launchPanoramaTasksAnimatedIfNeed(Ljava/lang/Runnable;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4d

    goto :goto_50

    .line 78
    :cond_4d
    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/view/c;->run()V

    :goto_50
    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->setCurrentPageNumber(I)V

    const/4 p1, -0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->setMNextPage(I)V

    .line 16
    const-string/jumbo p0, "updateCurrentPage: mCurrentPage="

    .line 19
    const-string p1, "GridRecentsViewDelegate"

    .line 21
    invoke-static {v0, p0, p1}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentPageScroll()V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    iget-object v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    .line 11
    const-string v1, "GridRecentsViewDelegate"

    if-nez v0, :cond_15

    .line 15
    const-string/jumbo p0, "updateCurrentPageScroll(), scrolling, return."

    .line 18
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_27

    .line 29
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    move-result v3

    if-ge v0, v3, :cond_27

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    goto :goto_28

    :cond_27
    move v3, v2

    .line 41
    :goto_28
    iget-object v4, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 43
    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v4

    sub-int v4, v3, v4

    .line 49
    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mIsDismissAnimEndFirstLayoutForPanorama:Z

    if-eqz v5, :cond_48

    .line 53
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getPageCount()I

    move-result v5

    if-lez v5, :cond_48

    .line 59
    iget-object v3, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 61
    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v3

    .line 65
    iget v4, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mMaxScroll:I

    if-le v3, v4, :cond_45

    move v3, v4

    .line 70
    :cond_45
    iput-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsDismissAnimEndFirstLayoutForPanorama:Z

    move v4, v3

    .line 73
    :cond_48
    iget-object v5, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 75
    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v5

    .line 79
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 85
    iget-boolean v6, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mFreeScroll:Z

    .line 87
    iget-object v7, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 89
    invoke-virtual {v7}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v7

    .line 93
    iget v8, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mMaxScroll:I

    const/16 v9, 0xa

    .line 97
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    .line 101
    const-string/jumbo v10, "updateCurrentPageScroll(), freescroll="

    .line 104
    const-string v11, ", curScroll="

    .line 106
    const-string v12, ", curPage="

    .line 108
    invoke-static {v10, v11, v12, v5, v6}, Lcom/android/common/util/f3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 112
    const-string v6, ", newPosition="

    .line 114
    const-string v10, ", targetPosition="

    .line 116
    invoke-static {v0, v3, v6, v10, v5}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 119
    const-string v6, ", currX="

    .line 121
    const-string v10, ", currentPage="

    .line 123
    invoke-static {v4, v7, v6, v10, v5}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 126
    const-string v6, ", mMaxScroll: "

    .line 128
    const-string v7, ", callers: "

    .line 130
    invoke-static {v0, v8, v6, v7, v5}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 133
    invoke-static {v9, v1, v5}, Lcom/android/common/util/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 136
    :cond_87
    iget-object v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 138
    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->STACK_CONTAINER_TRANS_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    int-to-float v3, v3

    .line 141
    invoke-interface {v0, p0, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 144
    iget-object v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 146
    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v1

    .line 150
    invoke-virtual {v0, v1, v2, v4, v2}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIII)V

    .line 153
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    const/4 v0, 0x3

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    return-void
.end method

.method public updateCurveProperties()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mInsets:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getCurveProperties(Landroid/view/View;Landroid/graphics/Rect;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-boolean v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 21
    .line 22
    if-eqz v1, :cond_21

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-float p0, p0

    .line 33
    goto :goto_2d

    .line 34
    :cond_21
    iget v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mMaxScroll:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    sub-int/2addr v1, p0

    .line 45
    int-to-float p0, v1

    .line 46
    :goto_2d
    invoke-virtual {v0, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->setScrollFromEdge(F)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public updateGridProperties(ZI)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->updateGridProperties(Lcom/android/quickstep/views/RecentsView;ZI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updatePageOffsets()V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    .line 6
    .line 7
    iget-object v1, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-boolean v2, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mIsRtl:Z

    .line 22
    .line 23
    if-eqz v2, :cond_19

    .line 24
    .line 25
    neg-int v1, v1

    .line 26
    :cond_19
    int-to-float v1, v1

    .line 27
    mul-float/2addr v1, v0

    .line 28
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, -0x1

    .line 34
    if-eq v2, v4, :cond_2d

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    .line 37
    .line 38
    if-nez v2, :cond_28

    .line 39
    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    :goto_2d
    move-object v2, v3

    .line 47
    :goto_2e
    if-eqz v2, :cond_3d

    .line 48
    .line 49
    sget-object v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isAppToHomeSwipeToRecentTogetherRunning()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_39

    .line 56
    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v5, 0x0

    .line 67
    :goto_42
    if-ge v5, v2, :cond_85

    .line 68
    .line 69
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    instance-of v7, v6, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 74
    .line 75
    if-eqz v7, :cond_4f

    .line 76
    .line 77
    check-cast v6, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 78
    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move-object v6, v3

    .line 81
    :goto_50
    if-nez v6, :cond_53

    .line 82
    .line 83
    goto :goto_82

    .line 84
    :cond_53
    const/high16 v7, 0x3f800000    # 1.0f

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Lcom/android/quickstep/views/TaskView;->setStackMenuBtnAlphaForGrid(F)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    const/4 v9, 0x0

    .line 94
    if-nez v8, :cond_68

    .line 95
    .line 96
    cmpg-float v8, v0, v9

    .line 97
    .line 98
    if-nez v8, :cond_64

    .line 99
    .line 100
    goto :goto_68

    .line 101
    :cond_64
    cmpg-float v7, v0, v7

    .line 102
    .line 103
    if-nez v7, :cond_82

    .line 104
    .line 105
    :cond_68
    :goto_68
    invoke-virtual {v6}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_6f

    .line 110
    .line 111
    goto :goto_82

    .line 112
    :cond_6f
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-ne v5, v4, :cond_76

    .line 117
    .line 118
    goto :goto_7b

    .line 119
    :cond_76
    if-ge v5, v4, :cond_7a

    .line 120
    .line 121
    neg-float v9, v1

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v9, v1

    .line 124
    :goto_7b
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v7, v6, v8}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 129
    .line 130
    .line 131
    :cond_82
    :goto_82
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_42

    .line 134
    :cond_85
    return-void
.end method

.method public updateSizeAndPadding()V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    .line 5
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 11
    const-string v1, "getDeviceProfile(...)"

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 18
    const-string/jumbo v2, "mTempRect"

    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskSize(Landroid/graphics/Rect;)V

    .line 27
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 33
    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    .line 35
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 41
    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    .line 43
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->overview()Lcom/android/launcher/layoutparam/OverviewParam;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/android/launcher/layoutparam/OverviewParam;->getOverviewTaskThumbnailTopMarginPx()I

    move-result v3

    sub-int/2addr v2, v3

    .line 56
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 58
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 60
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 64
    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->mOverviewParam:Lcom/android/launcher/layoutparam/OverviewParam;

    .line 66
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/OverviewParam;->refreshParam()V

    .line 69
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 71
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 73
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 82
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 84
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 86
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 92
    iget-object v5, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 94
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    .line 97
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 99
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 101
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 103
    iget-object v3, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mInsets:Landroid/graphics/Rect;

    .line 105
    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    .line 108
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/android/launcher/layoutparam/ConfigParam;->getWidthPx()I

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mInsets:Landroid/graphics/Rect;

    .line 118
    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 121
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 123
    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/android/launcher/layoutparam/ConfigParam;->getHeightPx()I

    move-result v4

    .line 134
    iget-object v5, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mInsets:Landroid/graphics/Rect;

    .line 136
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 139
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 141
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 144
    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 153
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->overview()Lcom/android/launcher/layoutparam/OverviewParam;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/android/launcher/layoutparam/OverviewParam;->getOverviewTaskThumbnailTopMarginPx()I

    move-result v2

    add-int/2addr v2, v1

    .line 162
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->overview()Lcom/android/launcher/layoutparam/OverviewParam;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/OverviewParam;->getOverviewRowSpacing()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 172
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    .line 174
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 180
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 182
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 184
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 186
    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 204
    const-string/jumbo v8, "updateSizeAndPadding(), task="

    .line 207
    const-string v9, ", grid="

    .line 209
    const-string v10, ", gridTask="

    .line 211
    invoke-static {v8, v0, v9, v1, v10}, Lcom/android/launcher/batchdrag/h;->c(Ljava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", rowDiff="

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ", padding["

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", "

    .line 233
    invoke-static {v4, v5, v1, v1, v0}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 236
    const-string v2, "]"

    .line 238
    invoke-static {v6, v7, v1, v2, v0}, Lcom/android/launcher3/model/y5;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "GridRecentsViewDelegate"

    .line 244
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_f6
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    return-void
.end method

.method public updateTaskSize(Z)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/delegates/OplusRecentsViewDelegate;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    const/4 v2, 0x0

    .line 10
    const-string v3, "GridRecentsViewDelegate"

    if-eqz v1, :cond_23

    .line 14
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v1, :cond_1c

    .line 18
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 24
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    .line 30
    :goto_1d
    const-string/jumbo v4, "updateTaskSize(), deviceProfile = "

    .line 33
    invoke-static {v4, v1, v3}, Ld1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_23
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_50

    .line 44
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_50

    .line 52
    iget v1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->lastComputedGridTaskSizeIsZeroCount:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_50

    .line 57
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 63
    iget p1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->lastComputedGridTaskSizeIsZeroCount:I

    .line 65
    const-string/jumbo v1, "updateTaskSize(), lastComputedGridTaskSizeIsZeroCount = "

    .line 68
    invoke-static {p1, v1, v3}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_46
    iget p1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->lastComputedGridTaskSizeIsZeroCount:I

    add-int/lit8 p1, p1, 0x1

    .line 75
    iput p1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->lastComputedGridTaskSizeIsZeroCount:I

    .line 77
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    return-void

    :cond_50
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/oplus/quickstep/delegates/GridRecentsViewDelegate;->lastComputedGridTaskSizeIsZeroCount:I

    .line 84
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMLayout()Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    move-result-object p0

    .line 88
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    .line 90
    const-string/jumbo v4, "mLastComputedTaskSize"

    .line 93
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 98
    const-string/jumbo v5, "mLastComputedGridSize"

    .line 101
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 106
    const-string/jumbo v6, "mLastComputedGridTaskSize"

    .line 109
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->updateGridTaskSize(Lcom/android/quickstep/views/RecentsView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p0, 0x2

    .line 116
    invoke-static {v0, p1, v1, p0, v2}, Lcom/oplus/quickstep/delegates/interfaces/IRecentsViewCompat;->updateGridProperties$default(Lcom/oplus/quickstep/delegates/interfaces/IRecentsViewCompat;ZIILjava/lang/Object;)V

    return-void
.end method
