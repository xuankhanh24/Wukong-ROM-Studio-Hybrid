.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;
.super Ljava/lang/Object;
.source "SwipeToRecentAnimationHelper.kt"

# interfaces
.implements Lcom/android/quickstep/views/OplusRecentsViewImpl$SwipeToRecentAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00d7\u00012\u00020\u0001:\u0002\u00d7\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J-\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001d\u0010!\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u001a\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010&\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008&\u0010%J\r\u0010\'\u001a\u00020\t\u00a2\u0006\u0004\u0008\'\u0010\u000bJ\r\u0010(\u001a\u00020\t\u00a2\u0006\u0004\u0008(\u0010\u000bJ\r\u0010)\u001a\u00020\t\u00a2\u0006\u0004\u0008)\u0010\u000bJ\r\u0010*\u001a\u00020\t\u00a2\u0006\u0004\u0008*\u0010\u000bJ\r\u0010+\u001a\u00020\t\u00a2\u0006\u0004\u0008+\u0010\u000bJ\r\u0010,\u001a\u00020\u0010\u00a2\u0006\u0004\u0008,\u0010\u0019J\r\u0010-\u001a\u00020\t\u00a2\u0006\u0004\u0008-\u0010\u000bJ\u0015\u0010/\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0010\u00a2\u0006\u0004\u0008/\u0010\u0013J%\u00104\u001a\u0002032\u0006\u00100\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\u001a2\u0006\u00102\u001a\u00020\u0014\u00a2\u0006\u0004\u00084\u00105J\u0015\u00107\u001a\u00020\t2\u0006\u00106\u001a\u00020\u001a\u00a2\u0006\u0004\u00087\u0010%J!\u0010;\u001a\u00020\t2\u0006\u00108\u001a\u00020\u00102\u0008\u0010:\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\r\u0010=\u001a\u00020\u0010\u00a2\u0006\u0004\u0008=\u0010\u0019J\r\u0010>\u001a\u00020\t\u00a2\u0006\u0004\u0008>\u0010\u000bJ\r\u0010?\u001a\u00020\t\u00a2\u0006\u0004\u0008?\u0010\u000bJ\r\u0010@\u001a\u00020\t\u00a2\u0006\u0004\u0008@\u0010\u000bJ\u000f\u0010A\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008A\u0010\u000bJ\u000f\u0010B\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008B\u0010\u000bJ\r\u0010C\u001a\u00020\t\u00a2\u0006\u0004\u0008C\u0010\u000bJ\u000f\u0010D\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008D\u0010\u000bJ\u000f\u0010E\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008E\u0010\u000bJ\r\u0010F\u001a\u00020\u0010\u00a2\u0006\u0004\u0008F\u0010\u0019J\r\u0010G\u001a\u00020\u0010\u00a2\u0006\u0004\u0008G\u0010\u0019J\r\u0010H\u001a\u00020\u0010\u00a2\u0006\u0004\u0008H\u0010\u0019J\r\u0010I\u001a\u00020\t\u00a2\u0006\u0004\u0008I\u0010\u000bJ\r\u0010J\u001a\u00020\t\u00a2\u0006\u0004\u0008J\u0010\u000bJ\r\u0010K\u001a\u00020\t\u00a2\u0006\u0004\u0008K\u0010\u000bJ\r\u0010L\u001a\u00020\t\u00a2\u0006\u0004\u0008L\u0010\u000bJ\r\u0010M\u001a\u00020\u0010\u00a2\u0006\u0004\u0008M\u0010\u0019J\r\u0010N\u001a\u00020\t\u00a2\u0006\u0004\u0008N\u0010\u000bJ\r\u0010O\u001a\u00020\t\u00a2\u0006\u0004\u0008O\u0010\u000bJ\u000f\u0010P\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008P\u0010\u000bJ\u0017\u0010R\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008R\u0010%J\u0017\u0010S\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008S\u0010%J\u000f\u0010T\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008T\u0010\u0019J\u000f\u0010U\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008U\u0010\u000bJ\u000f\u0010V\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008V\u0010\u000bJ\u0017\u0010X\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008X\u0010\u0013J/\u0010]\u001a\u00020\t2\u001e\u0010\\\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010Z\u0018\u00010Yj\u000c\u0012\u0006\u0012\u0004\u0018\u00010Z\u0018\u0001`[H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008_\u0010\u000bJ\u000f\u0010`\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008`\u0010\u000bJ\u000f\u0010a\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008a\u0010\u000bJ\u0017\u0010c\u001a\u00020\u001a2\u0006\u0010b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008e\u0010fJ\u001f\u0010i\u001a\u00020h2\u0006\u0010b\u001a\u00020\u001a2\u0006\u0010g\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008i\u0010jJ\u000f\u0010k\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008k\u0010\u0019J\u0017\u0010n\u001a\u00020m2\u0006\u0010l\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008n\u0010oJ\u000f\u0010p\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008p\u0010\u000bJ\u000f\u0010q\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008q\u0010\u000bJ\u0017\u0010s\u001a\u00020\t2\u0006\u0010r\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008s\u0010\u0013J\u000f\u0010t\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008t\u0010fJ\u0017\u0010u\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u000f\u0010w\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008w\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010xR\u0016\u0010z\u001a\u00020y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0014\u0010|\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u001d\u0010\u007f\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030~8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u001b\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001b\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0082\u0001R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0086\u0001R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0086\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u0082\u0001R\u001b\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u0082\u0001R\"\u0010\u008f\u0001\u001a\r \u008e\u0001*\u0005\u0018\u00010\u008d\u00010\u008d\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u0091\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u001a\u0010\u0095\u0001\u001a\u00030\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u0097\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u0099\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u0098\u0001R\u0019\u0010\u009a\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u0098\u0001R\u0019\u0010\u009b\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u0098\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u0098\u0001R\u0017\u0010\u009d\u0001\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u0098\u0001R\u0019\u0010\u009e\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u0019\u0010\u00a0\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u009f\u0001R\u0019\u0010\u00a1\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u009f\u0001R\u0019\u0010\u00a2\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u009f\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0017\u0010\u00a5\u0001\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a4\u0001R\u0017\u0010\u00a6\u0001\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u0098\u0001R\u0019\u0010\u00a7\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u008a\u0001R\u0017\u0010\u00a8\u0001\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u008a\u0001R\u0019\u0010\u00a9\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u008a\u0001R\u0019\u0010\u00aa\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u008a\u0001R\u0019\u0010\u00ab\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u008a\u0001R\'\u0010\u00ac\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00ac\u0001\u0010\u008a\u0001\u001a\u0005\u0008\u00ad\u0001\u0010\u0019\"\u0005\u0008\u00ae\u0001\u0010\u0013R\u0019\u0010\u00af\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u008a\u0001R\u0019\u0010\u00b0\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u008a\u0001R\u0019\u0010\u00b1\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u009f\u0001R\u0018\u0010\u00b3\u0001\u001a\u00030\u00b2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\'\u0010\u00b5\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00b5\u0001\u0010\u008a\u0001\u001a\u0005\u0008\u00b5\u0001\u0010\u0019\"\u0005\u0008\u00b6\u0001\u0010\u0013R\'\u0010\u00b7\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00b7\u0001\u0010\u008a\u0001\u001a\u0005\u0008\u00b7\u0001\u0010\u0019\"\u0005\u0008\u00b8\u0001\u0010\u0013R*\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001\"\u0005\u0008\u00bd\u0001\u0010\u000fR\u0018\u0010\u00bf\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R,\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u00c1\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\"\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\'\u0010\u00c8\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00c8\u0001\u0010\u008a\u0001\u001a\u0005\u0008\u00c9\u0001\u0010\u0019\"\u0005\u0008\u00ca\u0001\u0010\u0013R\u001b\u0010\u00cb\u0001\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u0018\u0010\u00cd\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cd\u0001\u0010\u00c0\u0001R\u0018\u0010\u00ce\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u00c0\u0001R\u0018\u0010\u00cf\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00c0\u0001R\u0018\u0010\u00d0\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u00c0\u0001R\u0018\u0010\u00d2\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001R\u0018\u0010\u00d4\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u00d3\u0001R\u0018\u0010\u00d5\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d5\u0001\u0010\u00d3\u0001R\u0018\u0010\u00d6\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d6\u0001\u0010\u00d3\u0001\u00a8\u0006\u00d8\u0001"
    }
    d2 = {
        "Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl$SwipeToRecentAnimationController;",
        "Lcom/android/launcher/Launcher;",
        "mLauncher",
        "<init>",
        "(Lcom/android/launcher/Launcher;)V",
        "Lcom/android/quickstep/util/animation/SpringAnimation;",
        "getGridProgressAnimation",
        "()Lcom/android/quickstep/util/animation/SpringAnimation;",
        "Lm9/n;",
        "initState",
        "()V",
        "Lcom/oplus/quickstep/touch/OplusSwipeDetector;",
        "swipeDetector",
        "setSwipeDetector",
        "(Lcom/oplus/quickstep/touch/OplusSwipeDetector;)V",
        "",
        "paused",
        "updatePaused",
        "(Z)V",
        "Landroid/graphics/PointF;",
        "lastDisplacement",
        "initDragParam",
        "(Landroid/graphics/PointF;)Z",
        "isSwipeToRecentWithEmptyTask",
        "()Z",
        "",
        "xDisplacement",
        "yDisplacement",
        "ySpeed",
        "xSpeed",
        "updateSwipeDirection",
        "(FFFF)V",
        "calculateScaleAndAnimate",
        "(FF)V",
        "distance",
        "onDrag",
        "(F)V",
        "calculateTranslateAndAnimate",
        "updateStiffnessWhenFling",
        "goHomeAnimation",
        "showToggleBarLayoutBottomDialog",
        "endGoHomeRecentSpringXAnimation",
        "goOverviewAnimation",
        "isDragingStateOrNotGridProgressToOverview",
        "goSwitchAppAnimation",
        "visible",
        "updateRecentViewState",
        "velocityX",
        "velocityY",
        "swipeVendor",
        "",
        "checkSwitchMode",
        "(FFLandroid/graphics/PointF;)I",
        "value",
        "setWallPaperBlurStart",
        "updateStartBlur",
        "",
        "referrer",
        "onGoHome",
        "(ZLjava/lang/String;)V",
        "isOnGoHomeRunning",
        "goHomeStartAppIconsExitAnima",
        "goHomeStartClearButtonExitAnima",
        "removeRecentEndListener",
        "cancelAnimationIfNeed",
        "cancelAllAnimationIfNeed",
        "cancelRecentAnimationIfNeed",
        "endAllAnimationIfNeed",
        "updateWhenResetTaskVisuals",
        "isAnimatingToOverView",
        "isGridProgressToOverView",
        "isAnimatingRunning",
        "autoExitOverview",
        "endAutoExitOverview",
        "clearState",
        "checkRecentsViewAlpha",
        "goHomeAnimalCheck",
        "clearHandFollowFlag",
        "resetPanoramaLayoutAlpha",
        "displayWhenGoingOverview",
        "progress",
        "updateBackground",
        "animateBackgroundScaleSpring",
        "isOverviewStateExitAnimRunning",
        "createBlurAndDragLayerAlphaAnim",
        "resetHolders",
        "toRecents",
        "updateAnimationParamsIfNeed",
        "Ljava/util/ArrayList;",
        "Lcom/android/quickstep/util/GroupTask;",
        "Lkotlin/collections/ArrayList;",
        "tasks",
        "updateTaskInfo",
        "(Ljava/util/ArrayList;)V",
        "initSpring",
        "checkCurrentPage",
        "cancelStateAnimationIfNeed",
        "distanceY",
        "computeCardScale",
        "(F)F",
        "reCorrectMaxDistance",
        "()F",
        "speedY",
        "",
        "computeCardScaleWithSpeed",
        "(FF)[F",
        "isAllowSwitchToAppByTiltAngle",
        "toAlpha",
        "Landroid/animation/AnimatorSet;",
        "startRecentAlphaAnimator",
        "(F)Landroid/animation/AnimatorSet;",
        "playControlEnterAnimation",
        "cancelControlEnterAnimation",
        "toOverview",
        "doBackGroundAnim",
        "calculateWallpaperBlurStart",
        "isBlurKeyValue",
        "(F)Z",
        "isToHomeGestureCommonAnimRunning",
        "Lcom/android/launcher/Launcher;",
        "",
        "gpuBoostFd",
        "J",
        "TAG",
        "Ljava/lang/String;",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl;",
        "mRecentsView",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl;",
        "mRecentSpringX",
        "Lcom/android/quickstep/util/animation/SpringAnimation;",
        "mRecentSpringScale",
        "Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;",
        "mDragLayerScaleAnim",
        "Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;",
        "mDragLayerAlphaAnim",
        "mWallpaperBlurAnim",
        "mRecreateAlphaAndBlurAnim",
        "Z",
        "mOverScrimAnim",
        "mGridProgressAnimation",
        "Lcom/android/launcher3/OplusDragLayer;",
        "kotlin.jvm.PlatformType",
        "mDragLayer",
        "Lcom/android/launcher3/OplusDragLayer;",
        "Lcom/android/launcher3/uioverrides/states/OplusDepthController;",
        "mDepthController",
        "Lcom/android/launcher3/uioverrides/states/OplusDepthController;",
        "Lcom/oplus/quickstep/views/OplusClearAllPanelView;",
        "mClearButton",
        "Lcom/oplus/quickstep/views/OplusClearAllPanelView;",
        "mWallPaperBlurStart",
        "F",
        "wallpaperBlurEndValue",
        "draglayerAlphaStart",
        "draglayerAlphaEnd",
        "mFullScreenTaskScale",
        "mQuiteRecnetSpeedY",
        "mRecentHeight",
        "I",
        "mRecentWidth",
        "mSwipeDirectionY",
        "mSwipeDirectionX",
        "mLastDirectionPointF",
        "Landroid/graphics/PointF;",
        "mGoPeekPoint",
        "mDirectionChangeFraction",
        "mDragTaskInitSucceed",
        "mIsRTL",
        "mHasRecentTask",
        "mIsOverlayShow",
        "mIsGoingHome",
        "mChangeQuickSwitch",
        "getMChangeQuickSwitch",
        "setMChangeQuickSwitch",
        "mIsDockViewEnterAnimationStarted",
        "mIsClearViewEnterAnimationStarted",
        "mRequestLoadId",
        "Lcom/android/launcher3/graphics/OplusOverviewScrim;",
        "overviewScrim",
        "Lcom/android/launcher3/graphics/OplusOverviewScrim;",
        "isGoHomeAnimRunning",
        "setGoHomeAnimRunning",
        "isAutoExitOverviewRunning",
        "setAutoExitOverviewRunning",
        "mSwipeDetector",
        "Lcom/oplus/quickstep/touch/OplusSwipeDetector;",
        "getMSwipeDetector",
        "()Lcom/oplus/quickstep/touch/OplusSwipeDetector;",
        "setMSwipeDetector",
        "Lcom/android/quickstep/util/animation/FloatValueHolder;",
        "recentTranXHolder",
        "Lcom/android/quickstep/util/animation/FloatValueHolder;",
        "",
        "approximateLineTiltAngleInActionUp",
        "Ljava/lang/Double;",
        "getApproximateLineTiltAngleInActionUp",
        "()Ljava/lang/Double;",
        "setApproximateLineTiltAngleInActionUp",
        "(Ljava/lang/Double;)V",
        "mIsGridAnimationStarted",
        "getMIsGridAnimationStarted",
        "setMIsGridAnimationStarted",
        "mRecentAlphaAnimator",
        "Landroid/animation/AnimatorSet;",
        "gridProgressHolder",
        "recentScaleHolder",
        "backgroundScaleHolder",
        "scrimHolder",
        "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
        "goOverViewEndListener",
        "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
        "autoExitOverviewEndListener",
        "goQuickSwitchEndListener",
        "goHomeEndListener",
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
.field private static final BACKGROUND_ALPHA_ANIM_TO_HOME_VALUE:F = 1.0f

.field private static final BACKGROUND_ALPHA_ANIM_TO_RECENTS_VALUE:F = 0.0f

.field private static final BACKGROUND_SCALE_SIZE:F = 0.85f

.field private static final COMPUTE_MIN_FRACTION:F = 0.001f

.field public static final Companion:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

.field private static final DEFAULT_DRAG_STIFFNESS:F = 600.0f

.field private static final DEFAULT_FLING_STIFFNESS:F = 200.0f

.field private static final DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

.field private static final FLAG_SWITCH_TO_APP:I = 0x1

.field private static final FLAG_SWITCH_TO_HOME:I = 0x0

.field private static final FLAG_SWITCH_TO_OVERVIEW:I = 0x2

.field private static final GO_OTHER_ACTION_SPEED_Y_BOTTOM:F = 0.3f

.field private static final GO_OVERVIEW_Y_THRESHOLD:F = -0.1f

.field private static final GO_QUICK_SWITCH_TRANSX_FRACTION:F = 0.15f

.field private static final GRID_ANIM_INIT_DAMPINGRATIO:F = 1.15f

.field private static final GRID_ANIM_INIT_STIFFNESS:F = 280.0f

.field private static final LIGHT_OVERVIEW_STIFFNESS:F = 987.0f

.field private static final MAX_SCROLL_FRACTION:F = 0.8f

.field private static final OFFSET_DEFAULT:F = 1.0f

.field private static final OFFSET_MINI:F = 0.5f

.field private static final OFFSET_MOST:F = 1.2f

.field private static final OOS_ENHANCE_FLING_STIFFNESS:F = 400.0f

.field private static final OOS_MID_FLING_STIFFNESS:F = 300.0f

.field private static final OPEN_SF_TIMEOUT:I = 0x3e8

.field private static final SPRING_FINAL_POSITION_TABLET:F = 1.5f

.field private static final SPRING_MINI_CHANGE_DEFAULT:F = 0.01f

.field private static final SPRING_MINI_CHANGE_SMALL_X:F = 1.0E-5f

.field private static final SPRING_MINI_CHANGE_SMALL_Y:F = 1.0E-5f

.field private static final START_ANIM_THRESHOLD:F = 0.3f

.field private static final SWIPE_DOWN_DIRECTION:I = 0x1

.field private static final SWIPE_LEFT_DIRECTION:I = 0x3

.field private static final SWIPE_RIGHT_DIRECTION:I = 0x4

.field private static final SWIPE_UP_DIRECTION:I = 0x0

.field private static final SWITCH_TO_APP_TILT_ANGLE_MAX_THRESHOLD:D = 110.0

.field private static final SWITCH_TO_APP_TILT_ANGLE_MIN_THRESHOLD:D = 90.0

.field private static final S_TO_MS:I = 0x3e8

.field private static final TASK_CARD_FULL_SCREEN_SCALE:F = 1.73f

.field private static final TASK_CARD_MAX_SCALE:F = 1.58f

.field private static final TASK_CARD_MINI_SCALE:F = 0.95f

.field private static final TASK_PEEK_OFFSET:F = 0.5f

.field private static final TRIGGER_APP_TO_HOME_END_RECENT_PAGE_OFFSET_THRESHOLD:F = 0.66f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private approximateLineTiltAngleInActionUp:Ljava/lang/Double;

.field private final autoExitOverviewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

.field private final backgroundScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

.field private draglayerAlphaEnd:F

.field private draglayerAlphaStart:F

.field private final goHomeEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

.field private final goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

.field private final goQuickSwitchEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

.field private gpuBoostFd:J

.field private final gridProgressHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

.field private isAutoExitOverviewRunning:Z

.field private isGoHomeAnimRunning:Z

.field private mChangeQuickSwitch:Z

.field private mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

.field private final mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private final mDirectionChangeFraction:F

.field private final mDragLayer:Lcom/android/launcher3/OplusDragLayer;

.field private mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

.field private mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

.field private mDragTaskInitSucceed:Z

.field private mFullScreenTaskScale:F

.field private final mGoPeekPoint:Landroid/graphics/PointF;

.field private mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private mHasRecentTask:Z

.field private mIsClearViewEnterAnimationStarted:Z

.field private mIsDockViewEnterAnimationStarted:Z

.field private mIsGoingHome:Z

.field private mIsGridAnimationStarted:Z

.field private mIsOverlayShow:Z

.field private final mIsRTL:Z

.field private mLastDirectionPointF:Landroid/graphics/PointF;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private final mQuiteRecnetSpeedY:F

.field private mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

.field private mRecentHeight:I

.field private mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private mRecentWidth:I

.field private final mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mRecreateAlphaAndBlurAnim:Z

.field private mRequestLoadId:I

.field private mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

.field private mSwipeDirectionX:I

.field private mSwipeDirectionY:I

.field private mWallPaperBlurStart:F

.field private mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

.field private final overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

.field private final recentScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

.field private final recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

.field private final scrimHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

.field private wallpaperBlurEndValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->Companion:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 10
    .line 11
    const v1, 0x3f75c28f    # 0.96f

    .line 12
    .line 13
    .line 14
    const v2, 0x3f70a3d7    # 0.94f

    .line 15
    .line 16
    .line 17
    const v3, 0x3ed1eb85    # 0.41f

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 5

    .line 1
    const-string/jumbo v0, "mLauncher"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gpuBoostFd:J

    .line 16
    invoke-static {p0}, Lcom/oplus/basecommon/util/FunctionsKt;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    .line 26
    const-string v1, "getOverviewPanel(...)"

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 33
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 35
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 41
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    .line 45
    const-string v2, "getDepthController(...)"

    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    const v1, 0x3fdd70a4    # 1.73f

    .line 59
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    .line 61
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    .line 64
    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 69
    new-instance v1, Landroid/graphics/PointF;

    .line 71
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    .line 79
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    .line 89
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;

    .line 91
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 94
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 96
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$gridProgressHolder$1;

    .line 98
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$gridProgressHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 101
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 103
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentScaleHolder$1;

    .line 105
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentScaleHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 108
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 110
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundScaleHolder$1;

    .line 112
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundScaleHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 115
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 117
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$scrimHolder$1;

    .line 119
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$scrimHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 122
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->scrimHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 124
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;

    .line 126
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 129
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 131
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$autoExitOverviewEndListener$1;

    .line 133
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$autoExitOverviewEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 136
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->autoExitOverviewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 138
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goQuickSwitchEndListener$1;

    .line 140
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goQuickSwitchEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 143
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 145
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;

    .line 147
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 150
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 152
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v1

    .line 156
    const-string v2, "getClearAllButton(...)"

    .line 158
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 167
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 173
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    .line 175
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    .line 183
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsRTL:Z

    .line 185
    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSwipeToRecentAnimationController(Lcom/android/quickstep/views/OplusRecentsViewImpl$SwipeToRecentAnimationController;)V

    .line 188
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v0

    .line 192
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 198
    sget v0, Lcom/android/launcher3/R$dimen;->peeking_quite_recent_speed_y:I

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 204
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mQuiteRecnetSpeedY:F

    .line 206
    sget v0, Lcom/android/launcher3/R$dimen;->go_recent_direction_change_distance:I

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 212
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    .line 214
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverviewAnimation$lambda$19(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$displayWhenGoingOverview(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->displayWhenGoingOverview()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getGoOverViewEndListener$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGpuBoostFd$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gpuBoostFd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getMDepthController$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMGridProgressAnimation$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/util/animation/SpringAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMIsGoingHome$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMRecentAlphaAnimator$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMRecentSpringX$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/util/animation/SpringAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getOverviewScrim$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/graphics/OplusOverviewScrim;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isToHomeGestureCommonAnimRunning(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isToHomeGestureCommonAnimRunning()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$playControlEnterAnimation(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->playControlEnterAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateBackground(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateBackground(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final animateBackgroundScaleSpring(F)V
    .registers 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const v1, 0x3f59999a    # 0.85f

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 11
    .line 12
    if-eqz p0, :cond_10

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->animateToFinalPosition(F)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initState$lambda$0(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring$lambda$9(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final calculateWallpaperBlurStart()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->isFolderOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_32

    .line 8
    .line 9
    sget-object v0, Lcom/android/launcher3/stack/view/Stack;->Companion:Lcom/android/launcher3/stack/view/Stack$Companion;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/launcher3/stack/view/Stack$Companion;->isStackOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_32

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 20
    .line 21
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_32

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 30
    .line 31
    sget-object v1, Lcom/android/launcher3/LauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_32

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 40
    .line 41
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_32

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    const/high16 p0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    :goto_34
    return p0
.end method

.method private final cancelControlEnterAnimation()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "NORMAL"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_2c

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    .line 13
    .line 14
    .line 15
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/dock/DockView;->updateLastState(Lcom/android/launcher3/LauncherState;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_23

    .line 25
    .line 26
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "cancelControlEnterAnimation"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2, v4}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v0, v2

    .line 37
    :goto_24
    if-eqz v0, :cond_2c

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 43
    .line 44
    .line 45
    :cond_2c
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 46
    .line 47
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final cancelStateAnimationIfNeed()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 15
    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 25
    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    const-string v5, "cancelStateAnimationIfNeed lastState: "

    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, " state: "

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c7

    .line 60
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 62
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 72
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_c7

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 78
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 88
    invoke-virtual {v0}, Lcom/android/launcher3/states/OPlusBaseState;->shouldCancelAnimationWhenDraggingToOverview()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 94
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 96
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 106
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 112
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 114
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    :goto_81
    if-eqz v0, :cond_be

    .line 132
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_89
    if-ge v2, v0, :cond_be

    .line 140
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 142
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    .line 146
    const-string/jumbo v4, "getWorkspace(...)"

    .line 149
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {v2, v3}, Landroidx/core/view/h0;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 156
    instance-of v3, v3, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_bb

    .line 160
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 162
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    .line 166
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {v2, v3}, Landroidx/core/view/h0;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 173
    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    .line 176
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    .line 181
    invoke-virtual {v3}, Lcom/android/launcher3/OplusCellLayout;->getBgRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object v3

    .line 185
    invoke-virtual {v3, v1}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->setAlpha(I)V

    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 191
    :cond_be
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    :cond_c7
    return-void
.end method

.method private final checkCurrentPage()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_b5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->isPageInTransition()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_25

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v2, v4, :cond_25

    .line 36
    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v4, v3

    .line 39
    :goto_26
    if-nez v0, :cond_2c

    .line 40
    .line 41
    if-nez v1, :cond_2c

    .line 42
    .line 43
    if-eqz v4, :cond_5a

    .line 44
    .line 45
    :cond_2c
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string/jumbo v5, "initDragParam reset page for recentsView and DockView, recentViewCurrPage: "

    .line 48
    .line 49
    .line 50
    const-string v6, ", isRecentsViewInTransition: "

    .line 51
    .line 52
    const-string v7, ", isDockViewInTransition: "

    .line 53
    .line 54
    invoke-static {v5, v6, v7, v0, v1}, Lcom/android/common/config/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0, v4}, Landroidx/room/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_43

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->abortScrollerAnimation()V

    .line 66
    .line 67
    .line 68
    :cond_43
    if-eqz v4, :cond_50

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_50

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    .line 79
    .line 80
    .line 81
    :cond_50
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetRunningTaskViewId()V

    .line 89
    .line 90
    .line 91
    :cond_5a
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_b5

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 102
    .line 103
    instance-of v1, v1, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    .line 104
    .line 105
    if-eqz v1, :cond_6f

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getLayoutOffsetX()F

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    goto :goto_73

    .line 112
    :cond_6f
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getLayoutOffsetY()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    :goto_73
    const/4 v1, 0x0

    .line 117
    cmpg-float v0, v0, v1

    .line 118
    .line 119
    if-nez v0, :cond_79

    .line 120
    .line 121
    goto :goto_b5

    .line 122
    :cond_79
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetRunningTaskViewId()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->pageScrollsInitialized()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_b5

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    :goto_91
    if-ge v3, v0, :cond_b5

    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 149
    .line 150
    invoke-static {v3, v2}, Landroidx/core/view/h0;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    instance-of v4, v2, Lcom/android/quickstep/views/TaskView;

    .line 155
    .line 156
    if-eqz v4, :cond_a0

    .line 157
    .line 158
    check-cast v2, Lcom/android/quickstep/views/TaskView;

    .line 159
    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    const/4 v2, 0x0

    .line 162
    :goto_a1
    if-eqz v2, :cond_b2

    .line 163
    .line 164
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 165
    .line 166
    iget-object v4, v4, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 167
    .line 168
    instance-of v4, v4, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    .line 169
    .line 170
    if-eqz v4, :cond_af

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setLayoutOffsetX(F)V

    .line 173
    .line 174
    .line 175
    goto :goto_b2

    .line 176
    :cond_af
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setLayoutOffsetY(F)V

    .line 177
    .line 178
    .line 179
    :cond_b2
    :goto_b2
    add-int/lit8 v3, v3, 0x1

    .line 180
    .line 181
    goto :goto_91

    .line 182
    :cond_b5
    :goto_b5
    return-void
.end method

.method private final computeCardScale(F)F
    .registers 8

    .line 1
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const v1, 0x3f4ccccd    # 0.8f

    .line 5
    .line 6
    .line 7
    mul-float/2addr v0, v1

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sget-object v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    div-float v2, p1, v0

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const v2, 0x3fca3d71    # 1.58f

    .line 26
    .line 27
    .line 28
    const v3, 0x3f733333    # 0.95f

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_46

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "computeCardScale: "

    .line 44
    .line 45
    const-string v4, "   distance:"

    .line 46
    .line 47
    const-string v5, " maxDistance:"

    .line 48
    .line 49
    invoke-static {v3, v2, v4, p1, v5}, Landroidx/fragment/app/o;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "   "

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_46
    return v2
.end method

.method private final computeCardScaleWithSpeed(FF)[F
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->reCorrectMaxDistance()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    div-float v2, p1, v0

    .line 15
    .line 16
    sget-object v3, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0x3fca3d71    # 1.58f

    .line 23
    .line 24
    .line 25
    const v6, 0x3f733333    # 0.95f

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const v6, 0x3a83126f    # 0.001f

    .line 33
    .line 34
    .line 35
    cmpg-float v7, v2, v6

    .line 36
    .line 37
    if-gez v7, :cond_27

    .line 38
    .line 39
    goto :goto_3d

    .line 40
    :cond_27
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-float/2addr v2, v6

    .line 45
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-float/2addr v1, v2

    .line 50
    div-float/2addr v1, v6

    .line 51
    const v2, 0x3f2147af    # 0.63000005f

    .line 52
    .line 53
    .line 54
    mul-float/2addr p2, v2

    .line 55
    const/16 v2, 0x3e8

    .line 56
    .line 57
    int-to-float v2, v2

    .line 58
    mul-float/2addr p2, v2

    .line 59
    mul-float/2addr p2, v1

    .line 60
    div-float v1, p2, v0

    .line 61
    .line 62
    :goto_3d
    const/4 p2, 0x2

    .line 63
    new-array p2, p2, [F

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput v5, p2, v2

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    aput v1, p2, v2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "computeCardScale: "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, " distance:"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " maxDistance:"

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " "

    .line 97
    .line 98
    invoke-static {v1, v0, p1, v4, p0}, Lcom/android/launcher/controller/j;->b(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p2
.end method

.method private final createBlurAndDragLayerAlphaAnim()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecreateAlphaAndBlurAnim:Z

    .line 2
    .line 3
    const v1, 0x3c23d70a    # 0.01f

    .line 4
    .line 5
    .line 6
    const/high16 v2, 0x44160000    # 600.0f

    .line 7
    .line 8
    const/16 v3, 0x10

    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-nez v0, :cond_11

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 15
    .line 16
    if-nez v0, :cond_48

    .line 17
    .line 18
    :cond_11
    new-instance v0, Lcom/android/quickstep/util/animation/AnimInfo;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-direct {v0, v5, v4}, Lcom/android/quickstep/util/animation/AnimInfo;-><init>(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/AnimInfo;->setSceneFlag(I)Lcom/android/quickstep/util/animation/AnimInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v5, Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;->SWIPE_UP_TO_RECENT:Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/animation/AnimInfo;->setHandFollowScene(Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;)Lcom/android/quickstep/util/animation/AnimInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getDepthAnimImpl()Lcom/android/quickstep/util/animation/DepthAnimImpl;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5, v0}, Lcom/android/quickstep/util/animation/DepthAnimImpl;->createWallpaperBlurHandFollowAnim(Lcom/android/quickstep/util/animation/AnimInfo;)Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 50
    .line 51
    if-eqz v0, :cond_48

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_48

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5, v4}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 71
    .line 72
    .line 73
    :cond_48
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecreateAlphaAndBlurAnim:Z

    .line 74
    .line 75
    if-nez v0, :cond_50

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 78
    .line 79
    if-nez v0, :cond_88

    .line 80
    .line 81
    :cond_50
    new-instance v0, Lcom/android/quickstep/util/animation/AnimInfo;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/4 v6, 0x0

    .line 90
    invoke-direct {v0, v5, v6}, Lcom/android/quickstep/util/animation/AnimInfo;-><init>(FF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/AnimInfo;->setSceneFlag(I)Lcom/android/quickstep/util/animation/AnimInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v3, Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;->SWIPE_UP_TO_RECENT:Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/AnimInfo;->setHandFollowScene(Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;)Lcom/android/quickstep/util/animation/AnimInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/android/launcher3/OplusDragLayer;->getAnimationImpl()Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3, v0}, Lcom/android/quickstep/util/animation/AnimationImpl;->createAlphaHandFollowAnim(Lcom/android/quickstep/util/animation/AnimInfo;)Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 114
    .line 115
    if-eqz v0, :cond_88

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_88

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 135
    .line 136
    .line 137
    :cond_88
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_9f

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getDismissKeyguardAnimSet()Landroid/animation/Animator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_9f

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_9f

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 158
    .line 159
    .line 160
    :cond_9f
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecreateAlphaAndBlurAnim:Z

    .line 162
    .line 163
    return-void
.end method

.method private final displayWhenGoingOverview()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 3
    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    .line 6
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 8
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getClearAllButtonAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_32

    .line 17
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 19
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 25
    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v1

    if-nez v1, :cond_32

    .line 31
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v2, "mRecentsView?.getClearAllButtonAlpha() == 0f"

    .line 36
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 41
    const-string v1, "OVERVIEW"

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_32
    return-void
.end method

.method private final doBackGroundAnim(Z)V
    .registers 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    if-eqz p1, :cond_1b

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 6
    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->animateToFinalPosition(F)V

    .line 11
    .line 12
    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 14
    .line 15
    if-eqz p1, :cond_13

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->animateToFinalPosition(F)V

    .line 18
    .line 19
    .line 20
    :cond_13
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "doBackGroundAnim, toOverview"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_6a

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/launcher3/LauncherState;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v1, 0x1

    .line 47
    aget p1, p1, v1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 50
    .line 51
    if-eqz v1, :cond_37

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->animateToFinalPosition(F)V

    .line 54
    .line 55
    .line 56
    :cond_37
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_5a

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenStack(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/stack/view/Stack;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_48

    .line 71
    .line 72
    goto :goto_5a

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getBlur(Landroid/content/Context;)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 92
    .line 93
    if-eqz v1, :cond_61

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->animateToFinalPosition(F)V

    .line 96
    .line 97
    .line 98
    :cond_61
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    const-string v1, "doBackGroundAnim, finalAlpha: "

    .line 101
    .line 102
    const-string v2, ", finalBlur: "

    .line 103
    .line 104
    invoke-static {v1, p1, v2, v0, p0}, Landroid/window/a;->b(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_6a
    return-void
.end method

.method private static final goOverviewAnimation$lambda$19(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGridProgressToOverView()Z

    move-result p1

    if-nez p1, :cond_12

    .line 13
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    .line 19
    :cond_12
    sget-object p0, Lcom/android/common/util/LauncherJankManager$JankScene;->ENTER_RECENTS_FROM_WORKSPACE:Lcom/android/common/util/LauncherJankManager$JankScene;

    .line 21
    invoke-static {p0}, Lcom/android/common/util/LauncherJankManager;->gfxEnd(Lcom/android/common/util/LauncherJankManager$JankScene;)V

    return-void
.end method

.method private final initSpring()V
    .registers 8

    .line 1
    new-instance v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Lcom/android/quickstep/util/animation/FloatValueHolder;F)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/high16 v1, 0x44160000    # 600.0f

    .line 16
    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    goto :goto_16

    .line 20
    :cond_13
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 21
    .line 22
    .line 23
    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_20

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object v0, v3

    .line 34
    :goto_21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    .line 36
    if-nez v0, :cond_26

    .line 37
    .line 38
    goto :goto_29

    .line 39
    :cond_26
    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 40
    .line 41
    .line 42
    :goto_29
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 43
    .line 44
    const v5, 0x3727c5ac    # 1.0E-5f

    .line 45
    .line 46
    .line 47
    if-nez v0, :cond_31

    .line 48
    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 51
    .line 52
    .line 53
    :goto_34
    new-instance v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 54
    .line 55
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 56
    .line 57
    invoke-direct {v0, v6, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Lcom/android/quickstep/util/animation/FloatValueHolder;F)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_44

    .line 67
    .line 68
    goto :goto_47

    .line 69
    :cond_44
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 70
    .line 71
    .line 72
    :goto_47
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 73
    .line 74
    if-eqz v0, :cond_50

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move-object v0, v3

    .line 82
    :goto_51
    if-nez v0, :cond_54

    .line 83
    .line 84
    goto :goto_57

    .line 85
    :cond_54
    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 86
    .line 87
    .line 88
    :goto_57
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 89
    .line 90
    if-nez v0, :cond_5c

    .line 91
    .line 92
    goto :goto_5f

    .line 93
    :cond_5c
    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 94
    .line 95
    .line 96
    :goto_5f
    new-instance v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 97
    .line 98
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->scrimHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 99
    .line 100
    invoke-direct {v0, v6, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Lcom/android/quickstep/util/animation/FloatValueHolder;F)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_6f

    .line 110
    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 113
    .line 114
    .line 115
    :goto_72
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 116
    .line 117
    if-eqz v0, :cond_7b

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move-object v0, v3

    .line 125
    :goto_7c
    if-nez v0, :cond_7f

    .line 126
    .line 127
    goto :goto_82

    .line 128
    :cond_7f
    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 129
    .line 130
    .line 131
    :goto_82
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 132
    .line 133
    if-nez v0, :cond_87

    .line 134
    .line 135
    goto :goto_8d

    .line 136
    :cond_87
    const v1, 0x3c23d70a    # 0.01f

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 140
    .line 141
    .line 142
    :goto_8d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_e5

    .line 147
    .line 148
    new-instance v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 151
    .line 152
    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Lcom/android/quickstep/util/animation/FloatValueHolder;F)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-nez v0, :cond_a3

    .line 162
    .line 163
    goto :goto_a8

    .line 164
    :cond_a3
    const/high16 v1, 0x438c0000    # 280.0f

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 167
    .line 168
    .line 169
    :goto_a8
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 170
    .line 171
    if-eqz v0, :cond_b0

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :cond_b0
    if-nez v3, :cond_b3

    .line 178
    .line 179
    goto :goto_b9

    .line 180
    :cond_b3
    const v0, 0x3f933333    # 1.15f

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 184
    .line 185
    .line 186
    :goto_b9
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 187
    .line 188
    if-nez v0, :cond_be

    .line 189
    .line 190
    goto :goto_c1

    .line 191
    :cond_be
    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 192
    .line 193
    .line 194
    :goto_c1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 195
    .line 196
    if-eqz v0, :cond_d0

    .line 197
    .line 198
    new-instance v1, Lcom/android/quickstep/touch/b;

    .line 199
    .line 200
    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/b;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 208
    .line 209
    :cond_d0
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 210
    .line 211
    if-eqz v0, :cond_d9

    .line 212
    .line 213
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 216
    .line 217
    .line 218
    :cond_d9
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 219
    .line 220
    if-eqz v0, :cond_e5

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 223
    .line 224
    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    check-cast p0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 229
    .line 230
    :cond_e5
    return-void
.end method

.method private static final initSpring$lambda$9(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 9
    const-string/jumbo p1, "mGridProgressAnimation end"

    .line 12
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final initState$lambda$0(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateTaskInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final isAllowSwitchToAppByTiltAngle()Z
    .registers 7

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1e

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide v3, 0x4056800000000000L    # 90.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpg-double p0, v3, v1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-gtz p0, :cond_1d

    .line 19
    .line 20
    const-wide v4, 0x405b800000000000L    # 110.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmpg-double p0, v1, v4

    .line 26
    .line 27
    if-gtz p0, :cond_1d

    .line 28
    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v3

    .line 31
    :cond_1e
    :goto_1e
    return v0
.end method

.method private final isBlurKeyValue(F)Z
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    cmpg-float p0, p1, p0

    .line 3
    .line 4
    if-nez p0, :cond_6

    .line 5
    .line 6
    goto :goto_13

    .line 7
    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpg-float p0, p1, p0

    .line 10
    .line 11
    if-nez p0, :cond_d

    .line 12
    .line 13
    goto :goto_13

    .line 14
    :cond_d
    const/high16 p0, -0x40800000    # -1.0f

    .line 15
    .line 16
    cmpg-float p0, p1, p0

    .line 17
    .line 18
    if-nez p0, :cond_15

    .line 19
    .line 20
    :goto_13
    const/4 p0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    :goto_16
    return p0
.end method

.method private final isOverviewStateExitAnimRunning()Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_26

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_26

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 30
    .line 31
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_26

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 p0, 0x0

    .line 40
    :goto_27
    return p0
.end method

.method private final isToHomeGestureCommonAnimRunning()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/android/quickstep/viewmodel/GestureViewModel;->Companion:Lcom/android/quickstep/viewmodel/GestureViewModel$Companion;

    .line 3
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/quickstep/viewmodel/GestureViewModel$Companion;->get(Landroid/app/Activity;)Lcom/android/quickstep/viewmodel/GestureViewModel;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 11
    iget-object p0, p0, Lcom/android/quickstep/viewmodel/GestureViewModel;->isToHomeGestureCommonAnimRunning:Landroidx/lifecycle/z;

    if-eqz p0, :cond_16

    .line 15
    invoke-virtual {p0}, Landroidx/lifecycle/z;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_18

    .line 23
    :cond_16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    :cond_18
    const-string/jumbo v0, "run(...)"

    .line 28
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final playControlEnterAnimation()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 3
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_2d

    .line 10
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 16
    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    if-nez v2, :cond_2d

    .line 20
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    .line 22
    sget-object v2, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 29
    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 32
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v7, 0x0

    .line 35
    const-string/jumbo v8, "playControlEnterAnimation"

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 43
    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    .line 46
    :cond_2d
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    if-nez v1, :cond_40

    .line 50
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    .line 52
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 54
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 56
    const-string v2, "OVERVIEW"

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_40
    return-void
.end method

.method private final reCorrectMaxDistance()F
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-nez v2, :cond_2c

    .line 13
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    const-string v2, "getContext(...)"

    .line 21
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 28
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 34
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 36
    const-string/jumbo v2, "warn recentsView\'s height == 0 ,screenHeight:"

    .line 39
    invoke-static {v0, v2, p0}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_29
    int-to-float p0, v0

    mul-float v0, p0, v1

    :cond_2c
    return v0
.end method

.method private final resetHolders()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 15
    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_20

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 31
    .line 32
    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_2a

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move-object v0, v1

    .line 44
    :goto_2b
    const/high16 v2, 0x44160000    # 600.0f

    .line 45
    .line 46
    if-nez v0, :cond_30

    .line 47
    .line 48
    goto :goto_33

    .line 49
    :cond_30
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 50
    .line 51
    .line 52
    :goto_33
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 53
    .line 54
    if-eqz v0, :cond_3c

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move-object v0, v1

    .line 62
    :goto_3d
    if-nez v0, :cond_40

    .line 63
    .line 64
    goto :goto_43

    .line 65
    :cond_40
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 66
    .line 67
    .line 68
    :goto_43
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 69
    .line 70
    if-eqz v0, :cond_4c

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move-object v0, v1

    .line 78
    :goto_4d
    if-nez v0, :cond_50

    .line 79
    .line 80
    goto :goto_53

    .line 81
    :cond_50
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 82
    .line 83
    .line 84
    :goto_53
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 85
    .line 86
    if-eqz v0, :cond_62

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_62

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move-object v0, v1

    .line 100
    :goto_63
    if-nez v0, :cond_66

    .line 101
    .line 102
    goto :goto_69

    .line 103
    :cond_66
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 104
    .line 105
    .line 106
    :goto_69
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 107
    .line 108
    if-eqz v0, :cond_78

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_78

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    goto :goto_79

    .line 121
    :cond_78
    move-object v0, v1

    .line 122
    :goto_79
    if-nez v0, :cond_7c

    .line 123
    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 126
    .line 127
    .line 128
    :goto_7f
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 129
    .line 130
    if-eqz p0, :cond_8d

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    if-eqz p0, :cond_8d

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_8d
    if-nez v1, :cond_90

    .line 143
    .line 144
    goto :goto_93

    .line 145
    :cond_90
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 146
    .line 147
    .line 148
    :goto_93
    return-void
.end method

.method private final startRecentAlphaAnimator(F)Landroid/animation/AnimatorSet;
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 5
    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    .line 11
    new-instance v3, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v4, 0xc8

    .line 15
    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 18
    invoke-static {v2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 24
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 26
    invoke-static {p1, p0, v3}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PropertySetter;)V

    goto/16 :goto_f2

    .line 31
    :cond_1e
    sget-object v4, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 33
    invoke-virtual {v4}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v4

    const/16 v5, 0x9

    if-eqz v4, :cond_e1

    .line 41
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 43
    instance-of v6, v4, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v7, 0x0

    if-eqz v6, :cond_32

    .line 48
    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    goto :goto_33

    :cond_32
    move-object v4, v7

    :goto_33
    if-eqz v4, :cond_44

    .line 54
    iget-object v6, v4, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 56
    invoke-virtual {v6}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v4, v7

    :goto_3f
    if-eqz v4, :cond_44

    .line 66
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endScrollerAnimation()V

    .line 69
    :cond_44
    new-instance v4, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 76
    invoke-virtual {v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v6

    move v8, v0

    :goto_50
    if-ge v8, v6, :cond_9f

    .line 83
    iget-object v9, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 85
    invoke-virtual {v9, v8}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    .line 89
    instance-of v10, v9, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v10, :cond_5f

    .line 93
    check-cast v9, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_60

    :cond_5f
    move-object v9, v7

    :goto_60
    if-eqz v9, :cond_9d

    .line 99
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    move-result v10

    if-eqz v10, :cond_88

    .line 105
    iget-object v10, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 107
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v11

    .line 111
    new-instance v12, Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v13, "startRecentAlphaAnimator "

    .line 116
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v13, " TaskView alpha is "

    .line 124
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-static {v10, v11}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_88
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-nez v10, :cond_93

    move v10, v1

    goto :goto_94

    :cond_93
    move v10, v0

    :goto_94
    if-nez v10, :cond_97

    goto :goto_98

    :cond_97
    move-object v9, v7

    :goto_98
    if-eqz v9, :cond_9d

    .line 155
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    add-int/2addr v8, v1

    goto :goto_50

    .line 160
    :cond_9f
    sget-object v6, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 162
    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v6

    .line 166
    iget-object v7, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 168
    invoke-virtual {v6, v7}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 172
    const-string v7, "get(...)"

    .line 174
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    check-cast v6, Ljava/lang/Number;

    .line 179
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v7, 0x2

    .line 184
    new-array v7, v7, [F

    .line 186
    aput v6, v7, v0

    .line 188
    aput p1, v7, v1

    .line 190
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$startRecentAlphaAnimator$4;

    .line 196
    invoke-direct {v1, v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$startRecentAlphaAnimator$4;-><init>(Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$startRecentAlphaAnimator$$inlined$addListener$default$1;

    .line 207
    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$startRecentAlphaAnimator$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;F)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 215
    invoke-virtual {v2, v5, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 219
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    invoke-virtual {v3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    goto :goto_f2

    .line 226
    :cond_e1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 228
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 230
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 236
    invoke-virtual {v2, v5, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 240
    invoke-virtual {v3, p0, v0, p1, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 243
    :goto_f2
    invoke-virtual {v3}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 250
    const-string p1, "apply(...)"

    .line 252
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final updateAnimationParamsIfNeed(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 3
    const-string/jumbo v1, "updateAnimationParamsIfNeed, toRecents:"

    .line 6
    invoke-static {v1, v0, p1}, Lcom/android/common/util/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_62

    .line 13
    invoke-static {}, Lcom/android/overlay/OverlayUtils;->isSupportAssistantSwipeUp()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 19
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 21
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 27
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v2, :cond_29

    .line 35
    check-cast v1, Lcom/android/launcher/LauncherCallbacksImp;

    .line 37
    invoke-virtual {v1}, Lcom/android/launcher/LauncherCallbacksImp;->isZeroAlphaOverlay()Z

    move-result v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 43
    :goto_2a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 49
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 55
    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    if-eqz v2, :cond_5f

    if-eqz p1, :cond_5f

    .line 61
    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurAvailable()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5f

    .line 68
    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurDisabled()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 74
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 76
    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_53

    if-eqz v1, :cond_5f

    .line 84
    :cond_53
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 86
    const-string v0, "draglayerAlphaStart adjust to END."

    .line 88
    invoke-static {p1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    .line 93
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    goto :goto_8b

    .line 96
    :cond_5f
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    goto :goto_8b

    .line 99
    :cond_62
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    .line 101
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 103
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 111
    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_76

    goto :goto_8b

    .line 119
    :cond_76
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 121
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->isFolderOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 127
    sget-object p1, Lcom/android/launcher3/stack/view/Stack;->Companion:Lcom/android/launcher3/stack/view/Stack$Companion;

    .line 129
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 131
    invoke-virtual {p1, v1}, Lcom/android/launcher3/stack/view/Stack$Companion;->isStackOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private final updateBackground(F)V
    .registers 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const v1, 0x3f59999a    # 0.85f

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_21

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    :goto_22
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_46

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    .line 44
    .line 45
    if-nez v0, :cond_46

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_46

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_46

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusDragLayer;->setScaleX(F)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragLayer;->setScaleY(F)V

    .line 69
    .line 70
    .line 71
    :cond_46
    return-void
.end method

.method private final updateTaskInfo(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-eqz p1, :cond_41

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 29
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .line 40
    check-cast v4, Lcom/android/quickstep/util/GroupTask;

    if-eqz v4, :cond_1c

    .line 44
    invoke-virtual {v4}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 50
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v5

    .line 54
    iget-object v4, v4, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    .line 56
    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isQuickSearchBoxPkg(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 62
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_41
    move-object v2, v1

    .line 67
    :cond_42
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 73
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_55

    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_56

    :cond_55
    move-object v3, v1

    .line 87
    :goto_56
    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v6, "updateTaskInfo, taskSize="

    .line 94
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, ", mRequestLoadId="

    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, ", state="

    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {p1, v3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    if-eqz v2, :cond_fd

    .line 125
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_fd

    .line 131
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 133
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    goto/16 :goto_fd

    :cond_8c
    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    .line 144
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 146
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_96
    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v0, p1, :cond_c0

    .line 155
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 157
    invoke-virtual {v3, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    .line 161
    instance-of v4, v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v4, :cond_a7

    .line 165
    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_a8

    :cond_a7
    move-object v3, v1

    :goto_a8
    if-nez v3, :cond_ab

    goto :goto_ae

    .line 172
    :cond_ab
    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setAlpha(F)V

    :goto_ae
    if-eqz v3, :cond_b5

    .line 177
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v2

    goto :goto_b6

    :cond_b5
    move-object v2, v1

    :goto_b6
    if-nez v2, :cond_b9

    goto :goto_bd

    :cond_b9
    const/4 v3, 0x0

    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 193
    :cond_c0
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 195
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_fd

    .line 201
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    .line 205
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 207
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f6

    .line 213
    sget-object p1, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 215
    invoke-virtual {p1}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 221
    sget-object p1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_STACK_LAYOUT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    .line 223
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 225
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 229
    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_fd

    .line 233
    :cond_e8
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    move-result-object p1

    .line 237
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 239
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 243
    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_fd

    .line 247
    :cond_f6
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 249
    const-string p1, "State is OVERVIEW, skip to set recent view horizontal offset"

    .line 251
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fd
    :goto_fd
    return-void
.end method


# virtual methods
.method public final autoExitOverview()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v0, :cond_27

    .line 9
    .line 10
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setAppToHomeSwipeToRecentTogetherRunning(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_20

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->getMultiAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_20

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_20
    if-nez v2, :cond_23

    .line 34
    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 37
    .line 38
    .line 39
    :goto_26
    return-void

    .line 40
    :cond_27
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3d

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "autoExitOverview"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAutoExitOverviewRunning:Z

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->autoExitOverviewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 59
    .line 60
    .line 61
    goto :goto_5a

    .line 62
    :cond_3d
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setAppToHomeSwipeToRecentTogetherRunning(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_54

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->getMultiAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_54

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_54
    if-nez v2, :cond_57

    .line 86
    .line 87
    goto :goto_5a

    .line 88
    :cond_57
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 89
    .line 90
    .line 91
    :goto_5a
    return-void
.end method

.method public final calculateScaleAndAnimate(FF)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->computeCardScaleWithSpeed(FF)[F

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aget p1, p1, p2

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    const v0, 0x3fca3d71    # 1.58f

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 22
    .line 23
    if-eqz p0, :cond_1b

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public final calculateTranslateAndAnimate(F)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    sub-float/2addr p1, v0

    .line 11
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsRTL:Z

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    neg-float p1, p1

    .line 17
    :goto_10
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    div-float v0, p1, v0

    .line 21
    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    mul-float/2addr v0, v1

    .line 25
    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    .line 27
    add-float/2addr v0, v1

    .line 28
    :try_start_1b
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 29
    .line 30
    if-eqz v1, :cond_3a

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1b .. :try_end_22} :catch_23

    .line 33
    .line 34
    .line 35
    goto :goto_3a

    .line 36
    :catch_23
    move-exception v1

    .line 37
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "animateToFinalPosition fail: finalPosition = "

    .line 40
    .line 41
    const-string v3, ", finalTrans = "

    .line 42
    .line 43
    const-string v4, ", exception = "

    .line 44
    .line 45
    invoke-static {v2, v0, v3, p1, v4}, Landroidx/fragment/app/o;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method public cancelAllAnimationIfNeed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cancelAllAnimationIfNeed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 9
    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 16
    .line 17
    if-eqz v0, :cond_1b

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1b

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 29
    .line 30
    if-eqz v0, :cond_28

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_28

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 39
    .line 40
    .line 41
    :cond_28
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 42
    .line 43
    if-eqz v0, :cond_35

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_35

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 52
    .line 53
    .line 54
    :cond_35
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 55
    .line 56
    if-eqz v0, :cond_3c

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 59
    .line 60
    .line 61
    :cond_3c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 62
    .line 63
    if-eqz v0, :cond_43

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 66
    .line 67
    .line 68
    :cond_43
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 69
    .line 70
    if-eqz p0, :cond_4a

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 73
    .line 74
    .line 75
    :cond_4a
    return-void
.end method

.method public cancelAnimationIfNeed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cancelAnimationIfNeed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 9
    .line 10
    if-eqz p0, :cond_e

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final cancelRecentAnimationIfNeed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cancelRecentAnimationIfNeed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 9
    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 16
    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 23
    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 30
    .line 31
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_2d

    .line 37
    .line 38
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2d

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v0, v1

    .line 47
    :goto_2e
    invoke-virtual {p0, v1, v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->setCurrentPageForce(IZ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final checkRecentsViewAlpha()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2e

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2e

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "checkRecentsViewAlpha(), cancel TOGGLE_BAR Animation"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 48
    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    if-eqz v0, :cond_57

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    cmpg-float v0, v0, v1

    .line 60
    .line 61
    if-nez v0, :cond_3f

    .line 62
    .line 63
    goto :goto_57

    .line 64
    :cond_3f
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_52

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const-string v3, "checkRecentsViewAlpha(), contentAlpha="

    .line 79
    .line 80
    invoke-static {v3, v2, v0}, Landroidx/fragment/app/n;->a(Ljava/lang/String;FLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_52
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    .line 86
    .line 87
    .line 88
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_72

    .line 96
    .line 97
    iget-boolean v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 98
    .line 99
    if-eqz v3, :cond_72

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isToHomeGestureCommonAnimRunning()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_72

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getStableAlpha()F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    cmpg-float p0, p0, v1

    .line 112
    .line 113
    if-nez p0, :cond_73

    .line 114
    .line 115
    :cond_72
    move-object v0, v2

    .line 116
    :cond_73
    if-nez v0, :cond_76

    .line 117
    .line 118
    goto :goto_79

    .line 119
    :cond_76
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    .line 120
    .line 121
    .line 122
    :goto_79
    return-void
.end method

.method public final checkSwitchMode(FFLandroid/graphics/PointF;)I
    .registers 9

    .line 1
    const-string/jumbo v0, "swipeVendor"

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    .line 11
    const-string v2, "checkSwitchMode: "

    .line 13
    const-string v3, "  "

    .line 15
    const-string v4, " "

    .line 17
    invoke-static {v2, p1, v3, p2, v4}, Landroidx/fragment/app/o;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget p1, p3, Landroid/graphics/PointF;->y:F

    .line 39
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float v0, v0

    const v1, -0x42333333    # -0.1f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-lez p1, :cond_39

    const p1, 0x3e99999a    # 0.3f

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_43

    .line 58
    :cond_39
    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mQuiteRecnetSpeedY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5e

    .line 64
    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    if-ne p1, v0, :cond_5e

    .line 68
    :cond_43
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAllowSwitchToAppByTiltAngle()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 74
    iget p1, p3, Landroid/graphics/PointF;->x:F

    .line 76
    iget p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    int-to-float p2, p2

    const p3, 0x3e19999a    # 0.15f

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_5f

    .line 87
    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5c

    goto :goto_5f

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x2

    :cond_5f
    :goto_5f
    return v0
.end method

.method public final clearHandFollowFlag()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->getAnimationImpl()Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;->SWIPE_UP_TO_RECENT:Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/AnimationImpl;->clearScaleHandFollowFlag(Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->getAnimationImpl()Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/AnimationImpl;->clearAlphaHandFollowFlag(Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getDepthAnimImpl()Lcom/android/quickstep/util/animation/DepthAnimImpl;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/animation/DepthAnimImpl;->clearWallpaperBlurHandFollowFlag(Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final clearState()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRecentAnimateDragging(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecentMotionPaused(Z)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public endAllAnimationIfNeed()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "endAllAnimationIfNeed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelAllAnimationIfNeed()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_22

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    :goto_23
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3c

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 45
    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    return-void
.end method

.method public final endAutoExitOverview()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAutoExitOverviewRunning:Z

    .line 4
    .line 5
    const-string v2, "endAutoExitOverview, isAutoExitOverviewRunning:"

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/android/common/util/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 11
    .line 12
    if-eqz v0, :cond_2e

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAutoExitOverviewRunning:Z

    .line 15
    .line 16
    if-eqz v1, :cond_18

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_18

    .line 23
    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    if-eqz v0, :cond_2e

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_26

    .line 35
    .line 36
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 37
    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    :goto_28
    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-void
.end method

.method public final endGoHomeRecentSpringXAnimation()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGoHomeAnimRunning:Z

    .line 4
    .line 5
    const-string v2, "endGoHomeRecentSpringXAnimation, isGoHomeAnimRunning:"

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/android/common/util/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 11
    .line 12
    if-eqz v0, :cond_2e

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGoHomeAnimRunning:Z

    .line 15
    .line 16
    if-eqz v1, :cond_18

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_18

    .line 23
    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    if-eqz v0, :cond_2e

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_26

    .line 35
    .line 36
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 37
    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    :goto_28
    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-void
.end method

.method public final getApproximateLineTiltAngleInActionUp()Ljava/lang/Double;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getGridProgressAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMChangeQuickSwitch()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getMIsGridAnimationStarted()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getMSwipeDetector()Lcom/oplus/quickstep/touch/OplusSwipeDetector;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method public final goHomeAnimalCheck()Z
    .registers 2

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_6

    .line 5
    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final goHomeAnimation()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_12

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/launcher3/LauncherState;

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move-object v1, v2

    .line 20
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v4, "goHomeAnimation("

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ")"

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 44
    .line 45
    if-eqz v0, :cond_32

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_32
    if-nez v2, :cond_35

    .line 52
    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    const/high16 v0, 0x43480000    # 200.0f

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 57
    .line 58
    .line 59
    :goto_3a
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    .line 65
    if-eqz v0, :cond_45

    .line 66
    .line 67
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 68
    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v0, v1

    .line 71
    :goto_46
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 72
    .line 73
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v2, :cond_6c

    .line 81
    .line 82
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    .line 83
    .line 84
    cmpg-float v2, v2, v1

    .line 85
    .line 86
    if-nez v2, :cond_6c

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/android/launcher3/folder/Folder;->isFolderOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_6c

    .line 95
    .line 96
    sget-object v2, Lcom/android/launcher3/stack/view/Stack;->Companion:Lcom/android/launcher3/stack/view/Stack$Companion;

    .line 97
    .line 98
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lcom/android/launcher3/stack/view/Stack$Companion;->isStackOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_6c

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateAnimationParamsIfNeed(Z)V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 114
    .line 115
    if-eqz v4, :cond_77

    .line 116
    .line 117
    invoke-virtual {v4, v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 118
    .line 119
    .line 120
    :cond_77
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 121
    .line 122
    if-eqz v0, :cond_83

    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 131
    .line 132
    :cond_83
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 133
    .line 134
    if-eqz v0, :cond_8a

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 140
    .line 141
    if-eqz v0, :cond_91

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 144
    .line 145
    .line 146
    :cond_91
    invoke-direct {p0, v3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->animateBackgroundScaleSpring(F)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->doBackGroundAnim(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    .line 156
    .line 157
    .line 158
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGoHomeAnimRunning:Z

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->showToggleBarLayoutBottomDialog()V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final goHomeStartAppIconsExitAnima()V
    .registers 7

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_58

    .line 8
    .line 9
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_58

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_1d
    if-ge v2, v1, :cond_3e

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Lkotlin/Pair;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1d

    .line 63
    :cond_3e
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 v0, 0x0

    .line 68
    if-eqz p0, :cond_53

    .line 69
    .line 70
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 71
    .line 72
    const-string v2, "NORMAL"

    .line 73
    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v2, "goHomeStartAppIconsExitAnima"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_53
    if-eqz v0, :cond_58

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 87
    .line 88
    .line 89
    :cond_58
    return-void
.end method

.method public final goHomeStartClearButtonExitAnima()V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->quickPlayExitAnimator(Lcom/android/launcher3/LauncherState;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final goOverviewAnimation()V
    .registers 14

    .line 1
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    .line 3
    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    .line 6
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 8
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 14
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    .line 17
    invoke-static {}, Lcom/android/launcher/UiConfig;->isAlphaM()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    .line 26
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getGpu()Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;

    move-result-object v0

    .line 30
    const-string v4, "OSENSE_ACTION_GESTURE_ANIMATION"

    .line 32
    invoke-static {v0, v4, v2, v1, v3}, Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;->openWithType$default(Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide v4

    .line 36
    iput-wide v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gpuBoostFd:J

    .line 38
    :cond_25
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->panoramicRequestOrientationLocked()V

    .line 41
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 43
    const-string/jumbo v4, "goOverviewAnimation is started"

    .line 46
    invoke-static {v0, v4}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->sIsGoingOverview:Z

    .line 52
    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 54
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 56
    invoke-virtual {v4, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    .line 59
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 61
    invoke-virtual {v4, v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->setMInterruptAnimNextPage(I)V

    .line 64
    sget-object v4, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    .line 66
    invoke-virtual {v4, v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    .line 69
    sget-object v4, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    .line 71
    invoke-virtual {v4}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isSystemDisableAnimation()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 77
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 83
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 85
    const-string/jumbo v5, "set stiffness = SpringForce.STIFFNESS_HIGH while animation disabled "

    .line 88
    invoke-static {v4, v5}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5a
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_63

    .line 95
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_64

    :cond_63
    move-object v4, v3

    :goto_64
    const v5, 0x461c4000    # 10000.0f

    if-nez v4, :cond_6a

    goto :goto_6d

    .line 107
    :cond_6a
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 110
    :goto_6d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_76

    .line 114
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_77

    :cond_76
    move-object v4, v3

    :goto_77
    if-nez v4, :cond_7a

    goto :goto_7d

    .line 123
    :cond_7a
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 126
    :goto_7d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_86

    .line 130
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_87

    :cond_86
    move-object v4, v3

    :goto_87
    if-nez v4, :cond_8a

    goto :goto_8d

    .line 139
    :cond_8a
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 142
    :goto_8d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_96

    .line 146
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_97

    :cond_96
    move-object v4, v3

    :goto_97
    if-nez v4, :cond_9a

    goto :goto_9d

    .line 155
    :cond_9a
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 158
    :goto_9d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    if-eqz v4, :cond_ac

    .line 162
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_ac

    .line 168
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_ad

    :cond_ac
    move-object v4, v3

    :goto_ad
    if-nez v4, :cond_b0

    goto :goto_b3

    .line 177
    :cond_b0
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 180
    :goto_b3
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    if-eqz v4, :cond_c2

    .line 184
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_c2

    .line 190
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_c3

    :cond_c2
    move-object v4, v3

    :goto_c3
    if-nez v4, :cond_c6

    goto :goto_c9

    .line 199
    :cond_c6
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 202
    :goto_c9
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    if-eqz v4, :cond_d7

    .line 206
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_d7

    .line 212
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v3

    :cond_d7
    if-nez v3, :cond_db

    goto/16 :goto_1a1

    .line 220
    :cond_db
    invoke-virtual {v3, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    goto/16 :goto_1a1

    .line 225
    :cond_e0
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 227
    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isHummingEnabled()Z

    move-result v4

    if-eqz v4, :cond_164

    .line 233
    sget v4, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    .line 235
    invoke-static {v4, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v4

    if-eqz v4, :cond_12d

    if-eq v4, v0, :cond_f4

    goto/16 :goto_1a1

    .line 245
    :cond_f4
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_fd

    .line 249
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_fe

    :cond_fd
    move-object v4, v3

    :goto_fe
    const/high16 v5, 0x43960000    # 300.0f

    if-nez v4, :cond_103

    goto :goto_106

    .line 260
    :cond_103
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 263
    :goto_106
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_10f

    .line 267
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_110

    :cond_10f
    move-object v4, v3

    :goto_110
    if-nez v4, :cond_113

    goto :goto_116

    .line 276
    :cond_113
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 279
    :goto_116
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    if-eqz v4, :cond_124

    .line 283
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_124

    .line 289
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v3

    :cond_124
    if-nez v3, :cond_128

    goto/16 :goto_1a1

    .line 297
    :cond_128
    invoke-virtual {v3, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    goto/16 :goto_1a1

    .line 302
    :cond_12d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_136

    .line 306
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_137

    :cond_136
    move-object v4, v3

    :goto_137
    const/high16 v5, 0x43c80000    # 400.0f

    if-nez v4, :cond_13c

    goto :goto_13f

    .line 317
    :cond_13c
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 320
    :goto_13f
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_148

    .line 324
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_149

    :cond_148
    move-object v4, v3

    :goto_149
    if-nez v4, :cond_14c

    goto :goto_14f

    .line 333
    :cond_14c
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 336
    :goto_14f
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    if-eqz v4, :cond_15d

    .line 340
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_15d

    .line 346
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v3

    :cond_15d
    if-nez v3, :cond_160

    goto :goto_1a1

    .line 353
    :cond_160
    invoke-virtual {v3, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    goto :goto_1a1

    .line 357
    :cond_164
    invoke-static {}, Lcom/android/common/util/LauncherAnimConfig;->isLevelBOrBPlus()Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 363
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_173

    .line 367
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_174

    :cond_173
    move-object v4, v3

    :goto_174
    const v5, 0x4476c000    # 987.0f

    if-nez v4, :cond_17a

    goto :goto_17d

    .line 379
    :cond_17a
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 382
    :goto_17d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_186

    .line 386
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v4

    goto :goto_187

    :cond_186
    move-object v4, v3

    :goto_187
    if-nez v4, :cond_18a

    goto :goto_18d

    .line 395
    :cond_18a
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 398
    :goto_18d
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    if-eqz v4, :cond_19b

    .line 402
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_19b

    .line 408
    invoke-virtual {v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v3

    :cond_19b
    if-nez v3, :cond_19e

    goto :goto_1a1

    .line 415
    :cond_19e
    invoke-virtual {v3, v5}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 418
    :cond_1a1
    :goto_1a1
    sget-object v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 420
    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    .line 423
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v3, :cond_1ae

    const/4 v4, 0x0

    .line 428
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 431
    :cond_1ae
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1b7

    .line 437
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 440
    :cond_1b7
    invoke-direct {p0, v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->animateBackgroundScaleSpring(F)V

    .line 443
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1db

    .line 449
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 451
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_1db

    .line 457
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v3

    if-eqz v3, :cond_1db

    .line 463
    aget-object v3, v3, v2

    if-eqz v3, :cond_1db

    .line 467
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    if-eqz v3, :cond_1db

    .line 473
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    .line 476
    :cond_1db
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v3, :cond_1e4

    .line 480
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 482
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 485
    :cond_1e4
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v3

    if-nez v3, :cond_1f6

    .line 491
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v3, :cond_1f6

    .line 495
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 497
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v3

    .line 501
    check-cast v3, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 503
    :cond_1f6
    sget-object v3, Lcom/android/common/util/LauncherJankManager$JankScene;->ENTER_RECENTS_FROM_WORKSPACE:Lcom/android/common/util/LauncherJankManager$JankScene;

    .line 505
    invoke-static {v3}, Lcom/android/common/util/LauncherJankManager;->gfxBegin(Lcom/android/common/util/LauncherJankManager$JankScene;)V

    .line 508
    sget-object v3, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 510
    invoke-virtual {v3}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v3

    if-eqz v3, :cond_25b

    .line 516
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 518
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v3

    move v4, v2

    :goto_20a
    if-ge v4, v3, :cond_25b

    if-ne v4, v0, :cond_226

    .line 527
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 529
    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    if-eqz v7, :cond_258

    .line 535
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v8, 0x3f75c28f    # 0.96f

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 547
    invoke-virtual/range {v6 .. v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateScaleDimAlpha(Lcom/android/quickstep/views/TaskView;FFFFF)V

    goto :goto_258

    :cond_226
    if-ne v4, v1, :cond_240

    .line 553
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 555
    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    if-eqz v7, :cond_258

    .line 561
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v8, 0x3f6e147b    # 0.93f

    const v9, 0x3e4ccccd    # 0.2f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 573
    invoke-virtual/range {v6 .. v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateScaleDimAlpha(Lcom/android/quickstep/views/TaskView;FFFFF)V

    goto :goto_258

    :cond_240
    if-le v4, v1, :cond_258

    .line 579
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 581
    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    if-eqz v7, :cond_258

    .line 587
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v8, 0x3f6bedfa    # 0.9216f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x0

    .line 598
    invoke-virtual/range {v6 .. v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateScaleDimAlpha(Lcom/android/quickstep/views/TaskView;FFFFF)V

    :cond_258
    :goto_258
    add-int/lit8 v4, v4, 0x1

    goto :goto_20a

    .line 604
    :cond_25b
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_26b

    .line 608
    new-instance v1, Lcom/android/launcher3/capsule/h;

    const/4 v3, 0x1

    .line 611
    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/capsule/h;-><init>(Ljava/lang/Object;I)V

    .line 614
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v0

    .line 618
    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 620
    :cond_26b
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    .line 622
    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 628
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    .line 634
    const-string v0, "app_recent_enter"

    .line 636
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_27e
    return-void
.end method

.method public final goSwitchAppAnimation()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->sIsGoingOverview:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    .line 8
    .line 9
    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 20
    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 23
    .line 24
    if-eqz v0, :cond_1e

    .line 25
    .line 26
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 32
    .line 33
    if-eqz v0, :cond_2a

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 42
    .line 43
    :cond_2a
    invoke-direct {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->animateBackgroundScaleSpring(F)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final initDragParam(Landroid/graphics/PointF;)Z
    .registers 11

    .line 1
    const-string/jumbo v0, "lastDisplacement"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/overlay/OverlayUtils;->isSupportAssistantSwipeUp()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_12

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    .line 15
    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    return v1

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_23

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string/jumbo p1, "initDragParam show browsernewss,return"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_23
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelStateAnimationIfNeed()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateRecentViewState(Z)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    .line 44
    .line 45
    if-eqz v2, :cond_32

    .line 46
    .line 47
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 48
    .line 49
    if-nez v2, :cond_42

    .line 50
    .line 51
    :cond_32
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    .line 66
    .line 67
    :cond_42
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCountWithoutQuickSearch()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isSwipeToRecentWithEmptyTask()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/high16 v4, 0x3f800000    # 1.0f

    .line 78
    .line 79
    if-nez v3, :cond_166

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/android/launcher/layoutparam/ConfigParam;->isMultiWindowMode()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_62

    .line 96
    .line 97
    goto/16 :goto_166

    .line 98
    .line 99
    :cond_62
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const/4 v5, 0x0

    .line 104
    if-eqz v3, :cond_6e

    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 107
    .line 108
    invoke-virtual {v3, v5}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 109
    .line 110
    .line 111
    :cond_6e
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v6, "getClearAllButton(...)"

    .line 118
    .line 119
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    .line 123
    .line 124
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 125
    .line 126
    invoke-direct {p0, v3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->computeCardScale(F)F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    .line 131
    .line 132
    iget v7, p1, Landroid/graphics/PointF;->x:F

    .line 133
    .line 134
    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 135
    .line 136
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 137
    .line 138
    iput p1, v6, Landroid/graphics/PointF;->y:F

    .line 139
    .line 140
    const/high16 p1, 0x3f000000    # 0.5f

    .line 141
    .line 142
    const v6, 0x3f99999a    # 1.2f

    .line 143
    .line 144
    .line 145
    invoke-static {v4, p1, v6}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v8, "initDragParam: "

    .line 154
    .line 155
    .line 156
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v8, "  "

    .line 163
    .line 164
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-static {v6, v7}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_b4

    .line 179
    .line 180
    move p1, v4

    .line 181
    :cond_b4
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_bb

    .line 186
    .line 187
    move v3, v4

    .line 188
    :cond_bb
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    .line 189
    .line 190
    invoke-virtual {v6, v5}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    .line 191
    .line 192
    .line 193
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 194
    .line 195
    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    .line 196
    .line 197
    .line 198
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 199
    .line 200
    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    .line 201
    .line 202
    .line 203
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 204
    .line 205
    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 206
    .line 207
    .line 208
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 209
    .line 210
    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 214
    .line 215
    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setAlpha(F)V

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 219
    .line 220
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 221
    .line 222
    .line 223
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 224
    .line 225
    invoke-virtual {v3}, Lcom/oplus/quickstep/views/StackPagedViewEx;->isHandlingTouch()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_eb

    .line 230
    .line 231
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/oplus/quickstep/views/StackPagedViewEx;->resetTouchState()V

    .line 234
    .line 235
    .line 236
    :cond_eb
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->checkCurrentPage()V

    .line 237
    .line 238
    .line 239
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 240
    .line 241
    invoke-virtual {v3, v0}, Lcom/android/quickstep/views/RecentsView;->forceRefreshTasksOffsets(Z)V

    .line 242
    .line 243
    .line 244
    sget-object v3, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_10c

    .line 251
    .line 252
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->ADJACENT_STACK_LAYOUT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    .line 253
    .line 254
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 255
    .line 256
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v3, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 261
    .line 262
    .line 263
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->resetRunningTaskViewId()V

    .line 266
    .line 267
    .line 268
    goto :goto_119

    .line 269
    :cond_10c
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 274
    .line 275
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {v3, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 280
    .line 281
    .line 282
    :goto_119
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    .line 283
    .line 284
    invoke-virtual {v3, p1}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 288
    .line 289
    invoke-virtual {p1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    .line 290
    .line 291
    .line 292
    :goto_123
    if-ge v1, v2, :cond_143

    .line 293
    .line 294
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 295
    .line 296
    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    instance-of v3, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    if-eqz v3, :cond_133

    .line 304
    .line 305
    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 306
    .line 307
    goto :goto_134

    .line 308
    :cond_133
    move-object p1, v5

    .line 309
    :goto_134
    if-eqz p1, :cond_13a

    .line 310
    .line 311
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    :cond_13a
    if-nez v5, :cond_13d

    .line 316
    .line 317
    goto :goto_140

    .line 318
    :cond_13d
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 319
    .line 320
    .line 321
    :goto_140
    add-int/lit8 v1, v1, 0x1

    .line 322
    .line 323
    goto :goto_123

    .line 324
    :cond_143
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 325
    .line 326
    sget-object p0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->removeReapplyRunnable()V

    .line 329
    .line 330
    .line 331
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    if-eqz p0, :cond_165

    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    if-eqz p0, :cond_165

    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    if-ne p0, v0, :cond_165

    .line 348
    .line 349
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    if-eqz p0, :cond_165

    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->finishIconAlignmentAnimation()V

    .line 356
    .line 357
    .line 358
    :cond_165
    return v0

    .line 359
    :cond_166
    :goto_166
    sget-object p1, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-eqz p1, :cond_17a

    .line 366
    .line 367
    sget-object p1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_STACK_LAYOUT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    .line 368
    .line 369
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 370
    .line 371
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 376
    .line 377
    .line 378
    goto :goto_187

    .line 379
    :cond_17a
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 384
    .line 385
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 390
    .line 391
    .line 392
    :goto_187
    return v1
.end method

.method public final initState()V
    .registers 15

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    .line 5
    .line 6
    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->sIsGoingOverview:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    .line 20
    .line 21
    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->finishFillAnimation()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x2

    .line 39
    if-eqz v1, :cond_33

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusPanoramaLayout;->getMultiAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_33

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move-object v1, v2

    .line 53
    :goto_34
    const/4 v4, 0x0

    .line 54
    if-nez v1, :cond_38

    .line 55
    .line 56
    goto :goto_3b

    .line 57
    :cond_38
    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 58
    .line 59
    .line 60
    :goto_3b
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v5, 0x1

    .line 67
    if-ge v1, v5, :cond_5e

    .line 68
    .line 69
    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/quickstep/RecentsModel;

    .line 82
    .line 83
    new-instance v6, Lcom/android/launcher3/taskbar/a5;

    .line 84
    .line 85
    const/4 v7, 0x2

    .line 86
    invoke-direct {v6, p0, v7}, Lcom/android/launcher3/taskbar/a5;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v6, v5}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    .line 94
    .line 95
    :cond_5e
    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    .line 96
    .line 97
    if-eqz v1, :cond_66

    .line 98
    .line 99
    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 100
    .line 101
    if-nez v1, :cond_76

    .line 102
    .line 103
    :cond_66
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    .line 118
    .line 119
    :cond_76
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_8f

    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isOverlayScrolling()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_90

    .line 143
    .line 144
    :cond_8f
    move v0, v5

    .line 145
    :cond_90
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    .line 146
    .line 147
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getBlur(Landroid/content/Context;)F

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-direct {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isBlurKeyValue(F)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    const/high16 v7, 0x3f800000    # 1.0f

    .line 168
    .line 169
    if-eqz v6, :cond_af

    .line 170
    .line 171
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateWallpaperBlurStart()F

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_cb

    .line 176
    :cond_af
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isToHomeGestureCommonAnimRunning()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_cb

    .line 181
    .line 182
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 183
    .line 184
    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->isFolderOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_ca

    .line 189
    .line 190
    sget-object v1, Lcom/android/launcher3/stack/view/Stack;->Companion:Lcom/android/launcher3/stack/view/Stack$Companion;

    .line 191
    .line 192
    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 193
    .line 194
    invoke-virtual {v1, v6}, Lcom/android/launcher3/stack/view/Stack$Companion;->isStackOpened(Lcom/android/launcher3/views/ActivityContext;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_c8

    .line 199
    .line 200
    goto :goto_ca

    .line 201
    :cond_c8
    move v1, v4

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    :goto_ca
    move v1, v7

    .line 204
    :cond_cb
    :goto_cb
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    .line 205
    .line 206
    iput v7, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_df

    .line 215
    .line 216
    array-length v1, v0

    .line 217
    if-lt v1, v3, :cond_db

    .line 218
    .line 219
    move-object v2, v0

    .line 220
    :cond_db
    if-eqz v2, :cond_df

    .line 221
    .line 222
    aget v4, v2, v5

    .line 223
    .line 224
    :cond_df
    iput v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    .line 225
    .line 226
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 227
    .line 228
    if-eqz v0, :cond_ea

    .line 229
    .line 230
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 233
    .line 234
    .line 235
    :cond_ea
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 236
    .line 237
    if-eqz v0, :cond_f3

    .line 238
    .line 239
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 242
    .line 243
    .line 244
    :cond_f3
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 245
    .line 246
    if-eqz v0, :cond_fc

    .line 247
    .line 248
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 251
    .line 252
    .line 253
    :cond_fc
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 254
    .line 255
    if-eqz v0, :cond_105

    .line 256
    .line 257
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->autoExitOverviewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 260
    .line 261
    .line 262
    :cond_105
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 263
    .line 264
    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRecentAnimateDragging(Z)V

    .line 265
    .line 266
    .line 267
    sget-object v8, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    .line 268
    .line 269
    const/4 v12, 0x7

    .line 270
    const/4 v13, 0x0

    .line 271
    const/4 v9, 0x0

    .line 272
    const/4 v10, 0x0

    .line 273
    const/4 v11, 0x0

    .line 274
    invoke-static/range {v8 .. v13}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->resetHolders()V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 281
    .line 282
    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    .line 283
    .line 284
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    .line 285
    .line 286
    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    .line 287
    .line 288
    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    .line 289
    .line 290
    const-string v6, "Swipe to recent on initState.blurStart:"

    .line 291
    .line 292
    const-string v8, ",blurEnd:"

    .line 293
    .line 294
    const-string v9, ",draglayerAlpha[start="

    .line 295
    .line 296
    invoke-static {v6, v1, v8, v2, v9}, Landroidx/fragment/app/o;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v2, ",end="

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v2, "]"

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    .line 324
    .line 325
    if-eqz v0, :cond_149

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 328
    .line 329
    .line 330
    :cond_149
    iput-boolean v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecreateAlphaAndBlurAnim:Z

    .line 331
    .line 332
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_181

    .line 339
    .line 340
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_181

    .line 347
    .line 348
    new-instance v0, Lcom/android/quickstep/util/animation/AnimInfo;

    .line 349
    .line 350
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 351
    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    const v2, 0x3f59999a    # 0.85f

    .line 357
    .line 358
    .line 359
    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/animation/AnimInfo;-><init>(FF)V

    .line 360
    .line 361
    .line 362
    const/16 v1, 0x10

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/AnimInfo;->setSceneFlag(I)Lcom/android/quickstep/util/animation/AnimInfo;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    sget-object v1, Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;->SWIPE_UP_TO_RECENT:Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/AnimInfo;->setHandFollowScene(Lcom/android/quickstep/util/animation/AbsAnimation$HandFollowScene;)Lcom/android/quickstep/util/animation/AnimInfo;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    .line 375
    .line 376
    invoke-virtual {v1}, Lcom/android/launcher3/OplusDragLayer;->getAnimationImpl()Lcom/android/quickstep/util/animation/AnimationImpl;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/AnimationImpl;->createScaleHandFollowAnim(Lcom/android/quickstep/util/animation/AnimInfo;)Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 385
    .line 386
    :cond_181
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 387
    .line 388
    if-eqz v0, :cond_19e

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-eqz v0, :cond_19e

    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const/high16 v2, 0x44160000    # 600.0f

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v1, v7}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 407
    .line 408
    .line 409
    const v1, 0x3a83126f    # 0.001f

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 413
    .line 414
    .line 415
    :cond_19e
    sget-object v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;

    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->endAssistantRemoteAnima()V

    .line 418
    .line 419
    .line 420
    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 421
    .line 422
    invoke-virtual {v0}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_1bc

    .line 427
    .line 428
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isOverviewStateExitAnimRunning()Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_1bc

    .line 433
    .line 434
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_1bc

    .line 441
    .line 442
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->checkCurrentPage()V

    .line 443
    .line 444
    .line 445
    :cond_1bc
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 446
    .line 447
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetRunningTaskViewId()V

    .line 448
    .line 449
    .line 450
    return-void
.end method

.method public final isAnimatingRunning()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

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
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 14
    .line 15
    if-eqz p0, :cond_17

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-ne p0, v1, :cond_17

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

.method public final isAnimatingToOverView()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1c

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 10
    .line 11
    if-eqz v0, :cond_16

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v2, :cond_16

    .line 18
    .line 19
    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->sIsGoingOverview:Z

    .line 20
    .line 21
    if-nez v0, :cond_1a

    .line 22
    .line 23
    :cond_16
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    .line 24
    .line 25
    if-eqz p0, :cond_1b

    .line 26
    .line 27
    :cond_1a
    move v1, v2

    .line 28
    :cond_1b
    return v1

    .line 29
    :cond_1c
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 30
    .line 31
    if-eqz p0, :cond_2b

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, v2, :cond_2b

    .line 38
    .line 39
    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->sIsGoingOverview:Z

    .line 40
    .line 41
    if-eqz p0, :cond_2b

    .line 42
    .line 43
    move v1, v2

    .line 44
    :cond_2b
    return v1
.end method

.method public final isAutoExitOverviewRunning()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAutoExitOverviewRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isDragingStateOrNotGridProgressToOverview()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingState()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    goto :goto_14

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGridProgressToOverView()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_13

    .line 18
    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v1, 0x0

    .line 21
    :goto_14
    return v1
.end method

.method public final isGoHomeAnimRunning()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGoHomeAnimRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isGridProgressToOverView()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_10

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    .line 13
    .line 14
    if-eqz p0, :cond_10

    .line 15
    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    :goto_11
    return v1
.end method

.method public final isOnGoHomeRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 6
    .line 7
    if-eqz p0, :cond_10

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_10

    .line 15
    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public final isSwipeToRecentWithEmptyTask()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCountWithoutQuickSearch()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_e

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    .line 11
    .line 12
    if-nez p0, :cond_e

    .line 13
    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    return v1
.end method

.method public final onDrag(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    div-float/2addr p1, v0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->animateBackgroundScaleSpring(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onGoHome(ZLjava/lang/String;)V
    .registers 10

    .line 1
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 9
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 19
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 25
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const/16 v3, 0xa

    .line 29
    invoke-static {v3}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v5, "onGoHome("

    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v5, ", "

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v5, "), referrer:"

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v5, ", caller = "

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_4a
    sput-boolean v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->sIsGoingOverview:Z

    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    .line 86
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 88
    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    .line 91
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v3, :cond_63

    .line 95
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 97
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 100
    :cond_63
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 102
    const-string/jumbo v4, "onGoHome(), remove overviewEndListener"

    .line 105
    invoke-static {v3, v4}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v3, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    .line 110
    invoke-static {v3}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    .line 113
    invoke-static {}, Lcom/android/launcher/UiConfig;->isAlphaM()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 119
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getGpu()Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;

    move-result-object v3

    .line 123
    iget-wide v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gpuBoostFd:J

    .line 125
    invoke-virtual {v3, v4, v5}, Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;->closeAction(J)V

    .line 128
    :cond_7f
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v3, :cond_8b

    .line 132
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 134
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v3

    .line 138
    check-cast v3, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 140
    :cond_8b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_96

    const/high16 v3, 0x3fc00000    # 1.5f

    goto :goto_97

    :cond_96
    move v3, v4

    .line 152
    :goto_97
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 154
    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 156
    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_b0

    .line 162
    iget-boolean v5, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v5, :cond_b0

    if-eqz p1, :cond_b0

    .line 168
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 170
    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherState;->getBlur(Landroid/content/Context;)F

    move-result p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    .line 177
    :cond_b0
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 183
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p1, :cond_bf

    .line 187
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 192
    :cond_bf
    invoke-direct {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateAnimationParamsIfNeed(Z)V

    .line 195
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p1, :cond_c9

    .line 199
    invoke-virtual {p1, v3}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 202
    :cond_c9
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 208
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v5, "onGoHome mRecentSpringX?.animateToFinalPosition\uff1a"

    .line 215
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v3, "PRIMARY_TRANSLATE"

    .line 227
    invoke-static {p1, v3, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_e5
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p1, :cond_ec

    .line 234
    invoke-virtual {p1, v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 237
    :cond_ec
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p1, :cond_f3

    .line 241
    invoke-virtual {p1, v4}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 244
    :cond_f3
    invoke-direct {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->doBackGroundAnim(Z)V

    const/4 p1, 0x0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->animateBackgroundScaleSpring(F)V

    .line 251
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    .line 253
    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    .line 256
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelControlEnterAnimation()V

    .line 259
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    .line 261
    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 267
    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->needInterceptWallpaperAnim()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 273
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 275
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    .line 279
    const-string v2, "app_recent_exit"

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    .line 284
    :cond_11b
    const-string v0, "GO_HOME_REFERRER_CANCEL_BY_START_APP_CLOSE_WINDOW_ANIM"

    .line 286
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    .line 295
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 297
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    goto :goto_138

    .line 307
    :cond_132
    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->startRecentAlphaAnimator(F)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 311
    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    .line 313
    :goto_138
    const-string p1, "GO_HOME_REFERRER_DRAG_END_BY_ANIMATING"

    .line 315
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_143

    .line 321
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->showToggleBarLayoutBottomDialog()V

    :cond_143
    return-void
.end method

.method public final removeRecentEndListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 3
    const-string/jumbo v1, "removeRecentEndListener"

    .line 6
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_11

    .line 13
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_11
    return-void
.end method

.method public final resetPanoramaLayoutAlpha()V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_14

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusPanoramaLayout;->getMultiAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_14

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    :goto_15
    if-nez p0, :cond_18

    .line 23
    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 28
    .line 29
    .line 30
    :goto_1d
    return-void
.end method

.method public final setApproximateLineTiltAngleInActionUp(Ljava/lang/Double;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public final setAutoExitOverviewRunning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAutoExitOverviewRunning:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setGoHomeAnimRunning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isGoHomeAnimRunning:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMChangeQuickSwitch(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMIsGridAnimationStarted(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMSwipeDetector(Lcom/oplus/quickstep/touch/OplusSwipeDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    .line 2
    .line 3
    return-void
.end method

.method public final setSwipeDetector(Lcom/oplus/quickstep/touch/OplusSwipeDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    .line 2
    .line 3
    return-void
.end method

.method public final setWallPaperBlurStart(F)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/launcher3/stack/view/Stack;->Companion:Lcom/android/launcher3/stack/view/Stack$Companion;

    .line 9
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/launcher3/stack/view/Stack$Companion;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/stack/view/Stack;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 21
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    .line 25
    invoke-static {v3}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo v5, "setWallPaperBlurStart("

    .line 34
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    const-string v5, ") folder:"

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v5, ", stack:"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v5, " caller = "

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v2, v3}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_46
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_50

    .line 77
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    .line 79
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    :cond_50
    if-eqz v1, :cond_56

    .line 83
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    .line 85
    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    :cond_56
    return-void
.end method

.method public final showToggleBarLayoutBottomDialog()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/launcher3/LauncherState;

    if-eqz v0, :cond_13

    .line 17
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 27
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 29
    const-string/jumbo v2, "showToggleBarLayoutBottomDialog: overviewUi = "

    .line 32
    invoke-static {v2, v1, v0}, Lcom/android/common/util/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    :cond_22
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 37
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 43
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-eqz v1, :cond_63

    if-nez v0, :cond_63

    .line 53
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 55
    sget-object v0, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 63
    instance-of p0, v1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz p0, :cond_54

    .line 67
    check-cast v1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    .line 69
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object p0

    .line 73
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.togglebar.controller.ToggleBarLayoutUIController"

    .line 76
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    check-cast p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->showBottomDialog()V

    goto :goto_63

    .line 85
    :cond_54
    instance-of p0, v1, Lcom/android/launcher/togglebar/state/ToggleBarArrangeState;

    if-eqz p0, :cond_63

    .line 89
    check-cast v1, Lcom/android/launcher/togglebar/state/ToggleBarArrangeState;

    .line 91
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarArrangeState;->getMUiController()Lcom/android/launcher/togglebar/controller/ToggleBarArrangeUIController;

    move-result-object p0

    if-eqz p0, :cond_63

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarArrangeUIController;->reShowBottomSheet()V

    :cond_63
    :goto_63
    return-void
.end method

.method public final updatePaused(Z)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    .line 3
    invoke-virtual {v0}, Lcom/android/quickstep/LauncherActivityInterface;->removeApplyStateRunnable()V

    .line 6
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    .line 12
    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateAnimationParamsIfNeed(Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_33

    .line 18
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1a

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v1, :cond_23

    .line 31
    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    .line 33
    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 36
    :cond_23
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v1, :cond_2a

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 43
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->doBackGroundAnim(Z)V

    .line 46
    sget-object v1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    .line 48
    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    goto :goto_83

    .line 52
    :cond_33
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 54
    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    .line 64
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 70
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 72
    invoke-static {v2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_57

    .line 78
    sget-object v2, Lcom/android/launcher3/stack/view/Stack;->Companion:Lcom/android/launcher3/stack/view/Stack$Companion;

    .line 80
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 82
    invoke-virtual {v2, v3}, Lcom/android/launcher3/stack/view/Stack$Companion;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/stack/view/Stack;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 88
    :cond_57
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 90
    const-string/jumbo v3, "updatePaused, SPRING_LOADED in folder/stack, reset to NORMAL."

    .line 93
    invoke-static {v2, v3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 98
    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 104
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 107
    :cond_6a
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->createBlurAndDragLayerAlphaAnim()V

    .line 110
    invoke-direct {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->doBackGroundAnim(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_78

    .line 118
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 121
    :cond_78
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    const/4 v0, 0x3

    .line 124
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    .line 126
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 128
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 130
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 132
    :goto_83
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecentMotionPaused(Z)V

    return-void
.end method

.method public final updateRecentViewState(Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    .line 5
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 7
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 9
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    .line 11
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 15
    invoke-interface {v3, v4}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v4

    .line 19
    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOverviewGridEnabled(Z)V

    .line 22
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 24
    invoke-virtual {v3}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewFullscreenProgress()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_23

    move v3, v0

    goto :goto_24

    :cond_23
    move v3, v1

    .line 37
    :goto_24
    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/RecentsView;->setOverviewFullscreenEnabled(Z)V

    goto :goto_32

    .line 41
    :cond_28
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 43
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOverviewGridEnabled(Z)V

    .line 46
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 48
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->setOverviewFullscreenEnabled(Z)V

    :goto_32
    if-nez p1, :cond_54

    .line 53
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 55
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 67
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 75
    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 77
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    .line 85
    :cond_54
    :goto_54
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 91
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 93
    const-string/jumbo v3, "updateRecentViewState(), visible="

    .line 96
    const-string v4, ", overviewUi="

    .line 98
    invoke-static {v3, p1, v4, v0, v2}, La0/f;->c(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 101
    :cond_64
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 103
    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOverviewStateEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    if-eqz p1, :cond_72

    move v0, v1

    goto :goto_73

    :cond_72
    const/4 v0, 0x4

    .line 116
    :goto_73
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 118
    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    if-eqz p1, :cond_7f

    .line 123
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    :cond_7f
    return-void
.end method

.method public final updateStiffnessWhenFling()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move-object v0, v1

    .line 12
    :goto_b
    const/high16 v2, 0x43480000    # 200.0f

    .line 13
    .line 14
    if-nez v0, :cond_10

    .line 15
    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 18
    .line 19
    .line 20
    :goto_13
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 21
    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move-object v0, v1

    .line 30
    :goto_1d
    if-nez v0, :cond_20

    .line 31
    .line 32
    goto :goto_23

    .line 33
    :cond_20
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 34
    .line 35
    .line 36
    :goto_23
    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_70

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 45
    .line 46
    if-eqz v0, :cond_34

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move-object v0, v1

    .line 54
    :goto_35
    const/high16 v3, 0x435c0000    # 220.0f

    .line 55
    .line 56
    if-nez v0, :cond_3a

    .line 57
    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 60
    .line 61
    .line 62
    :goto_3d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 63
    .line 64
    if-eqz v0, :cond_46

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move-object v0, v1

    .line 72
    :goto_47
    if-nez v0, :cond_4a

    .line 73
    .line 74
    goto :goto_4d

    .line 75
    :cond_4a
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 76
    .line 77
    .line 78
    :goto_4d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 79
    .line 80
    if-eqz v0, :cond_56

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move-object v0, v1

    .line 88
    :goto_57
    const v3, 0x3f8f5c29    # 1.12f

    .line 89
    .line 90
    .line 91
    if-nez v0, :cond_5d

    .line 92
    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 95
    .line 96
    .line 97
    :goto_60
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 98
    .line 99
    if-eqz v0, :cond_69

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move-object v0, v1

    .line 107
    :goto_6a
    if-nez v0, :cond_6d

    .line 108
    .line 109
    goto :goto_70

    .line 110
    :cond_6d
    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 111
    .line 112
    .line 113
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerScaleAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 114
    .line 115
    if-eqz v0, :cond_7f

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_7f

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move-object v0, v1

    .line 129
    :goto_80
    if-nez v0, :cond_83

    .line 130
    .line 131
    goto :goto_86

    .line 132
    :cond_83
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 133
    .line 134
    .line 135
    :goto_86
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayerAlphaAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 136
    .line 137
    if-eqz v0, :cond_95

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_95

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move-object v0, v1

    .line 151
    :goto_96
    if-nez v0, :cond_99

    .line 152
    .line 153
    goto :goto_9c

    .line 154
    :cond_99
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 155
    .line 156
    .line 157
    :goto_9c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallpaperBlurAnim:Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;

    .line 158
    .line 159
    if-eqz v0, :cond_ab

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/HandFollowSpringAnimProxy;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_ab

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_ac

    .line 172
    :cond_ab
    move-object v0, v1

    .line 173
    :goto_ac
    if-nez v0, :cond_af

    .line 174
    .line 175
    goto :goto_b2

    .line 176
    :cond_af
    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 177
    .line 178
    .line 179
    :goto_b2
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mOverScrimAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 180
    .line 181
    if-eqz p0, :cond_ba

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :cond_ba
    if-nez v1, :cond_bd

    .line 188
    .line 189
    goto :goto_c0

    .line 190
    :cond_bd
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    .line 191
    .line 192
    .line 193
    :goto_c0
    return-void
.end method

.method public final updateSwipeDirection(FFFF)V
    .registers 10

    .line 1
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    const/4 v3, 0x0

    .line 11
    cmpg-float v4, p3, v3

    .line 12
    .line 13
    if-gez v4, :cond_10

    .line 14
    .line 15
    move v4, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v4, v1

    .line 18
    :goto_11
    xor-int/2addr v0, v4

    .line 19
    if-eqz v0, :cond_32

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 22
    .line 23
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    sub-float v0, p2, v0

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    .line 32
    .line 33
    cmpl-float v0, v0, v4

    .line 34
    .line 35
    if-lez v0, :cond_36

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 38
    .line 39
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    cmpl-float p2, p3, v3

    .line 42
    .line 43
    if-lez p2, :cond_2e

    .line 44
    .line 45
    move p2, v2

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move p2, v1

    .line 48
    :goto_2f
    iput p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    .line 49
    .line 50
    goto :goto_36

    .line 51
    :cond_32
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 52
    .line 53
    iput p2, p3, Landroid/graphics/PointF;->y:F

    .line 54
    .line 55
    :cond_36
    :goto_36
    iget p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    .line 56
    .line 57
    const/4 p3, 0x4

    .line 58
    if-ne p2, p3, :cond_3d

    .line 59
    .line 60
    move p2, v2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move p2, v1

    .line 63
    :goto_3e
    cmpl-float p4, p4, v3

    .line 64
    .line 65
    if-lez p4, :cond_43

    .line 66
    .line 67
    move v1, v2

    .line 68
    :cond_43
    xor-int/2addr p2, v1

    .line 69
    if-eqz p2, :cond_61

    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 72
    .line 73
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 74
    .line 75
    sub-float p2, p1, p2

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    .line 82
    .line 83
    cmpl-float p2, p2, v0

    .line 84
    .line 85
    if-lez p2, :cond_65

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 88
    .line 89
    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 90
    .line 91
    if-lez p4, :cond_5d

    .line 92
    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    const/4 p3, 0x3

    .line 95
    :goto_5e
    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    .line 96
    .line 97
    goto :goto_65

    .line 98
    :cond_61
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    .line 99
    .line 100
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 101
    .line 102
    :cond_65
    :goto_65
    return-void
.end method

.method public updateWhenResetTaskVisuals()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    .line 16
    :goto_f
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v2, :cond_21

    .line 20
    invoke-virtual {v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 26
    invoke-virtual {v2}, Lcom/android/quickstep/util/animation/SpringForce;->getFinalPosition()F

    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 34
    :cond_21
    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v5, "updateWhenResetTaskVisuals, targetState="

    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, ", mRecentSpringX finalPosition="

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v5, ", mRecentSpringX.isRunning="

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz v1, :cond_6c

    .line 84
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6c

    .line 94
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 96
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 102
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p0, :cond_6c

    .line 106
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    :cond_6c
    return-void
.end method
