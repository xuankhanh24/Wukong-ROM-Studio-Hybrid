.class public final Lcom/android/launcher/settings/LauncherSettingsFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source "LauncherSettingsFragment.kt"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0015\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0002\u00b3\u0001\u0018\u0000 \u00bb\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00bb\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u0005J#\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ+\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\r\u0010 \u001a\u00020\u0006\u00a2\u0006\u0004\u0008 \u0010\u0005J\r\u0010!\u001a\u00020\u0006\u00a2\u0006\u0004\u0008!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0005J\u0015\u0010\'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010-\u001a\u00020\n2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00082\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00083\u0010\u0005J\u000f\u00104\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00084\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00085\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00086\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00087\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00088\u0010\u0005J\u000f\u00109\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00089\u0010\u0005J\u000f\u0010:\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008:\u0010\u0005J\u000f\u0010;\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008?\u0010\u0005J\u0017\u0010A\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010C\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u00102\u0008\u0010,\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u0019\u0010G\u001a\u0004\u0018\u00010\u00102\u0006\u0010F\u001a\u00020EH\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u0019\u0010K\u001a\u00020\u00062\u0008\u0010J\u001a\u0004\u0018\u00010IH\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010N\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008N\u00101J\u0019\u0010O\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008O\u0010PJ\u0019\u0010S\u001a\u00020\u00062\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010U\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008U\u0010\u0005J\u0019\u0010V\u001a\u00020\u00062\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0002\u00a2\u0006\u0004\u0008V\u0010TJ\u0017\u0010W\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u000f\u0010Y\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008Y\u0010\u0005J\u000f\u0010Z\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008Z\u0010\u0005J\u0017\u0010[\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008[\u0010XJ\u000f\u0010]\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008_\u0010\u0005J\u000f\u0010`\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008`\u0010\u0005J\u0011\u0010a\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010c\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008c\u0010XJ\u000f\u0010d\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008d\u0010\u0005J\u000f\u0010e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008e\u0010\u0005R\u001b\u0010k\u001a\u00020f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010jR\u0018\u0010m\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0018\u0010s\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010rR\u0018\u0010t\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010nR\u0018\u0010u\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010nR\u0018\u0010w\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR&\u0010|\u001a\u0012\u0012\u0004\u0012\u00020z0yj\u0008\u0012\u0004\u0012\u00020z`{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0018\u0010~\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010rR\u0018\u0010\u007f\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010rR\u0019\u0010\u0080\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0084\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0084\u0001R\u001a\u0010\u0087\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010rR\u001a\u0010\u0088\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010rR\u001a\u0010\u0089\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010rR\u001a\u0010\u008a\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008a\u0001\u0010rR\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008d\u0001\u0010nR\u001a\u0010\u008e\u0001\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008e\u0001\u0010nR\u001a\u0010\u008f\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008f\u0001\u0010rR\u001a\u0010\u0090\u0001\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0090\u0001\u0010xR\u001a\u0010\u0091\u0001\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0091\u0001\u0010xR\u0019\u0010\u0092\u0001\u001a\u00020Q8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0094\u0001\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u001b\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0019\u0010\u0098\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0081\u0001R\u001c\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u0081\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u001c\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u00a0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R(\u0010\u00a3\u0001\u001a\u0012\u0012\u0004\u0012\u00020z0yj\u0008\u0012\u0004\u0012\u00020z`{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a3\u0001\u0010}R(\u0010\u00a4\u0001\u001a\u0012\u0012\u0004\u0012\u00020z0yj\u0008\u0012\u0004\u0012\u00020z`{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a4\u0001\u0010}R\u0019\u0010\u00a5\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u0081\u0001R\u001b\u0010\u00a6\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001b\u0010\u00a8\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a7\u0001R\u001b\u0010\u00a9\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00a7\u0001R\u001a\u0010\u00aa\u0001\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00aa\u0001\u0010nR\u001a\u0010\u00ab\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ab\u0001\u0010rR\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u00ac\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u0018\u0010\u00b0\u0001\u001a\u00030\u00af\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\u0018\u0010\u00b2\u0001\u001a\u00030\u00af\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b1\u0001R\u0018\u0010\u00b4\u0001\u001a\u00030\u00b3\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u001c\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00b6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0016\u0010\u00ba\u0001\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b9\u0001\u0010b\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lcom/android/launcher/settings/LauncherSettingsFragment;",
        "Lcom/android/launcher/settings/BaseSettingsFragment;",
        "Landroidx/preference/Preference$c;",
        "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
        "<init>",
        "()V",
        "Lm9/n;",
        "initLayoutUpgradeGuide",
        "Landroid/content/Intent;",
        "intent",
        "",
        "isActivityDisplay",
        "(Landroid/content/Intent;)Z",
        "initRecommended",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "rootKey",
        "onCreatePreferences",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onCreateRecyclerView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "generateBranchPreference",
        "updateBranchSearchPreference",
        "onStop",
        "onDestroy",
        "onStart",
        "Lcom/android/launcher/breeno/UIRefreshEvent;",
        "event",
        "onBusEvent",
        "(Lcom/android/launcher/breeno/UIRefreshEvent;)V",
        "Landroidx/preference/Preference;",
        "preference",
        "",
        "newValue",
        "onPreferenceChange",
        "(Landroidx/preference/Preference;Ljava/lang/Object;)Z",
        "isFold",
        "onFoldStateChange",
        "(Z)V",
        "onBindPreferences",
        "onDestroyView",
        "initPreferences",
        "initTabletLayoutUpgradeGuide",
        "checkPreferenceEnable",
        "updateLauncherStateInfo",
        "updateAnimSpeed",
        "updateLauncherMode",
        "updateLauncherModeRelatedView",
        "updateIconFallenEntry",
        "updatePageTurnEntry",
        "updateWidgetOptimizeEntry",
        "updateExpandDockEntry",
        "syncLauncherArrangementModeStatus",
        "spKey",
        "syncStatus",
        "(Ljava/lang/String;)V",
        "changeStatus",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "index",
        "getAppStartupAnimSpeedStatusText",
        "(I)Ljava/lang/String;",
        "Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;",
        "colorSwitchLoadingPreference",
        "stopLoading",
        "(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V",
        "showShowDialog",
        "resetSlideDownState",
        "startActivitySafely",
        "(Landroid/content/Intent;)V",
        "Landroid/content/Context;",
        "context",
        "initSlideDownState",
        "(Landroid/content/Context;)V",
        "resetPrefIfGlobalSearchDisabled",
        "updateSlideDownState",
        "onClickSlideDownPopMenuList",
        "(Ljava/lang/String;)Z",
        "initBrowserNewsSwitch",
        "updateBrowserNewsSwitch",
        "onClickSlideUpPopMenuList",
        "",
        "getLayoutFromSharedPrefs",
        "()[I",
        "initIndicatorEntryMenu",
        "updateIndicatorEntryMenuState",
        "getIndicatorEntryTitle",
        "()Ljava/lang/String;",
        "onClickIndicatorEntryMenu",
        "checkHighlightDelayIfNeed",
        "rmCheckHighlightDelayIfNeed",
        "Landroid/os/HandlerThread;",
        "handlerThread$delegate",
        "Lm9/c;",
        "getHandlerThread",
        "()Landroid/os/HandlerThread;",
        "handlerThread",
        "Lcom/coui/appcompat/preference/COUISwitchPreference;",
        "mLauncherDoubleClickLockSwitch",
        "Lcom/coui/appcompat/preference/COUISwitchPreference;",
        "mLauncherFingerClearDotSwitch",
        "Lcom/coui/appcompat/preference/COUIJumpPreference;",
        "mOpenBottomSearchBoxEntry",
        "Lcom/coui/appcompat/preference/COUIJumpPreference;",
        "mDockSearchBoxForQSB",
        "mLauncherSearchEntryEnableSwitch",
        "mLauncherBreenoEntryEnableSwitch",
        "Lcom/coui/appcompat/preference/COUIMenuPreference;",
        "mLauncherIndicatorEntryMenu",
        "Lcom/coui/appcompat/preference/COUIMenuPreference;",
        "Ljava/util/ArrayList;",
        "Lcom/coui/appcompat/poplist/PopupListItem;",
        "Lkotlin/collections/ArrayList;",
        "mLauncherBottomButtonItemList",
        "Ljava/util/ArrayList;",
        "mSystemMaterialBlurSettingJump",
        "mPageTurnSettingJump",
        "isCompactArrangementting",
        "Z",
        "Landroidx/preference/PreferenceCategory;",
        "mLauncherCategory",
        "Landroidx/preference/PreferenceCategory;",
        "mLauncherGestureCategory",
        "mLauncherMoreCategory",
        "mLauncherLayoutEntry",
        "mLauncherModelEntry",
        "mLauncherIconFallenEntry",
        "mLauncherDockExpandEntry",
        "mLauncherArrangementModeSwitch",
        "Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;",
        "mLauncherLockedSwitch",
        "mLauncherWidgetOptimizeSwitch",
        "mAppStartupSpeedPreference",
        "mBrowserNewsSwitch",
        "mLaucherSlideListPreference",
        "mContext",
        "Landroid/content/Context;",
        "mCurLauncherMode",
        "I",
        "mFrom",
        "Ljava/lang/String;",
        "mAodSupport",
        "Lcom/android/launcher/settings/LauncherSettingsDynamicController;",
        "mDynamicController",
        "Lcom/android/launcher/settings/LauncherSettingsDynamicController;",
        "mIsFirstOnResume",
        "Lcom/coui/appcompat/preference/COUIRecommendedPreference;",
        "mRecommendedPreference",
        "Lcom/coui/appcompat/preference/COUIRecommendedPreference;",
        "Landroid/app/Dialog;",
        "mShowingDialog",
        "Landroid/app/Dialog;",
        "mSlideDownItemList",
        "mSlideUpItemList",
        "mFromMainPage",
        "mBranchSearchSettingPreference",
        "Landroidx/preference/Preference;",
        "mLayoutUpgradeGuidePreference",
        "mTabletLayoutUpgradeGuidePreference",
        "mBranchPreferenceForRLM",
        "mDockerBGPreference",
        "Landroidx/appcompat/app/f;",
        "mResetPullDownHintDialog",
        "Landroidx/appcompat/app/f;",
        "Landroid/database/ContentObserver;",
        "mAssistScreenSwitchObserver",
        "Landroid/database/ContentObserver;",
        "mShelfAssistScreenEnableObserver",
        "com/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1",
        "mCompatStrategyChangeListener",
        "Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;",
        "Ljava/lang/Runnable;",
        "mHighLightRunnable",
        "Ljava/lang/Runnable;",
        "getTitle",
        "title",
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
.field private static final ACTION_CAROUSEL_WALLPAPER:Ljava/lang/String; = "android.intent.action.VIEW"

.field private static final ACTION_ICON:Ljava/lang/String; = "com.oplus.uxdesign.icon.ACTION_UX_GUIDE_ACTIVITY"

.field private static final ACTION_ICON_ACTIVITY:Ljava/lang/String; = "com.oplus.uxdesign.icon.UxIconStyleActivity"

.field public static final ACTION_JUMP_TO_MATERIAL_BLUR_SETTING:Ljava/lang/String; = "com.oplus.uxdesign.action.JUMP_TO_MATERIAL_BLUR_SETTING"

.field public static final ACTION_LAUNCHER_DOCK_EXPAND:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

.field public static final ACTION_LAUNCHER_ICON_FALLEN:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

.field public static final ACTION_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

.field public static final ACTION_LAUNCHER_QSB_SETTINGS:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_QSB_SETTINGS"

.field public static final ACTION_LAUNCHER_SETTINGS_HOTSEAT_BG:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_SETTINGS_HOTSEAT_BG"

.field public static final ACTION_LAUNCHER_START_UP_SPEED_SETTING:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_START_UP_SPEED"

.field private static final ACTION_LOCK:Ljava/lang/String; = "oplus.keyguard.action.KEYGUARD_SETTING"

.field private static final ACTION_LOCK_ACTIVITY:Ljava/lang/String; = "com.oplus.keyguard.keyguardsettings.KeyguardLauncherSettingsActivity"

.field private static final ACTION_NAVIGATION_BAR_ACTIVITY:Ljava/lang/String; = "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

.field private static final ACTION_NAVIGATION_BAR_SETTINGS:Ljava/lang/String; = "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

.field private static final ACTION_NEW_DOUBLE_TAP:Ljava/lang/String; = "com.oplus.action.oplusGestureGuide"

.field private static final ACTION_NEW_DOUBLE_TAP_ACTIVITY:Ljava/lang/String; = "com.oplus.gesture.guide.GestureMainActivity"

.field private static final ACTION_TASKBAR_SETTING_ACTIVITY:Ljava/lang/String; = "com.android.launcher.settings.LauncherTaskbarSettingActivity"

.field private static final ACTION_TASKBAR_SETTING_SETTING:Ljava/lang/String; = "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

.field private static final ACTION_TASKBAR_SETTING_TABLE_ACTIVITY:Ljava/lang/String; = "com.android.launcher.settings.LauncherTabletTaskbarSettingActivity"

.field private static final ACTIVITY_CAROUSEL_WALLPAPER_V1:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.WallpaperActivity"

.field private static final ACTIVITY_CAROUSEL_WALLPAPER_V2:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.WallPaperActivity"

.field private static final BOTTOM_RECOMMEND_KEY:Ljava/lang/String; = "bottom_recommended"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY:Ljava/lang/String; = "smart_search_settings_title"

.field private static final BRANCH_SEARCH_URI:Ljava/lang/String; = "content://com.oppo.quicksearchbox.FeatureProvider"

.field private static final CHECK_HIGH_LIGHT_DELAY:J = 0x12cL

.field private static final COLOR_SWITH_LODING_DELAY:I = 0x3e8

.field public static final Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

.field private static final ERROR_TITLE:Ljava/lang/String; = "startActivity E: "

.field private static final EXP_ACTION_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.ui.GUIDE_ACTION"

.field private static final EXP_ACTIVITY_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial.activities.CarouselWallpapersActivity"

.field public static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final INTENT_EXTRA_BACK_ACTION:Ljava/lang/String; = "back_action"

.field private static final IS_IN_SIMPLE_MODE:Ljava/lang/String; = "is_in_simple_mode"

.field public static final KEY_APP_UPDATE_DOT:Ljava/lang/String; = "app_update_dot"

.field public static final KEY_ASSISTANT_SCREEN_TYPE:Ljava/lang/String; = "assistant_screen_type"

.field private static final KEY_CAROUSEL_WALLPAPER_OPEN_FROM:Ljava/lang/String; = "wallpaper_open_from_key"

.field public static final KEY_DOCKER_BG_SWITCH:Ljava/lang/String; = "key_docker_bg_switch"

.field public static final KEY_DOCKER_BG_SWITCH_RED_DOT:Ljava/lang/String; = "key_docker_bg_switch_red_dot"

.field public static final KEY_DOCK_EXPAND:Ljava/lang/String; = "key_dock_expand"

.field public static final KEY_DOCK_SEARCH_FOR_QSB:Ljava/lang/String; = "launcher_dock_search_for_qsb"

.field public static final KEY_FOLDER_BG_SWITCH:Ljava/lang/String; = "key_folder_bg_switch"

.field public static final KEY_ICON_FALLEN:Ljava/lang/String; = "key_icon_fallen"

.field public static final KEY_LAUNCHER_BREENO_ENTRY_ENABLE:Ljava/lang/String; = "launcher_breeno_entry_enable"

.field public static final KEY_LAUNCHER_BROWSER_NEWS:Ljava/lang/String; = "browser_news_switch"

.field public static final KEY_LAUNCHER_CATEGORY:Ljava/lang/String; = "category_launcher_layout"

.field public static final KEY_LAUNCHER_DOUBLE_CLICK_LOCK:Ljava/lang/String; = "launcher_double_click_lock"

.field public static final KEY_LAUNCHER_FINGER_CLEAR_DOT:Ljava/lang/String; = "launcher_finger_clear_dot"

.field public static final KEY_LAUNCHER_GESTURE:Ljava/lang/String; = "category_launcher_gesture"

.field public static final KEY_LAUNCHER_INDICATOR_ENTRY:Ljava/lang/String; = "launcher_indicator_entry"

.field public static final KEY_LAUNCHER_IS_COMPACT_ARRANGEMENT:Ljava/lang/String; = "launcher_is_compact_arrangement"

.field public static final KEY_LAUNCHER_IS_SHOW_SEARCH_BOX:Ljava/lang/String; = "launcher_is_show_search_box"

.field public static final KEY_LAUNCHER_LAYOUT:Ljava/lang/String; = "launcher_layout"

.field public static final KEY_LAUNCHER_LOCKED:Ljava/lang/String; = "launcher_locked"

.field public static final KEY_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field public static final KEY_LAUNCHER_MORE:Ljava/lang/String; = "category_launcher_vfx"

.field public static final KEY_LAUNCHER_PAGE:Ljava/lang/String; = "launcher_page"

.field public static final KEY_LAUNCHER_RECENT_MANAGE:Ljava/lang/String; = "launcher_recent_manage"

.field public static final KEY_LAUNCHER_SEARCH_ENTRY_ENABLE:Ljava/lang/String; = "launcher_search_entry_enable"

.field public static final KEY_LAUNCHER_SLIDE_DOWN:Ljava/lang/String; = "launcher_slide_down"

.field public static final KEY_LAYOUT_UPGRADE_GUIDE_SETTINGS:Ljava/lang/String; = "launcher_layout_upgrade_guide_settings"

.field public static final KEY_PAGE_TURN_JUMP:Ljava/lang/String; = "page_turn_jump"

.field public static final KEY_PERSONALITY_ICON_STYLE:Ljava/lang/String; = "personality_icon_style"

.field public static final KEY_PERSONALITY_LAUNCHER_LAYOUT:Ljava/lang/String; = "personality_launcher_layout"

.field public static final KEY_SEARCH_STYLE_SETTING_ENTRY:Ljava/lang/String; = "launcher_search_style_setting_entry"

.field public static final KEY_SET_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_startup_anim_speed"

.field public static final KEY_SET_SUBSCRIPTION:Ljava/lang/String; = "entry_subscription"

.field private static final KEY_SLIDE_VIEW_TO_SETTING:Ljava/lang/String; = "is_slide_view_to_setting_key"

.field public static final KEY_SYSTEM_MATERIAL_BLUR_JUMP:Ljava/lang/String; = "system_material_blur_jump"

.field public static final KEY_SYS_MATERIAL_BLUR_SWITCH:Ljava/lang/String; = "key_material_blur_switch_pref"

.field public static final KEY_TABLET_LAYOUT_UPGRADE_GUIDE_SETTINGS:Ljava/lang/String; = "launcher_tablet_layout_upgrade_guide_settings"

.field private static final KEY_WALLPAPER_SETTING:Ljava/lang/String; = "key_from"

.field public static final KEY_WIDGET_OPTIMIZE_SETTING_ENTRY:Ljava/lang/String; = "launcher_widget_optimize_setting_entry"

.field public static final LAUNCHER_DOCK_EXPAND_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherDockExpandSettingActivity"

.field public static final LAUNCHER_ICON_FALLEN_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherIconFallenSettingActivity"

.field public static final LAUNCHER_MODE_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherModeSettingActivity"

.field public static final LAUNCHER_MODE_DRAWER:I = 0x2

.field public static final LAUNCHER_MODE_SIMPLE:I = 0x3

.field public static final LAUNCHER_QSB_SETTINGS_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherQsbSettingsActivity"

.field public static final METHOD_GET_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "getLauncherModeSettings"

.field private static final METHOD_IS_IN_SIMPLE_MODE:Ljava/lang/String; = "METHOD_IS_IN_SIMPLE_MODE"

.field private static final PACKAGE_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial"

.field private static final PACKAGE_ICON_SETTING:Ljava/lang/String; = "com.oplus.uxdesign"

.field private static final PACKAGE_LOCK_SETTING:Ljava/lang/String; = "com.oplus.notificationmanager"

.field private static final PACKAGE_NAVIGATION_BAR:Ljava/lang/String; = "com.android.settings"

.field private static final PACKAGE_NEW_DOUBLE_TAP_SETTING:Ljava/lang/String; = "com.oplus.gesture"

.field private static final PACKAGE_TASKBAR_SETTING:Ljava/lang/String; = "com.android.launcher"

.field public static final PERSONALITY_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.uxdesign"

.field public static final SYSTEM_MATERIAL_BLUR_SETTING_CLS:Ljava/lang/String; = "com.oplus.uxdesign.blurSettings.MaterialBlurSettingsActivity"

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsFragment"

.field private static final URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

.field private static final VALUE_CAROUSEL_WALLPAPER_OPEN_FROM:I

.field private static final VALUE_WALLPAPER_SETTING:Ljava/lang/String;

.field private static mIsHiAssistantAppEnable:Z

.field private static mIsShelfAppEnable:Z


# instance fields
.field private final handlerThread$delegate:Lm9/c;

.field private isCompactArrangementting:Z

.field private mAodSupport:Z

.field private mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private final mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

.field private mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mBranchSearchSettingPreference:Landroidx/preference/Preference;

.field private mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private final mCompatStrategyChangeListener:Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;

.field private mContext:Landroid/content/Context;

.field private mCurLauncherMode:I

.field private mDockSearchBoxForQSB:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

.field private mFrom:Ljava/lang/String;

.field private mFromMainPage:Z

.field private mHighLightRunnable:Ljava/lang/Runnable;

.field private mIsFirstOnResume:Z

.field private mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

.field private mLauncherBottomButtonItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherCategory:Landroidx/preference/PreferenceCategory;

.field private mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherFingerClearDotSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

.field private mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

.field private mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

.field private mOpenBottomSearchBoxEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

.field private mResetPullDownHintDialog:Landroidx/appcompat/app/f;

.field private final mShelfAssistScreenEnableObserver:Landroid/database/ContentObserver;

.field private mShowingDialog:Landroid/app/Dialog;

.field private mSlideDownItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideUpItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemMaterialBlurSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mTabletLayoutUpgradeGuidePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    .line 9
    sget v0, Lcom/android/common/util/BrandComponentUtils;->LAUNCHERSETTINGSFRAGMENT_VALUE_WALLPAPER_SETTING:I

    .line 11
    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "pictorial://wallpaper"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    .line 29
    sput-boolean v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment$handlerThread$2;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsFragment$handlerThread$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/a;->b(Lkotlin/jvm/functions/Function0;)Lm9/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->handlerThread$delegate:Lm9/c;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBottomButtonItemList:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {}, Lcom/oplus/basecommon/thread/OplusExecutors;->getUI_HELPER_EXECUTOR()Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/oplus/basecommon/thread/LooperExecutor;->getHandler()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/launcher/settings/LauncherSettingsFragment$mAssistScreenSwitchObserver$1;

    .line 45
    .line 46
    invoke-direct {v1, p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment$mAssistScreenSwitchObserver$1;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    .line 50
    .line 51
    invoke-static {}, Lcom/oplus/basecommon/thread/OplusExecutors;->getUI_HELPER_EXECUTOR()Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/oplus/basecommon/thread/LooperExecutor;->getHandler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/android/launcher/settings/LauncherSettingsFragment$mShelfAssistScreenEnableObserver$1;

    .line 60
    .line 61
    invoke-direct {v1, p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment$mShelfAssistScreenEnableObserver$1;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/os/Handler;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShelfAssistScreenEnableObserver:Landroid/database/ContentObserver;

    .line 65
    .line 66
    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCompatStrategyChangeListener:Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;

    .line 72
    .line 73
    new-instance v0, Lcom/android/launcher/c1;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-direct {v0, p0, v1}, Lcom/android/launcher/c1;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mHighLightRunnable:Ljava/lang/Runnable;

    .line 80
    .line 81
    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMIsHiAssistantAppEnable$cp()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMIsShelfAppEnable$cp()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLauncherBreenoEntryEnableSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLauncherCategory$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLauncherIndicatorEntryMenu$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUIMenuPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLauncherLockedSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLauncherSearchEntryEnableSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMOpenBottomSearchBoxEntry$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUIJumpPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mOpenBottomSearchBoxEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMRecommendedPreference$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUIRecommendedPreference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMSlideDownItemList$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getURI_CAROUSEL_WALLPAPER$cp()Landroid/net/Uri;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$initSlideDownState(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initSlideDownState(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$resetSlideDownState(Lcom/android/launcher/settings/LauncherSettingsFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->resetSlideDownState(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCompactArrangementting$p(Lcom/android/launcher/settings/LauncherSettingsFragment;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMIsHiAssistantAppEnable$cp(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMIsShelfAppEnable$cp(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$stopLoading(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$syncLauncherArrangementModeStatus(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncLauncherArrangementModeStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateSlideDownState(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateSlideDownState(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/Launcher;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncLauncherArrangementModeStatus$lambda$30$lambda$29(Lcom/android/launcher3/Launcher;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final changeStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    const-string p2, "LauncherSettingsFragment"

    .line 3
    const-string v0, "changeStatus b :"

    .line 5
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_26

    .line 9
    const-string/jumbo v2, "mContext"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_1a0

    goto/16 :goto_18b

    .line 19
    :sswitch_12
    :try_start_12
    const-string/jumbo v0, "is_launcher_layout_locked"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_18b

    .line 30
    :cond_1d
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_29

    .line 34
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    goto :goto_29

    :catchall_26
    move-exception p0

    goto/16 :goto_18e

    :cond_29
    :goto_29
    xor-int/lit8 p1, v4, 0x1

    .line 44
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_30

    goto :goto_33

    .line 49
    :cond_30
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 52
    :goto_33
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    .line 54
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_3d

    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    move-object v3, p0

    .line 63
    :goto_3e
    invoke-virtual {v0, v3, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setLauncherLayoutLocked(Landroid/content/Context;Z)V

    goto/16 :goto_18b

    .line 68
    :sswitch_43
    const-string/jumbo v1, "is_optimize_widget"

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto/16 :goto_18b

    .line 79
    :cond_4e
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v1, :cond_57

    .line 83
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    goto :goto_58

    :cond_57
    move v1, v4

    :goto_58
    xor-int/lit8 v1, v1, 0x1

    .line 91
    iget-object v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v5, :cond_5f

    goto :goto_62

    .line 96
    :cond_5f
    invoke-virtual {v5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    :goto_62
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p2, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_77
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_7f

    .line 124
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    .line 128
    :cond_7f
    invoke-static {p0, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p0, 0x2

    .line 132
    invoke-static {v1, v4, p0, v3}, Lcom/android/launcher3/widget/WidgetAlignUtils;->onOptimizeWidget$default(ZZILjava/lang/Object;)V

    goto/16 :goto_18b

    .line 137
    :sswitch_88
    const-string/jumbo v0, "is_breeno_entry_enable"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto/16 :goto_18b

    .line 148
    :cond_93
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_9b

    .line 152
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    :cond_9b
    xor-int/lit8 p1, v4, 0x1

    .line 158
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_a2

    goto :goto_a5

    .line 163
    :cond_a2
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 166
    :goto_a5
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 172
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_b3

    .line 176
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_b3
    if-eqz v0, :cond_d3

    .line 182
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 188
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 194
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 200
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    .line 204
    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_d3

    .line 208
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    move-result-object v3

    .line 212
    :cond_d3
    invoke-virtual {v1, p0, p1, v3}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setBreenoSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/IndicatorEntry;)V

    .line 215
    invoke-static {}, Lcom/android/statistics/WidgetCardStatisticsManager;->getInstance()Lcom/android/statistics/WidgetCardStatisticsManager;

    move-result-object p0

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickIndicatorBreenoEntrySwitch(Z)V

    goto/16 :goto_18b

    .line 224
    :sswitch_df
    const-string/jumbo v0, "is_finger_clear_dot"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_18b

    .line 235
    :cond_ea
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherFingerClearDotSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_f2

    .line 239
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    :cond_f2
    xor-int/lit8 v0, v4, 0x1

    .line 245
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherFingerClearDotSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_f9

    goto :goto_fc

    .line 250
    :cond_f9
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    :goto_fc
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_104

    .line 257
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_105

    :cond_104
    move-object v3, p0

    .line 262
    :goto_105
    invoke-static {v3, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_18b

    .line 267
    :sswitch_10a
    const-string/jumbo v0, "is_search_entry_enable"

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_115

    goto/16 :goto_18b

    .line 278
    :cond_115
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_11d

    .line 282
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    :cond_11d
    xor-int/lit8 p1, v4, 0x1

    .line 288
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_124

    goto :goto_127

    .line 293
    :cond_124
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 296
    :goto_127
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 300
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 302
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_135

    .line 306
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_135
    if-eqz v0, :cond_155

    .line 312
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_155

    .line 318
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_155

    .line 324
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_155

    .line 330
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    .line 334
    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_155

    .line 338
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    move-result-object v3

    .line 342
    :cond_155
    invoke-virtual {v1, p0, p1, v3}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setSearchSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/IndicatorEntry;)V

    .line 345
    invoke-static {}, Lcom/android/statistics/WidgetCardStatisticsManager;->getInstance()Lcom/android/statistics/WidgetCardStatisticsManager;

    move-result-object p0

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickSearchEntrySwitch(Z)V

    goto :goto_18b

    .line 353
    :sswitch_160
    const-string/jumbo v0, "is_double_click_lock"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    goto :goto_18b

    .line 363
    :cond_16a
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_172

    .line 367
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    :cond_172
    xor-int/lit8 v0, v4, 0x1

    .line 373
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_179

    goto :goto_17c

    .line 378
    :cond_179
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 381
    :goto_17c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_184

    .line 385
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_185

    :cond_184
    move-object v3, p0

    .line 390
    :goto_185
    invoke-static {v3, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 393
    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setOplusCustomizeGestureDoubleTouchOffLauncher(Z)V

    .line 396
    :goto_18b
    sget-object p0, Lm9/n;->a:Lm9/n;
    :try_end_18d
    .catchall {:try_start_12 .. :try_end_18d} :catchall_26

    goto :goto_192

    .line 399
    :goto_18e
    invoke-static {p0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    .line 403
    :goto_192
    invoke-static {p0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_19e

    .line 409
    const-string/jumbo p1, "setButtonStatus :"

    .line 412
    invoke-static {p1, p2, p0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19e
    return-void

    nop

    :sswitch_data_1a0
    .sparse-switch
        -0x15405525 -> :sswitch_160
        -0x13d5136e -> :sswitch_10a
        0x9089976 -> :sswitch_df
        0x17003229 -> :sswitch_88
        0x421750d1 -> :sswitch_43
        0x5f4fde15 -> :sswitch_12
    .end sparse-switch
.end method

.method private final checkHighlightDelayIfNeed()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mHighLightRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_1c

    .line 4
    .line 5
    const-string v1, "LauncherSettingsFragment"

    .line 6
    .line 7
    const-string v2, "checkHighlightDelayIfNeed start"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1c

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1c

    .line 23
    .line 24
    const-wide/16 v1, 0x12c

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method private final checkPreferenceEnable()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    .line 3
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 7
    const-string/jumbo v1, "mContext"

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 14
    :cond_d
    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 21
    const-string v0, "LauncherSettingsFragment"

    .line 23
    const-string v2, " checkPreferenceEnable, the system desktop is locked."

    .line 25
    invoke-static {v0, v2}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 37
    :goto_24
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_29

    goto :goto_2c

    .line 42
    :cond_29
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 45
    :goto_2c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_31

    goto :goto_34

    .line 50
    :cond_31
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 53
    :goto_34
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_39

    goto :goto_55

    .line 58
    :cond_39
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_55

    .line 62
    :cond_3d
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_42

    goto :goto_45

    .line 67
    :cond_42
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 70
    :goto_45
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_4a

    goto :goto_4d

    .line 75
    :cond_4a
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 78
    :goto_4d
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_52

    goto :goto_55

    .line 83
    :cond_52
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_55
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$8(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->stopLoading$lambda$36(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->resetSlideDownState$lambda$38(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->mHighLightRunnable$lambda$45(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final generateBranchPreference$lambda$24$lambda$23(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    const-string p2, "$this_apply"

    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string/jumbo p2, "this$0"

    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 21
    iget-object p1, p1, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1f

    .line 25
    const-string/jumbo p1, "mContext"

    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    .line 36
    invoke-static {p1, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->setBranchSearchValue(Landroid/content/Context;I)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 6
    const-string/jumbo p0, "mContext"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 17
    sget v1, Lcom/android/launcher3/R$array;->app_startup_anim_speed_settings:I

    .line 19
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 23
    const-string/jumbo v1, "getStringArray(...)"

    .line 25
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length v1, p0

    if-le v1, p1, :cond_21

    .line 31
    aget-object v0, p0, p1

    :cond_21
    return-object v0
.end method

.method public static final getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final getHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->handlerThread$delegate:Lm9/c;

    .line 2
    .line 3
    invoke-interface {p0}, Lm9/c;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/HandlerThread;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getIndicatorEntryTitle()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 3
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 7
    const-string/jumbo v1, "mContext"

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 14
    :cond_d
    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    .line 26
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_breeno:I

    .line 28
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 33
    :cond_20
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_breeno:I

    .line 35
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 40
    :cond_27
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_search:I

    .line 42
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 47
    :cond_2e
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_none:I

    .line 49
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    :goto_34
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getLayoutFromSharedPrefs()[I
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    new-array v1, v1, [I

    .line 8
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 11
    const-string/jumbo v4, "mContext"

    if-nez v2, :cond_13

    .line 16
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    .line 20
    :cond_13
    const-string/jumbo v5, "layout_cellcount_x"

    const/4 v6, 0x0

    .line 24
    aget v7, v0, v6

    .line 26
    invoke-static {v2, v5, v7}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 30
    aput v2, v1, v6

    .line 32
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_27

    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    move-object v3, p0

    .line 41
    :goto_28
    const-string/jumbo p0, "layout_cellcount_y"

    const/4 v2, 0x1

    .line 45
    aget v0, v0, v2

    .line 47
    invoke-static {v3, p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 51
    aput p0, v1, v2

    return-object v1
.end method

.method public static final getSlideDownItemList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getSlideDownItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/android/launcher3/LauncherAppState;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$12(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/android/launcher3/LauncherAppState;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic i(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$9(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final initBrowserNewsSwitch()V
    .registers 14

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_111

    .line 8
    const-string v2, "browser_news_switch"

    .line 10
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 14
    check-cast v2, Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 16
    iput-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v2, :cond_14

    goto :goto_17

    .line 21
    :cond_14
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 24
    :goto_17
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 26
    new-instance v3, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 32
    const-string v5, "BrowserUtils"

    .line 34
    const-string v6, "getBrowserNewsResource NameNotFoundException"

    .line 36
    const-string v7, "getBrowserNewsResource NotFoundException"

    const/4 v8, 0x0

    if-eqz v4, :cond_a5

    .line 41
    :try_start_28
    sget v9, Lcom/android/common/util/BrandComponentUtils;->PACKAGE_HEYTAP_BROWSER:I

    .line 43
    invoke-static {v9}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_54

    .line 49
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 53
    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 57
    const-string/jumbo v11, "getResourcesForApplication(...)"

    .line 59
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v11, "app_feeds_slide_up_name"

    .line 64
    const-string/jumbo v12, "string"

    .line 67
    invoke-virtual {v10, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 71
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 75
    sget-object v5, Lm9/n;->a:Lm9/n;
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_4d} :catch_52
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_4d} :catch_50
    .catchall {:try_start_28 .. :try_end_4d} :catchall_4e

    goto :goto_54

    :catchall_4e
    move-exception p0

    goto :goto_97

    :catch_50
    move-exception v6

    goto :goto_63

    :catch_52
    move-exception v7

    goto :goto_7d

    :cond_54
    :goto_54
    if-eqz v8, :cond_5c

    .line 86
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a5

    .line 92
    :cond_5c
    :goto_5c
    sget v5, Lcom/android/launcher3/R$string;->browser_news_defaulet_name:I

    .line 94
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_a5

    .line 99
    :goto_63
    :try_start_63
    new-instance v9, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static {v5, v6}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v5, Lm9/n;->a:Lm9/n;
    :try_end_74
    .catchall {:try_start_63 .. :try_end_74} :catchall_4e

    if-eqz v8, :cond_5c

    .line 118
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a5

    goto :goto_5c

    .line 125
    :goto_7d
    :try_start_7d
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-static {v5, v6}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v5, Lm9/n;->a:Lm9/n;
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_4e

    if-eqz v8, :cond_5c

    .line 144
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a5

    goto :goto_5c

    :goto_97
    if-eqz v8, :cond_9f

    .line 153
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a4

    .line 159
    :cond_9f
    sget v0, Lcom/android/launcher3/R$string;->browser_news_defaulet_name:I

    .line 161
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    :cond_a4
    throw p0

    :cond_a5
    :goto_a5
    if-nez v8, :cond_a9

    .line 167
    const-string v8, ""

    :cond_a9
    const/4 v4, 0x0

    .line 170
    invoke-direct {v3, v8, v4, v4, v0}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;IZZ)V

    .line 173
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 178
    new-instance v3, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 180
    sget v5, Lcom/android/launcher3/R$string;->browser_news_switch_select_two:I

    .line 182
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-direct {v3, v1, v4, v4, v0}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;IZZ)V

    .line 189
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 198
    new-array v1, v1, [Ljava/lang/String;

    .line 200
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :goto_cf
    if-ge v3, v2, :cond_df

    .line 209
    iget-object v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 215
    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 217
    iget-object v5, v5, Lcom/coui/appcompat/poplist/PopupListItem;->k:Ljava/lang/String;

    .line 219
    aput-object v5, v1, v3

    add-int/2addr v3, v0

    goto :goto_cf

    .line 223
    :cond_df
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_e4

    goto :goto_ea

    :cond_e4
    move-object v2, v1

    .line 229
    check-cast v2, [Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIMenuPreference;->d([Ljava/lang/CharSequence;)V

    .line 234
    :goto_ea
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_ef

    goto :goto_f4

    .line 239
    :cond_ef
    check-cast v1, [Ljava/lang/CharSequence;

    .line 241
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->e([Ljava/lang/CharSequence;)V

    .line 244
    :goto_f4
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v0, :cond_fd

    .line 248
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->f(Ljava/util/ArrayList;)V

    .line 253
    :cond_fd
    sget-object v0, Lcom/android/launcher/MinorsStateManager;->Companion:Lcom/android/launcher/MinorsStateManager$Companion;

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher/MinorsStateManager$Companion;->getINSTANCE()Lcom/android/launcher/MinorsStateManager;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/android/launcher/MinorsStateManager;->isMinorsModeEnable()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 265
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_10e

    goto :goto_111

    .line 270
    :cond_10e
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEnabled(Z)V

    :cond_111
    :goto_111
    return-void
.end method

.method private final initIndicatorEntryMenu()V
    .registers 12

    .line 1
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_breeno:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    sget v1, Lcom/android/launcher3/R$string;->launcher_bottom_button_search:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    sget v2, Lcom/android/launcher3/R$string;->launcher_bottom_button_none:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    .line 24
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1c
    if-ge v4, v1, :cond_41

    .line 31
    aget-object v6, v0, v4

    add-int/lit8 v7, v5, 0x1

    .line 35
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 39
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    const-string/jumbo v8, "getString(...)"

    .line 45
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v8, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBottomButtonItemList:Ljava/util/ArrayList;

    .line 50
    new-instance v9, Lcom/coui/appcompat/poplist/PopupListItem;

    const/4 v10, 0x1

    .line 53
    invoke-direct {v9, v6, v3, v3, v10}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;IZZ)V

    .line 56
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1c

    .line 65
    :cond_41
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_46

    goto :goto_4c

    :cond_46
    move-object v1, v2

    .line 71
    check-cast v1, [Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->d([Ljava/lang/CharSequence;)V

    .line 76
    :goto_4c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_51

    goto :goto_56

    .line 81
    :cond_51
    check-cast v2, [Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIMenuPreference;->e([Ljava/lang/CharSequence;)V

    .line 86
    :goto_56
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v0, :cond_5f

    .line 90
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBottomButtonItemList:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->f(Ljava/util/ArrayList;)V

    .line 95
    :cond_5f
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getIndicatorEntryTitle()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_68

    goto :goto_6b

    .line 104
    :cond_68
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_6b
    return-void
.end method

.method private static final initLayoutUpgradeGuide$lambda$17$lambda$16(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_11

    .line 11
    const-string/jumbo p0, "mContext"

    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    const/4 p1, 0x1

    .line 19
    invoke-static {p0, p1}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->showLayoutUpgradeGuidePage(Landroid/content/Context;Z)V

    return p1
.end method

.method private final initPreferences()V
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;

    .line 15
    invoke-direct {v2, v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 18
    iput-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    .line 20
    const-string/jumbo v0, "null cannot be cast to non-null type com.oplus.settingsdynamic.SettingsDynamicController"

    .line 23
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onCreatePreference(Landroidx/preference/PreferenceScreen;)V

    .line 33
    sget-object v0, Lm9/n;->a:Lm9/n;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    goto :goto_28

    :catchall_23
    move-exception v0

    .line 37
    invoke-static {v0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    .line 41
    :goto_28
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "initPreferences error = "

    .line 54
    const-string v2, "LauncherClient-ShelfService"

    .line 56
    invoke-static {v1, v0, v2}, Lcom/android/common/config/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    const-string v1, "category_launcher_layout"

    .line 65
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 69
    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 71
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    .line 73
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 77
    const-string v1, "category_launcher_gesture"

    .line 79
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 83
    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 85
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

    .line 87
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 91
    const-string v1, "category_launcher_vfx"

    .line 93
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 97
    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 99
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    .line 101
    const-string/jumbo v0, "launcher_mode"

    .line 104
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 108
    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 110
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_72

    goto :goto_7a

    .line 115
    :cond_72
    new-instance v1, Lcom/android/launcher/settings/w;

    .line 117
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/w;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 120
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 123
    :goto_7a
    const-string/jumbo v0, "key_icon_fallen"

    .line 126
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 130
    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 132
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_88

    goto :goto_90

    .line 137
    :cond_88
    new-instance v1, Lcom/android/launcher/settings/x;

    .line 139
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/x;-><init>(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 145
    :goto_90
    const-string/jumbo v0, "key_dock_expand"

    .line 148
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 152
    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 154
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_9e

    goto :goto_a6

    .line 159
    :cond_9e
    new-instance v1, Lcom/android/launcher/settings/y;

    .line 161
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/y;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 164
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 167
    :goto_a6
    const-string/jumbo v0, "launcher_is_compact_arrangement"

    .line 170
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 174
    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    .line 176
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-eqz v0, :cond_bb

    .line 180
    new-instance v1, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;

    .line 182
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 185
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->b(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V

    .line 188
    :cond_bb
    const-string/jumbo v0, "launcher_layout"

    .line 191
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 195
    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 197
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_c9

    goto :goto_d1

    .line 202
    :cond_c9
    new-instance v1, Lcom/android/launcher/settings/z;

    .line 204
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/z;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 207
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 210
    :goto_d1
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initBrowserNewsSwitch()V

    .line 213
    const-string/jumbo v0, "launcher_locked"

    .line 216
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 220
    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 222
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_e2

    goto :goto_e5

    .line 227
    :cond_e2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 230
    :goto_e5
    const-string/jumbo v0, "launcher_widget_optimize_setting_entry"

    .line 233
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 237
    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 239
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 241
    invoke-static {}, Lcom/android/launcher3/widget/WidgetAlignUtils;->shouldShowWidgetOptimizeOption()Z

    move-result v0

    if-nez v0, :cond_ff

    .line 247
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_ff

    .line 251
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 253
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 256
    :cond_ff
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_104

    goto :goto_107

    .line 261
    :cond_104
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 264
    :goto_107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/e;

    move-result-object v0

    .line 268
    const-string/jumbo v1, "launcher_slide_down"

    .line 271
    invoke-virtual {v0, v1}, Landroidx/preference/e;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 275
    check-cast v0, Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 277
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_119

    goto :goto_11c

    .line 282
    :cond_119
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 285
    :goto_11c
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 289
    const-string v1, "app_startup_anim_speed"

    .line 291
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 295
    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 297
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 299
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 301
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isHummingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15f

    .line 308
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_138

    goto :goto_149

    .line 313
    :cond_138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_145

    .line 319
    sget v4, Lcom/android/launcher3/R$string;->humming_anim_preview:I

    .line 321
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_146

    :cond_145
    move-object v3, v2

    .line 327
    :goto_146
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    :goto_149
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_14e

    goto :goto_15f

    .line 335
    :cond_14e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_15b

    .line 341
    sget v4, Lcom/android/launcher3/R$string;->humming_anim_summary:I

    .line 343
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15c

    :cond_15b
    move-object v3, v2

    .line 349
    :goto_15c
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    :cond_15f
    :goto_15f
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_164

    goto :goto_167

    .line 357
    :cond_164
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 360
    :goto_167
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_16c

    goto :goto_174

    .line 365
    :cond_16c
    new-instance v3, Lcom/android/launcher/settings/a0;

    .line 367
    invoke-direct {v3, p0}, Lcom/android/launcher/settings/a0;-><init>(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 373
    :goto_174
    sget-object v1, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    .line 375
    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v1

    if-nez v1, :cond_182

    .line 381
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 387
    :cond_182
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_18b

    .line 391
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 393
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 396
    :cond_18b
    const-string/jumbo v1, "launcher_search_entry_enable"

    .line 399
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 403
    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 405
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 407
    const-string/jumbo v1, "launcher_breeno_entry_enable"

    .line 410
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 414
    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 416
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 418
    const-string/jumbo v1, "launcher_indicator_entry"

    .line 421
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 425
    check-cast v1, Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 427
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 429
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 431
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->getIndicatorEntryState()Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    move-result-object v3

    .line 435
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntryMenu()Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 441
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initIndicatorEntryMenu()V

    .line 444
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIndicatorEntryMenuState()V

    .line 447
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1c7

    .line 451
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 453
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 456
    :cond_1c7
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1d0

    .line 460
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 462
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 465
    :cond_1d0
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_1d5

    goto :goto_221

    .line 470
    :cond_1d5
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_221

    .line 474
    :cond_1d9
    sget-object v4, Lcom/android/launcher3/search/IndicatorEntry$EntryState;->BREENO:Lcom/android/launcher3/search/IndicatorEntry$EntryState;

    if-ne v3, v4, :cond_1f8

    .line 478
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1e6

    .line 482
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 484
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 487
    :cond_1e6
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1ef

    .line 491
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 493
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 496
    :cond_1ef
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_1f4

    goto :goto_221

    .line 501
    :cond_1f4
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_221

    .line 505
    :cond_1f8
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_201

    .line 509
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 511
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 514
    :cond_201
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_20a

    .line 518
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 520
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 523
    :cond_20a
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSupportIndicatorEntry()Z

    move-result v1

    if-nez v1, :cond_219

    .line 529
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_219

    .line 533
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 535
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 538
    :cond_219
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_21e

    goto :goto_221

    .line 543
    :cond_21e
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 546
    :goto_221
    const-string/jumbo v1, "system_material_blur_jump"

    .line 549
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 553
    check-cast v1, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 555
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSystemMaterialBlurSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_22f

    goto :goto_237

    .line 560
    :cond_22f
    new-instance v3, Lcom/android/launcher/settings/p;

    .line 562
    invoke-direct {v3, p0}, Lcom/android/launcher/settings/p;-><init>(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 568
    :goto_237
    sget-object v1, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties;->Companion:Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$Companion;

    .line 570
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$Companion;->isMaterialBlurJumpSupported()Z

    move-result v3

    if-eqz v3, :cond_245

    .line 576
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/states/blurdrawable/OplusBlurProperties$Companion;->getNoVisionBlurSwitchExists()Z

    move-result v1

    if-nez v1, :cond_24e

    .line 582
    :cond_245
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_24e

    .line 586
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSystemMaterialBlurSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 588
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 591
    :cond_24e
    const-string/jumbo v1, "page_turn_jump"

    .line 594
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 598
    check-cast v1, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 600
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 602
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 606
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v3, :cond_262

    goto :goto_26a

    .line 611
    :cond_262
    new-instance v4, Lcom/android/launcher/settings/q;

    .line 613
    invoke-direct {v4, p0, v1}, Lcom/android/launcher/settings/q;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/android/launcher3/LauncherAppState;)V

    .line 616
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 619
    :goto_26a
    const-string/jumbo v1, "launcher_double_click_lock"

    .line 622
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 626
    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 628
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_278

    goto :goto_27b

    .line 633
    :cond_278
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 636
    :goto_27b
    invoke-static {}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isGestureNewDoubleClickLockSupport()Z

    move-result v1

    if-eqz v1, :cond_28a

    .line 642
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_28a

    .line 646
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 648
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 651
    :cond_28a
    const-string/jumbo v1, "launcher_finger_clear_dot"

    .line 654
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 658
    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 660
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherFingerClearDotSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_298

    goto :goto_29b

    .line 665
    :cond_298
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 668
    :goto_29b
    const-string/jumbo v1, "launcher_search_style_setting_entry"

    .line 671
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 675
    check-cast v1, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 677
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mOpenBottomSearchBoxEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_2a9

    goto :goto_2b1

    .line 682
    :cond_2a9
    new-instance v3, Lcom/android/launcher/settings/r;

    .line 684
    invoke-direct {v3, p0}, Lcom/android/launcher/settings/r;-><init>(Ljava/lang/Object;)V

    .line 687
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 690
    :goto_2b1
    const-string/jumbo v1, "key_docker_bg_switch"

    .line 693
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 697
    check-cast v1, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 699
    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 701
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_327

    .line 706
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getSupportDockerBg()Z

    move-result v0

    if-eqz v0, :cond_327

    .line 712
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_2cc

    goto :goto_2e3

    .line 717
    :cond_2cc
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2e0

    .line 723
    sget-object v2, Lcom/android/launcher/custom/OplusToolUtils;->INSTANCE:Lcom/android/launcher/custom/OplusToolUtils;

    .line 725
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 729
    invoke-interface {v2, v4, v3}, Lcom/android/launcher/custom/IBrandExt;->getStringId(Landroid/content/Context;I)I

    move-result v2

    .line 733
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 737
    :cond_2e0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 740
    :goto_2e3
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2ec

    .line 744
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 746
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 749
    :cond_2ec
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 753
    const-string/jumbo v1, "key_docker_bg_switch_red_dot"

    .line 756
    invoke-static {v0, v1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_309

    .line 762
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_2fe

    goto :goto_301

    .line 767
    :cond_2fe
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreference;->setEndRedDotMode(I)V

    .line 770
    :goto_301
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_319

    .line 774
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreference;->showEndRedDot()V

    goto :goto_319

    .line 778
    :cond_309
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_30e

    goto :goto_312

    :cond_30e
    const/4 v1, 0x0

    .line 784
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreference;->setEndRedDotMode(I)V

    .line 787
    :goto_312
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_319

    .line 791
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreference;->dismissEndRedDot()V

    .line 794
    :cond_319
    :goto_319
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_31e

    goto :goto_330

    .line 799
    :cond_31e
    new-instance v1, Lcom/android/launcher/settings/s;

    .line 801
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/s;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 804
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_330

    .line 808
    :cond_327
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_330

    .line 812
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 814
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 817
    :cond_330
    :goto_330
    const-string/jumbo v0, "launcher_dock_search_for_qsb"

    .line 820
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 824
    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 826
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockSearchBoxForQSB:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_33e

    goto :goto_346

    .line 831
    :cond_33e
    new-instance v1, Lcom/android/launcher/settings/t;

    .line 833
    invoke-direct {v1, p0}, Lcom/android/launcher/settings/t;-><init>(Ljava/lang/Object;)V

    .line 836
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 839
    :goto_346
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_369

    .line 843
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_353

    .line 847
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mOpenBottomSearchBoxEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 849
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 852
    :cond_353
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    .line 854
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 858
    invoke-virtual {v0, v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->oplusFeatureSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_385

    .line 864
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_385

    .line 868
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockSearchBoxForQSB:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 870
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_385

    .line 874
    :cond_369
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_372

    .line 878
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockSearchBoxForQSB:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 880
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 883
    :cond_372
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;

    .line 885
    invoke-virtual {v0, v3}, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->updateCompatStrategy(Z)V

    .line 888
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCompatStrategyChangeListener:Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;

    .line 890
    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->getCompatStrategy()Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature$CompatStrategy;

    move-result-object v2

    .line 894
    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;->onCompatStrategyChanged(Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature$CompatStrategy;)V

    .line 897
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCompatStrategyChangeListener:Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;

    .line 899
    invoke-virtual {v0, v1}, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->addCompatStrategyChangeListener(Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature$CompatStrategyChangeListener;)V

    .line 902
    :cond_385
    :goto_385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 906
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initSlideDownState(Landroid/content/Context;)V

    .line 909
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended()V

    .line 912
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    .line 915
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 919
    const-string/jumbo v0, "\u8bbe\u7f6e"

    .line 922
    invoke-static {p0, v0}, Lcom/oplus/basecommon/log/LogUtils;->printContextLocal(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final initPreferences$lambda$12(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/android/launcher3/LauncherAppState;Landroidx/preference/Preference;)Z
    .registers 9

    .line 1
    const-string/jumbo p2, "this$0"

    .line 4
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p2, :cond_12

    .line 12
    const-string/jumbo p2, "mContext"

    .line 15
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    .line 19
    :cond_12
    invoke-static {p2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p2

    .line 27
    const-string v1, "LauncherSettingsFragment"

    const/4 v2, 0x1

    if-eqz p2, :cond_26

    .line 32
    const-string/jumbo p0, "super power mode not support change layout when page turn"

    .line 35
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 39
    :cond_26
    iget-boolean p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-eqz p2, :cond_31

    .line 43
    const-string/jumbo p0, "switching icon auto fill when page turn, please wait..."

    .line 46
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 56
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 68
    const-string v3, ":settings:oplus_from_main_page"

    .line 70
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, v2, :cond_5c

    .line 76
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p2, :cond_5c

    .line 80
    invoke-virtual {p2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 86
    const-string v3, "back_action"

    .line 88
    const-string v4, "com.android.launcher.action.CATEGORY_SETTINGS"

    .line 90
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_5c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_69

    .line 99
    const-string v3, "display"

    .line 101
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_6a

    :cond_69
    move-object p2, v0

    .line 107
    :goto_6a
    instance-of v3, p2, Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_71

    .line 111
    check-cast p2, Landroid/hardware/display/DisplayManager;

    goto :goto_72

    :cond_71
    move-object p2, v0

    :goto_72
    if-eqz p2, :cond_79

    .line 117
    invoke-virtual {p2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p2

    goto :goto_7a

    :cond_79
    move-object p2, v0

    :goto_7a
    if-eqz p1, :cond_93

    .line 125
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 131
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 137
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 143
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveSearchRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v3

    goto :goto_94

    :cond_93
    move-object v3, v0

    :goto_94
    if-eqz v3, :cond_b9

    .line 151
    const-string/jumbo v3, "reset search before open turn settings."

    .line 154
    invoke-static {v1, v3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b9

    .line 159
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 165
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 171
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 177
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 183
    invoke-interface {p1}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    :cond_b9
    const/4 p1, 0x0

    if-eqz p2, :cond_fb

    .line 189
    array-length v3, p2

    if-le v3, v2, :cond_fb

    .line 192
    aget-object v3, p2, p1

    .line 194
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 198
    aget-object p2, p2, v2

    .line 200
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    const-string v5, "LauncherSettingsFragment displays0 : "

    .line 208
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    const-string v3, " , displays1 : "

    .line 216
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-static {v1, p2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 233
    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 236
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p1, :cond_f3

    .line 240
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    :cond_f3
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 248
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return v2

    :cond_fb
    return p1
.end method

.method private static final initPreferences$lambda$13(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/launcher/bottomsearch/BottomSearchJumpUtils;->getOplusBrowserSettingIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 13
    const-string/jumbo v0, "source"

    .line 16
    const-string/jumbo v1, "systemSetting"

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 31
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 33
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 35
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$14(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setEndRedDotMode(I)V

    .line 16
    :goto_f
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDockerBGPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p1, :cond_16

    .line 20
    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIPreference;->dismissEndRedDot()V

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 27
    const-string/jumbo v1, "key_docker_bg_switch_red_dot"

    .line 30
    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    new-instance p1, Landroid/content/Intent;

    .line 35
    const-string v1, "com.android.launcher.action.LAUNCHER_SETTINGS_HOTSEAT_BG"

    .line 37
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 49
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 51
    sget v1, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 53
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_37
    return v0
.end method

.method private static final initPreferences$lambda$15(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string v0, "com.android.launcher.action.LAUNCHER_QSB_SETTINGS"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 23
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 25
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$2(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    return p0

    .line 19
    :cond_12
    new-instance p1, Landroid/content/Intent;

    .line 21
    const-string v0, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    .line 23
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 35
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 37
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$3(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string v0, "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 23
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 25
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$4(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string v0, "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 23
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 25
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$7(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 9

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/launcher/sellmode/SaleModeGenerateXmlUtils;->isSupportSaleModeCustomLayout()Z

    move-result p1

    const/4 v0, 0x0

    .line 12
    const-string v1, "LauncherSettingsFragment"

    const/4 v2, 0x1

    if-eqz p1, :cond_24

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 21
    sget p1, Lcom/android/launcher3/R$string;->sell_mode_not_support_this_function:I

    .line 23
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 30
    const-string/jumbo p0, "saleMode not support change layout."

    .line 33
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 37
    :cond_24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 47
    const-string p0, "The desktop is locked and toasted."

    .line 49
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 53
    :cond_34
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez p1, :cond_40

    .line 58
    const-string/jumbo p1, "mContext"

    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    .line 65
    :cond_40
    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 75
    const-string/jumbo p0, "super power mode not support change layout"

    .line 78
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 82
    :cond_51
    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-eqz p1, :cond_5c

    .line 86
    const-string/jumbo p0, "switching icon auto fill, please wait..."

    .line 89
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 93
    :cond_5c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 111
    const-string v4, ":settings:oplus_from_main_page"

    .line 113
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v2, :cond_87

    .line 119
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p1, :cond_87

    .line 123
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 129
    const-string v4, "back_action"

    .line 131
    const-string v5, "com.android.launcher.action.CATEGORY_SETTINGS"

    .line 133
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 142
    const-string v4, "display"

    .line 144
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_95

    :cond_94
    move-object p1, v3

    .line 150
    :goto_95
    instance-of v4, p1, Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_9c

    .line 154
    check-cast p1, Landroid/hardware/display/DisplayManager;

    goto :goto_9d

    :cond_9c
    move-object p1, v3

    :goto_9d
    if-eqz p1, :cond_a4

    .line 160
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    goto :goto_a5

    :cond_a4
    move-object p1, v3

    :goto_a5
    if-eqz p1, :cond_e7

    .line 168
    array-length v4, p1

    if-le v4, v2, :cond_e7

    .line 171
    aget-object v4, p1, v0

    .line 173
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 177
    aget-object p1, p1, v2

    .line 179
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v6, "initPreferences : LauncherSettingsFragment displays0 : "

    .line 188
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v4, " , displays1 : "

    .line 196
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {v1, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 213
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 216
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_df

    .line 220
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 224
    :cond_df
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 228
    invoke-virtual {p0, v3, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return v2

    :cond_e7
    return v0
.end method

.method private static final initPreferences$lambda$8(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string v0, "com.android.launcher.action.LAUNCHER_START_UP_SPEED"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 23
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 25
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$9(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string v0, "com.oplus.uxdesign.action.JUMP_TO_MATERIAL_BLUR_SETTING"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 23
    sget p1, Lcom/android/launcher3/R$anim;->coui_open_slide_enter:I

    .line 25
    sget v0, Lcom/android/launcher3/R$anim;->coui_open_slide_exit:I

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private final initSlideDownState(Landroid/content/Context;)V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    .line 3
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 6
    const-string/jumbo v3, "mContext"

    if-nez v1, :cond_e

    .line 11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 15
    :cond_e
    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getSlideDownItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 25
    new-array v1, v0, [Ljava/lang/String;

    .line 27
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_33

    .line 37
    iget-object v7, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 43
    check-cast v7, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 45
    iget-object v7, v7, Lcom/coui/appcompat/poplist/PopupListItem;->k:Ljava/lang/String;

    .line 47
    aput-object v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 52
    :cond_33
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v4

    .line 56
    const-string v6, "LauncherSettingsFragment"

    if-eqz v4, :cond_44

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 64
    const-string v7, "entryArray:"

    .line 66
    invoke-static {v7, v4, v6}, Ld1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_44
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_49

    goto :goto_4f

    :cond_49
    move-object v7, v1

    .line 75
    check-cast v7, [Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {v4, v7}, Lcom/coui/appcompat/preference/COUIMenuPreference;->d([Ljava/lang/CharSequence;)V

    .line 80
    :goto_4f
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_54

    goto :goto_5a

    :cond_54
    move-object v7, v1

    .line 86
    check-cast v7, [Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v4, v7}, Lcom/coui/appcompat/preference/COUIMenuPreference;->e([Ljava/lang/CharSequence;)V

    .line 91
    :goto_5a
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v4, :cond_63

    .line 95
    iget-object v7, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v4, v7}, Lcom/coui/appcompat/preference/COUIMenuPreference;->f(Ljava/util/ArrayList;)V

    .line 100
    :cond_63
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->resetPrefIfGlobalSearchDisabled()V

    .line 103
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v4

    .line 107
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomNotificationCenterDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz v4, :cond_72

    if-nez p1, :cond_78

    .line 115
    :cond_72
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSlideStatusBarAsDefault()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 121
    :cond_78
    const-string p1, "customize both search and notification disabled "

    .line 123
    invoke-static {v6, p1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_b2

    .line 130
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 132
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_b2

    :cond_87
    if-eqz p1, :cond_b2

    .line 138
    const-string p1, "customize notification disabled "

    .line 140
    invoke-static {v6, p1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_93

    goto :goto_96

    .line 148
    :cond_93
    invoke-virtual {p1, v5}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEnabled(Z)V

    .line 151
    :goto_96
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_9b

    goto :goto_a2

    :cond_9b
    add-int/lit8 v0, v0, -0x2

    .line 158
    aget-object v0, v1, v0

    .line 160
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 163
    :goto_a2
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_aa

    .line 167
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ab

    :cond_aa
    move-object v2, p0

    .line 172
    :goto_ab
    const-string/jumbo p0, "launcher_slide_down_type"

    const/4 p1, 0x5

    .line 176
    invoke-static {v2, p0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method private final initTabletLayoutUpgradeGuide()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 5
    const-string/jumbo v1, "launcher_tablet_layout_upgrade_guide_settings"

    .line 8
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    if-nez v0, :cond_44

    .line 21
    invoke-static {}, Lcom/android/launcher/guide/tabletupgrade/TabletUpgradeNewLayoutHelper;->isNeedShowUpgradeGuide()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 27
    new-instance v0, Lcom/coui/appcompat/preference/COUIPreference;

    .line 29
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_27

    .line 33
    const-string/jumbo v4, "mContext"

    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 40
    :cond_27
    invoke-direct {v0, v4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreference;->setBackgroundAnimationEnabled(Z)V

    .line 46
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mTabletLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    .line 48
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 51
    sget v1, Lcom/android/launcher3/R$layout;->pref_tablet_layout_upgrade_settings:I

    .line 53
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 56
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 59
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mTabletLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    .line 65
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_67

    :cond_44
    if-eqz v0, :cond_67

    .line 71
    invoke-static {}, Lcom/android/launcher/guide/tabletupgrade/TabletUpgradeNewLayoutHelper;->isNewLayout()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 77
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mTabletLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_67

    .line 81
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 87
    const-string v0, "LauncherSettingsFragment"

    .line 89
    const-string/jumbo v1, "remove tablet layout upgrade guide preference"

    .line 92
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_5e
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 99
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mTabletLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    .line 101
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_67
    :goto_67
    return-void
.end method

.method public static synthetic j(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/settings/LauncherSettingsFragment;->generateBranchPreference$lambda$24$lambda$23(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$3(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic l(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$7(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic m(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$14(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final mHighLightRunnable$lambda$45(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 4

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 20
    :goto_13
    instance-of v2, v0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    if-eqz v2, :cond_1a

    .line 24
    check-cast v0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    if-eqz v0, :cond_30

    .line 30
    invoke-virtual {v0}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->needHighlight()Z

    move-result v2

    if-eqz v2, :cond_24

    move-object v1, v0

    :cond_24
    if-eqz v1, :cond_30

    .line 39
    const-string v0, "LauncherSettingsFragment"

    .line 41
    const-string v1, "checkHighlightDelayIfNeed execute task"

    .line 43
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    :cond_30
    return-void
.end method

.method public static synthetic n(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initLayoutUpgradeGuide$lambda$17$lambda$16(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic o(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$2(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final onClickIndicatorEntryMenu(Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_breeno:I

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_f

    goto :goto_2a

    .line 16
    :cond_f
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_search:I

    .line 18
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v2, v1

    goto :goto_2a

    .line 30
    :cond_1d
    sget v0, Lcom/android/launcher3/R$string;->launcher_bottom_button_none:I

    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v2, 0x0

    .line 43
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_2f

    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 51
    :goto_32
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 57
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez p0, :cond_44

    .line 62
    const-string/jumbo p0, "mContext"

    .line 65
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_44
    if-eqz p1, :cond_64

    .line 71
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 77
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 83
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 89
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    .line 93
    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_64

    .line 97
    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    move-result-object v3

    .line 101
    :cond_64
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->setIndicatorEntryType(Landroid/content/Context;ILcom/android/launcher3/search/IndicatorEntry;)V

    .line 104
    invoke-static {}, Lcom/android/statistics/WidgetCardStatisticsManager;->getInstance()Lcom/android/statistics/WidgetCardStatisticsManager;

    move-result-object p0

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickIndicatorEntrySwitch(I)V

    return v1
.end method

.method private final onClickSlideDownPopMenuList(Ljava/lang/String;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "mContext"

    if-nez v0, :cond_c

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    sget v3, Lcom/android/launcher3/R$string;->pull_down_dialog_hiassistant:I

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string/jumbo v3, "getString(...)"

    .line 25
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_30

    .line 35
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 41
    check-cast v4, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 43
    iget-boolean v4, v4, Lcom/coui/appcompat/poplist/PopupListItem;->o:Z

    if-nez v4, :cond_30

    return v5

    .line 48
    :cond_30
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_38

    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    .line 56
    :cond_38
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 60
    sget v6, Lcom/android/launcher3/R$string;->pull_down_dialog_shelf:I

    .line 62
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 75
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 81
    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 83
    iget-boolean v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->o:Z

    if-nez v3, :cond_58

    return v5

    .line 88
    :cond_58
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_60

    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 96
    :cond_60
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    sget v5, Lcom/android/launcher3/R$string;->notification_and_control_center:I

    .line 102
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    const/4 v0, 0x6

    goto :goto_83

    .line 114
    :cond_72
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const/4 v0, 0x4

    goto :goto_83

    .line 122
    :cond_7a
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x7

    goto :goto_83

    :cond_82
    const/4 v0, 0x5

    .line 131
    :goto_83
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v3, :cond_88

    goto :goto_8b

    .line 136
    :cond_88
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 139
    :goto_8b
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 149
    const-string/jumbo p1, "launcher_slide_down_type_simple"

    goto :goto_9c

    .line 153
    :cond_99
    const-string/jumbo p1, "launcher_slide_down_type"

    .line 156
    :goto_9c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_a4

    .line 160
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a5

    :cond_a4
    move-object v1, p0

    .line 165
    :goto_a5
    invoke-static {v1, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private final onClickSlideUpPopMenuList(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_74

    .line 8
    sget v2, Lcom/android/launcher3/R$string;->browser_news_switch_select_two:I

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string/jumbo v2, "getString(...)"

    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    move p1, v1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 30
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v2, "onClickSlideUpPopMenuList selected:"

    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v2, "LauncherSettingsFragment"

    .line 47
    invoke-static {v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lj6/d;->e(I)V

    .line 53
    sget-object v0, Lcom/heytap/browser/a;->a:Lcom/heytap/browser/a;

    .line 55
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v3, "statEventBrowserNewsSwitch isOpen:"

    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string v3, " form:"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "LauncherStatistics"

    .line 82
    invoke-static {v3, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/util/HashMap;

    .line 87
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    const-string v3, "event_browser_news_switch"

    .line 96
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string p1, "event_browser_news_switch_from"

    .line 101
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string p1, "event_id_browser_news_switch"

    .line 110
    invoke-static {p1, v2}, Lcom/heytap/browser/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 113
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBrowserNewsSwitch()V

    :cond_74
    return v1
.end method

.method public static synthetic p(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$15(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic q(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$4(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic r(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->resetSlideDownState$lambda$38$lambda$37(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final resetPrefIfGlobalSearchDisabled()V
    .registers 7

    .line 1
    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    .line 3
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 6
    const-string/jumbo v3, "mContext"

    if-nez v1, :cond_e

    .line 11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 15
    :cond_e
    sget-object v4, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v4}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 21
    const-string v4, "LauncherSettingsFragment"

    if-nez v1, :cond_5a

    .line 25
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_20

    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 33
    :cond_20
    sget-object v5, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_QUICK_SEARCH:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_5a

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_31

    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    .line 50
    :cond_31
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_59

    .line 57
    const-string/jumbo v0, "remove global search pref."

    .line 60
    invoke-static {v4, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_46

    .line 67
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_47

    :cond_46
    move-object v2, p0

    .line 72
    :goto_47
    invoke-static {v2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 80
    const-string/jumbo v0, "launcher_slide_down_type"

    .line 83
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_59
    return-void

    .line 91
    :cond_5a
    :goto_5a
    const-string p0, " resetPrefIfGlobalSearchDisabled, the global search or quick search package is enabled, so return."

    .line 93
    invoke-static {v4, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final resetSlideDownState(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "mContext"

    if-nez v0, :cond_c

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p1, :cond_35

    .line 25
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_20

    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_21

    :cond_20
    move-object v1, p1

    :goto_21
    const/4 p1, 0x1

    .line 35
    invoke-static {v1, p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownDialogHasShowed(Landroid/content/Context;Z)V

    .line 38
    sget-object v0, Lcom/android/launcher/touch/BasePullDownContent;->Companion:Lcom/android/launcher/touch/BasePullDownContent$Companion;

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/launcher/touch/BasePullDownContent$Companion;->setSIsFirstPullInExpVersion(Z)V

    .line 43
    sget-object p1, Lcom/oplus/basecommon/thread/Executors;->MAIN_EXECUTOR:Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 45
    new-instance v0, Landroidx/lifecycle/e0;

    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/e0;-><init>(Ljava/lang/Object;I)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/oplus/basecommon/thread/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_35
    return-void
.end method

.method private static final resetSlideDownState$lambda$38(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 4

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    .line 9
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_13

    .line 13
    const-string/jumbo v1, "mContext"

    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    :cond_13
    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 23
    sget v1, Lcom/android/launcher3/R$string;->reset_pull_down_content:I

    .line 25
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    .line 33
    sget v1, Lcom/android/launcher3/R$string;->reset_pull_down_content_ok:I

    .line 35
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/launcher/settings/u;

    .line 41
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/f;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mResetPullDownHintDialog:Landroidx/appcompat/app/f;

    if-eqz v0, :cond_3a

    .line 56
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3a
    return-void
.end method

.method private static final resetSlideDownState$lambda$38$lambda$37(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final rmCheckHighlightDelayIfNeed()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mHighLightRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    .line 5
    const-string v1, "LauncherSettingsFragment"

    .line 7
    const-string/jumbo v2, "rmCheckHighlightDelayIfNeed"

    .line 10
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 19
    invoke-virtual {v1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1b
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mHighLightRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$13(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final startActivitySafely(Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-string v0, "LauncherSettingsFragment"

    if-nez p1, :cond_b

    .line 5
    const-string/jumbo p0, "startActivitySafely: intent == null.."

    .line 8
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_b
    :try_start_b
    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsFragment;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 20
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFrom:Ljava/lang/String;

    .line 22
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const v1, 0x8000

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    :cond_21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_24} :catch_25

    goto :goto_45

    .line 38
    :catch_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 42
    sget v1, Lcom/android/launcher3/R$string;->activity_not_found:I

    const/4 v2, 0x0

    .line 45
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, "startActivitySafely:Unable to launch. ActivityNotFoundException intent= "

    .line 57
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method private final stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object p1, p1, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->d:Landroid/view/View;

    .line 4
    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    :goto_6
    instance-of v0, p1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    .line 8
    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1e

    .line 17
    .line 18
    new-instance v1, Lcom/android/launcher/settings/v;

    .line 19
    .line 20
    check-cast p1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2, p1, p0}, Lcom/android/launcher/settings/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-wide/16 p0, 0x3e8

    .line 27
    .line 28
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method private static final stopLoading$lambda$36(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    .line 9
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->f()V

    const/4 p0, 0x0

    .line 13
    iput-boolean p0, p1, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    return-void
.end method

.method private final syncLauncherArrangementModeStatus()V
    .registers 10

    .line 1
    const-string v0, "LauncherSettingsFragment"

    .line 3
    const-string/jumbo v1, "syncLauncherArrangementModeStatus isArrangement = "

    .line 6
    :try_start_5
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 11
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_73

    :cond_11
    move v2, v3

    :goto_12
    xor-int/lit8 v4, v2, 0x1

    .line 21
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 27
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 37
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v5

    .line 45
    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    .line 48
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v6, Lcom/oplus/basecommon/thread/Executors;->MAIN_EXECUTOR:Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 53
    new-instance v7, Lcom/android/launcher/e1;

    const/4 v8, 0x1

    .line 56
    invoke-direct {v7, v5, v8}, Lcom/android/launcher/e1;-><init>(Lcom/android/launcher/Launcher;I)V

    .line 59
    invoke-virtual {v6, v7}, Lcom/oplus/basecommon/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    if-nez v2, :cond_5a

    .line 64
    invoke-static {}, Lcom/android/launcher/rotation/ScreenRotationHelper;->getInstance()Lcom/android/launcher/rotation/ScreenRotationHelper;

    move-result-object p0

    const/4 v2, 0x3

    .line 69
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/launcher/rotation/ScreenRotationHelper;->clear(Ljava/lang/String;)V

    .line 76
    new-instance p0, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;

    .line 78
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    invoke-direct {p0, v2}, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;-><init>(Landroid/content/Context;)V

    .line 85
    new-array v2, v3, [Ljava/lang/Void;

    .line 87
    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_61

    .line 91
    :cond_5a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 95
    invoke-static {p0, v3}, Lcom/android/launcher/layout/LayoutUtilsManager;->saveIsCompact(Landroid/content/Context;Z)V

    .line 98
    :goto_61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object p0, Lm9/n;->a:Lm9/n;
    :try_end_72
    .catchall {:try_start_5 .. :try_end_72} :catchall_f

    goto :goto_77

    .line 116
    :goto_73
    invoke-static {p0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    .line 120
    :goto_77
    invoke-static {p0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_83

    .line 126
    const-string/jumbo v1, "syncLauncherArrangementModeStatus,Exception :"

    .line 129
    invoke-static {v1, v0, p0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_83
    return-void
.end method

.method private static final syncLauncherArrangementModeStatus$lambda$30$lambda$29(Lcom/android/launcher3/Launcher;)V
    .registers 4

    .line 1
    const-string v0, "$launcher"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 14
    const-string v1, "LauncherSettingsFragment"

    .line 16
    const-string/jumbo v2, "syncLauncherArrangementModeStatus, the launcher\'s status is synchronized to NORMAL."

    .line 19
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1c
    return-void
.end method

.method private final syncStatus(Ljava/lang/String;)V
    .registers 10

    .line 1
    const-string v0, "LauncherSettingsFragment"

    .line 3
    const-string/jumbo v1, "\u200e\u00a0"

    .line 6
    const-string/jumbo v2, "syncStatus mLauncherWidgetOptimizeSwitch?.isChecked :"

    .line 9
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_22

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 15
    const-string/jumbo v6, "mContext"

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_2a0

    goto/16 :goto_28b

    .line 24
    :sswitch_17
    :try_start_17
    const-string/jumbo v1, "launcher_slide_down_type_simple"

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_158

    goto/16 :goto_28b

    :catchall_22
    move-exception p0

    goto/16 :goto_28e

    .line 38
    :sswitch_25
    const-string/jumbo v1, "is_launcher_layout_locked"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_28b

    .line 49
    :cond_30
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_36

    goto/16 :goto_28b

    .line 55
    :cond_36
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_3e

    .line 59
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v7, p0

    .line 64
    :goto_3f
    invoke-static {v7, p1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 68
    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_28b

    .line 73
    :sswitch_48
    const-string/jumbo v1, "key_indicator_entry_type"

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_28b

    .line 84
    :cond_53
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIndicatorEntryMenuState()V

    goto/16 :goto_28b

    .line 89
    :sswitch_58
    const-string/jumbo v1, "is_optimize_widget"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_28b

    .line 100
    :cond_63
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_68

    goto :goto_77

    .line 105
    :cond_68
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_70

    .line 109
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v7

    .line 113
    :cond_70
    invoke-static {v3, p1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 117
    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    :goto_77
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_28b

    .line 126
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_89

    .line 130
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    .line 134
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 138
    :cond_89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28b

    .line 155
    :sswitch_9a
    const-string/jumbo v1, "layout_is_compact"

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto/16 :goto_28b

    .line 166
    :cond_a5
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v1, :cond_ab

    goto/16 :goto_28b

    .line 172
    :cond_ab
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_b3

    .line 176
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b4

    :cond_b3
    move-object v7, p0

    .line 181
    :goto_b4
    invoke-static {v7, p1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 185
    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_28b

    .line 190
    :sswitch_bd
    const-string/jumbo v1, "is_breeno_entry_enable"

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c8

    goto/16 :goto_28b

    .line 201
    :cond_c8
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherBreenoEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_ce

    goto/16 :goto_28b

    .line 207
    :cond_ce
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 209
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_d8

    .line 213
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d8
    move-object v7, p0

    .line 218
    :goto_d9
    invoke-virtual {v1, v7}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isBreenoSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    .line 222
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_28b

    .line 227
    :sswitch_e2
    const-string/jumbo v1, "is_finger_clear_dot"

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    goto/16 :goto_28b

    .line 238
    :cond_ed
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherFingerClearDotSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_f3

    goto/16 :goto_28b

    .line 244
    :cond_f3
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_fb

    .line 248
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_fc

    :cond_fb
    move-object v7, p0

    .line 253
    :goto_fc
    invoke-static {v7, p1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 257
    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_28b

    .line 262
    :sswitch_105
    const-string/jumbo v1, "is_search_entry_enable"

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_110

    goto/16 :goto_28b

    .line 273
    :cond_110
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_116

    goto/16 :goto_28b

    .line 279
    :cond_116
    sget-object v1, Lcom/android/launcher3/search/IndicatorEntry;->Companion:Lcom/android/launcher3/search/IndicatorEntry$Companion;

    .line 281
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_120

    .line 285
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_121

    :cond_120
    move-object v7, p0

    .line 290
    :goto_121
    invoke-virtual {v1, v7}, Lcom/android/launcher3/search/IndicatorEntry$Companion;->isSearchSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    .line 294
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_28b

    .line 299
    :sswitch_12a
    const-string/jumbo v1, "is_double_click_lock"

    .line 302
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    goto/16 :goto_28b

    .line 310
    :cond_135
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_13b

    goto/16 :goto_28b

    .line 316
    :cond_13b
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_143

    .line 320
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_144

    :cond_143
    move-object v7, p0

    .line 325
    :goto_144
    invoke-static {v7, p1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 329
    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_28b

    .line 334
    :sswitch_14d
    const-string/jumbo v1, "launcher_slide_down_type"

    .line 337
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_158

    goto/16 :goto_28b

    .line 345
    :cond_158
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_160

    .line 349
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_161

    :cond_160
    move-object v7, p1

    .line 354
    :goto_161
    invoke-direct {p0, v7}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateSlideDownState(Landroid/content/Context;)V

    goto/16 :goto_28b

    .line 359
    :sswitch_166
    const-string/jumbo v2, "layout"

    .line 362
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_171

    goto/16 :goto_28b

    .line 370
    :cond_171
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    if-eqz p1, :cond_182

    .line 376
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_182

    .line 382
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    goto :goto_183

    :cond_182
    move-object p1, v7

    .line 388
    :goto_183
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getLayoutFromSharedPrefs()[I

    move-result-object v2

    .line 392
    new-instance v3, Landroid/util/Pair;

    .line 394
    aget v6, v2, v5

    .line 396
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 400
    aget v2, v2, v4

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 406
    invoke-direct {v3, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    .line 411
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    sget-object v6, Lcom/android/launcher/togglebar/adapter/ToggleBarDialogLayoutAdapter;->Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarDialogLayoutAdapter$Companion;

    .line 416
    invoke-virtual {v6}, Lcom/android/launcher/togglebar/adapter/ToggleBarDialogLayoutAdapter$Companion;->isWordlessOnlyDevice()Z

    move-result v6

    if-eqz v6, :cond_206

    if-eqz p1, :cond_1b1

    .line 424
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    if-eqz v1, :cond_1b1

    .line 430
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v7

    .line 434
    :cond_1b1
    instance-of v1, v7, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz v1, :cond_1e1

    move-object v1, v7

    .line 439
    check-cast v1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    .line 441
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object v1

    .line 445
    instance-of v1, v1, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;

    if-eqz v1, :cond_1e1

    .line 449
    check-cast v7, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    .line 451
    invoke-virtual {v7}, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object p1

    .line 455
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.togglebar.controller.ToggleBarLayoutUIController"

    .line 458
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    check-cast p1, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;

    .line 463
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->getTemporaryWordlessDesktopState()Lcom/android/launcher/togglebar/item/TemporaryWordlessDesktopState;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/item/TemporaryWordlessDesktopState;->getSwitchStateFromUX()Z

    move-result v1

    if-nez v1, :cond_1f3

    .line 473
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/item/TemporaryWordlessDesktopState;->getSwitchStateFromLauncher()Z

    move-result p1

    if-eqz p1, :cond_1df

    goto :goto_1f3

    :cond_1df
    move v4, v5

    goto :goto_1f3

    :cond_1e1
    if-eqz p1, :cond_1df

    .line 484
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    if-eqz p1, :cond_1df

    .line 490
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object p1

    if-eqz p1, :cond_1df

    .line 496
    invoke-virtual {p1}, Lcom/android/launcher/layoutparam/ConfigParam;->isTextFreeMode()Z

    move-result v4

    .line 500
    :cond_1f3
    :goto_1f3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v4, :cond_1fc

    .line 506
    sget v1, Lcom/android/launcher3/R$string;->no_word_desktop:I

    goto :goto_1fe

    .line 509
    :cond_1fc
    sget v1, Lcom/android/launcher3/R$string;->standard_desktop:I

    .line 511
    :goto_1fe
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_273

    .line 519
    :cond_206
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1
    :try_end_20a
    .catchall {:try_start_17 .. :try_end_20a} :catchall_22

    .line 523
    const-string v4, "first"

    if-nez p1, :cond_23f

    .line 527
    :try_start_20e
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_220

    .line 533
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getShouldUsedLayout()I

    move-result p1

    const/4 v5, 0x3

    if-eq p1, v5, :cond_220

    goto :goto_23f

    .line 545
    :cond_220
    iget-object p1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 547
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    check-cast p1, Ljava/lang/Number;

    .line 552
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 556
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 566
    sget v1, Lcom/android/launcher3/R$string;->toggle_bar_settings_column:I

    .line 568
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_273

    .line 576
    :cond_23f
    :goto_23f
    iget-object p1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 578
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    check-cast p1, Ljava/lang/Number;

    .line 583
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 587
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const-string/jumbo p1, "\u200e"

    .line 593
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_25f

    .line 602
    sget v1, Lcom/android/launcher3/R$string;->layout_name_multiple_sign:I

    .line 604
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 608
    :cond_25f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object p1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 613
    const-string/jumbo v1, "second"

    .line 616
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    check-cast p1, Ljava/lang/Number;

    .line 621
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 625
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    :goto_273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 632
    const-string/jumbo v1, "toString(...)"

    .line 635
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28b

    .line 644
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_288

    goto :goto_28b

    .line 649
    :cond_288
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 652
    :cond_28b
    :goto_28b
    sget-object p0, Lm9/n;->a:Lm9/n;
    :try_end_28d
    .catchall {:try_start_20e .. :try_end_28d} :catchall_22

    goto :goto_292

    .line 655
    :goto_28e
    invoke-static {p0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    .line 659
    :goto_292
    invoke-static {p0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_29e

    .line 665
    const-string/jumbo p1, "syncShowDousyncButtonStatuson :"

    .line 668
    invoke-static {p1, v0, p0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29e
    return-void

    nop

    :sswitch_data_2a0
    .sparse-switch
        -0x422504d6 -> :sswitch_166
        -0x2f4992f6 -> :sswitch_14d
        -0x15405525 -> :sswitch_12a
        -0x13d5136e -> :sswitch_105
        0x9089976 -> :sswitch_e2
        0x17003229 -> :sswitch_bd
        0x3921c143 -> :sswitch_9a
        0x421750d1 -> :sswitch_58
        0x5f20bcf7 -> :sswitch_48
        0x5f4fde15 -> :sswitch_25
        0x7118e287 -> :sswitch_17
    .end sparse-switch
.end method

.method private final updateAnimSpeed()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "mContext"

    if-nez v0, :cond_c

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 17
    const-string/jumbo v3, "setting_app_startup_anim_speed"

    .line 20
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    sget-object v3, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    .line 26
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_21

    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v1, v4

    :goto_22
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_2c

    goto :goto_33

    .line 45
    :cond_2c
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_33
    return-void
.end method

.method private final updateBrowserNewsSwitch()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 7
    invoke-static {v0}, Lj6/d;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 13
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4c

    .line 22
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_1a

    goto :goto_1d

    .line 27
    :cond_1a
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 30
    :goto_1d
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    .line 32
    invoke-static {v0}, Lj6/d;->b(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    .line 43
    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupListItem;->k:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v1, :cond_33

    .line 49
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 52
    :cond_33
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_38

    goto :goto_3b

    .line 57
    :cond_38
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->g(Ljava/lang/String;)V

    .line 60
    :goto_3b
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_40

    goto :goto_43

    .line 65
    :cond_40
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 68
    :goto_43
    const-string/jumbo p0, "updateBrowserNewsSwitch content:"

    .line 71
    const-string v1, "LauncherSettingsFragment"

    .line 73
    invoke-static {p0, v0, v1}, Lcom/android/common/config/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 77
    :cond_4c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_51

    goto :goto_55

    :cond_51
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_55
    :goto_55
    return-void
.end method

.method private final updateExpandDockEntry()V
    .registers 3

    .line 1
    const-string/jumbo v0, "updateExpandDockEntry "

    .line 4
    const-string v1, "LauncherSettingsFragment"

    .line 6
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 15
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1f

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2d

    .line 26
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 28
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2d

    .line 32
    :cond_1f
    :goto_1f
    const-string v0, " updateExpandDockEntry removePreference."

    .line 34
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2d

    .line 41
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 43
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2d
    :goto_2d
    return-void
.end method

.method private final updateIconFallenEntry()V
    .registers 4

    .line 1
    const-string/jumbo v0, "updateIconFallenEntry "

    .line 4
    const-string v1, "LauncherSettingsFragment"

    .line 6
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1c

    .line 14
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconFallen:Z

    if-nez v0, :cond_12

    goto :goto_1c

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2a

    .line 23
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 25
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2a

    .line 29
    :cond_1c
    :goto_1c
    const-string v0, " updateIconFallenEntry removePreference."

    .line 31
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2a

    .line 38
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 40
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 43
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherGestureCategory:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_2f

    goto :goto_3e

    :cond_2f
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3a

    .line 52
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_3a

    move v0, v1

    :cond_3a
    xor-int/2addr v0, v1

    .line 60
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3e
    return-void
.end method

.method private final updateIndicatorEntryMenuState()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getIndicatorEntryTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 13
    .line 14
    if-nez v1, :cond_10

    .line 15
    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->g(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_13
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIndicatorEntryMenu:Lcom/coui/appcompat/preference/COUIMenuPreference;

    .line 21
    .line 22
    if-nez p0, :cond_18

    .line 23
    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :goto_1b
    return-void
.end method

.method private final updateLauncherMode()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v1

    .line 17
    iput v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 25
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_1d

    goto :goto_20

    .line 30
    :cond_1d
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 33
    :cond_20
    :goto_20
    iget p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    .line 35
    const-string/jumbo v0, "updateLauncherStateInfo onPostExecute mCurLauncherMode = "

    .line 38
    const-string v1, "LauncherSettingsFragment"

    .line 40
    invoke-static {p0, v0, v1}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateLauncherModeRelatedView()V
    .registers 4

    .line 1
    const-string/jumbo v0, "updateLauncherModeRelatedView"

    .line 4
    const-string v1, "LauncherSettingsFragment"

    .line 6
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_26

    .line 14
    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    .line 16
    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v0

    if-nez v0, :cond_26

    .line 22
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_26

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_34

    .line 33
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 35
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_34

    .line 39
    :cond_26
    :goto_26
    const-string v0, " updateLauncherModeRelatedView removePreference."

    .line 41
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_34

    .line 48
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 50
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_34
    :goto_34
    return-void
.end method

.method private final updateLauncherStateInfo()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherMode()V

    .line 4
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherModeRelatedView()V

    .line 7
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIconFallenEntry()V

    .line 10
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updatePageTurnEntry()V

    .line 13
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateWidgetOptimizeEntry()V

    .line 16
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateExpandDockEntry()V

    .line 19
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateAnimSpeed()V

    .line 22
    const-string/jumbo v0, "layout"

    .line 25
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "layout_is_compact"

    .line 31
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "is_launcher_layout_locked"

    .line 37
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "is_show_indicated_app_for_drawer_mode"

    .line 43
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "is_add_app_to_workspace_for_drawer_mode"

    .line 49
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "is_drawer_app_global_search"

    .line 55
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "is_double_click_lock"

    .line 61
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "is_finger_clear_dot"

    .line 67
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "is_optimize_widget"

    .line 73
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "is_search_entry_enable"

    .line 79
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "is_breeno_entry_enable"

    .line 85
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "key_indicator_entry_type"

    .line 91
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "is_show_bottom_search_box"

    .line 97
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 110
    const-string/jumbo v0, "launcher_slide_down_type_simple"

    goto :goto_74

    .line 114
    :cond_71
    const-string/jumbo v0, "launcher_slide_down_type"

    .line 117
    :goto_74
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->generateBranchPreference()V

    .line 123
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBrowserNewsSwitch()V

    return-void
.end method

.method private final updatePageTurnEntry()V
    .registers 4

    .line 1
    const-string/jumbo v0, "updatePageTurnEntry "

    .line 4
    const-string v1, "LauncherSettingsFragment"

    .line 6
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 15
    const-string/jumbo v0, "updatePageTurnEntry removePreference."

    .line 18
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_27

    .line 25
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 27
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_27

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_27

    .line 35
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mPageTurnSettingJump:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 37
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 40
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_2c

    goto :goto_3b

    :cond_2c
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_37

    .line 49
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    :cond_37
    xor-int/2addr v0, v1

    .line 57
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3b
    return-void
.end method

.method private final updateSlideDownState(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    const-string/jumbo v1, "mContext"

    if-nez p1, :cond_c

    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    .line 13
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 17
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v2, :cond_18

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_19

    :cond_18
    move-object v0, v2

    .line 26
    :goto_19
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_57

    const/4 v1, 0x5

    if-eq v0, v1, :cond_50

    const/4 v1, 0x6

    if-eq v0, v1, :cond_49

    const/4 v1, 0x7

    if-eq v0, v1, :cond_30

    .line 42
    sget v0, Lcom/android/launcher3/R$string;->search_global:I

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 49
    :cond_30
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 55
    sget-boolean v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    if-nez v0, :cond_3b

    goto :goto_42

    .line 60
    :cond_3b
    sget v0, Lcom/android/launcher3/R$string;->pull_down_dialog_hiassistant:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 67
    :cond_42
    :goto_42
    sget v0, Lcom/android/launcher3/R$string;->search_global:I

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 74
    :cond_49
    sget v0, Lcom/android/launcher3/R$string;->notification_and_control_center:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 81
    :cond_50
    sget v0, Lcom/android/launcher3/R$string;->search_global:I

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 88
    :cond_57
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 94
    sget-boolean v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    if-eqz v0, :cond_6f

    .line 98
    invoke-static {}, Lcom/android/overlay/OverlayUtils;->shouldShowSwipeDownShelfItem()Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_6f

    .line 105
    :cond_68
    sget v0, Lcom/android/launcher3/R$string;->pull_down_dialog_shelf:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 112
    :cond_6f
    :goto_6f
    sget v0, Lcom/android/launcher3/R$string;->search_global:I

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    :goto_75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "gyh, customize notification:"

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "LauncherSettingsFragment"

    .line 138
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v0, :cond_93

    .line 145
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 148
    :cond_93
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_98

    goto :goto_9b

    .line 153
    :cond_98
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->g(Ljava/lang/String;)V

    .line 156
    :goto_9b
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_a0

    goto :goto_a3

    .line 161
    :cond_a0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_a3
    return-void
.end method

.method private final updateWidgetOptimizeEntry()V
    .registers 4

    .line 1
    const-string/jumbo v0, "updateWidgetOptimizeEntry "

    .line 4
    const-string v1, "LauncherSettingsFragment"

    .line 6
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/launcher3/widget/WidgetAlignUtils;->shouldShowWidgetOptimizeOption()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 15
    const-string v0, " updateWidgetOptimizeEntry removePreference."

    .line 17
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_26

    .line 24
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 26
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_26

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_26

    .line 34
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherWidgetOptimizeSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 36
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 39
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherMoreCategory:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_2b

    goto :goto_3a

    :cond_2b
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_36

    .line 48
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_36

    move v0, v1

    :cond_36
    xor-int/2addr v0, v1

    .line 56
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3a
    return-void
.end method


# virtual methods
.method public final generateBranchPreference()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_64

    .line 5
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->isVodafoneChannel()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 13
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_64

    .line 18
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_5a

    .line 22
    const-string v0, "LauncherSettingsFragment"

    .line 24
    const-string v1, " generateBranchPreference mBranchPreferenceForRLM == null"

    .line 26
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x23

    .line 40
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 43
    sget v1, Lcom/android/launcher3/R$string;->smart_search_settings_title:I

    .line 45
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    const-string/jumbo v1, "global_search_setting_entrance_preference_vodafone"

    .line 55
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_44

    .line 62
    const-string/jumbo v1, "mContext"

    .line 65
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 69
    :cond_44
    invoke-static {v1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchSearchValue(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    .line 78
    :goto_4d
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    new-instance v1, Lcom/android/launcher/settings/o;

    .line 83
    invoke-direct {v1, v0, p0}, Lcom/android/launcher/settings/o;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    .line 86
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 89
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 91
    :cond_5a
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6f

    .line 95
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 97
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6f

    .line 101
    :cond_64
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_6f

    .line 105
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_6f

    .line 109
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6f
    :goto_6f
    return-void
.end method

.method public getDefaultViewModelCreationExtras()Lf2/a;
    .registers 1

    .line 1
    sget-object p0, Lf2/a$a;->b:Lf2/a$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getActionbarTitle(Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final initLayoutUpgradeGuide()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 5
    const-string/jumbo v1, "launcher_layout_upgrade_guide_settings"

    .line 8
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v3

    if-eqz v3, :cond_62

    if-nez v0, :cond_62

    .line 26
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_58

    .line 30
    new-instance v0, Lcom/coui/appcompat/preference/COUIPreference;

    .line 32
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2a

    .line 36
    const-string/jumbo v3, "mContext"

    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 43
    :cond_2a
    invoke-direct {v0, v3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    .line 48
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 51
    sget v1, Lcom/android/launcher3/R$layout;->pref_layout_upgrade_settings:I

    .line 53
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 56
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 59
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 65
    sget v1, Lcom/android/launcher3/R$string;->layout_upgrade_guide_settings_message_pad:I

    .line 67
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    .line 72
    :cond_47
    sget v1, Lcom/android/launcher3/R$string;->two_panel_guide_settings_message:I

    .line 74
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_4d
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/android/common/util/q0;

    .line 83
    invoke-direct {v1, p0}, Lcom/android/common/util/q0;-><init>(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 89
    :cond_58
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 93
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    .line 95
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_7f

    .line 99
    :cond_62
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v1

    if-nez v1, :cond_7f

    if-eqz v0, :cond_7f

    .line 107
    const-string v0, "LauncherSettingsFragment"

    .line 109
    const-string/jumbo v1, "remove layout upgrade guide preference"

    .line 112
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_7f

    .line 119
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 123
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    .line 125
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final initRecommended()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "bottom_recommended"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    .line 14
    .line 15
    if-eqz v0, :cond_1e

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/p;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/launcher/settings/LauncherSettingsFragment$initRecommended$1;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment$initRecommended$1;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Lkotlin/coroutines/c;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/g;->b(Lkotlinx/coroutines/g0;Lkotlin/coroutines/e$a;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/e2;

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method public final isActivityDisplay(Landroid/content/Intent;)Z
    .registers 3

    .line 1
    const-string/jumbo v0, "intent"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_26

    .line 28
    check-cast p0, Ljava/util/Collection;

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-ne p0, p1, :cond_26

    move v0, p1

    :cond_26
    return v0
.end method

.method public onBindPreferences()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onBindPreferences()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkHighlightDelayIfNeed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onBusEvent(Lcom/android/launcher/breeno/UIRefreshEvent;)V
    .registers 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 5
    const-string p2, "LauncherSettingsFragment"

    if-nez p1, :cond_f

    .line 9
    const-string/jumbo p0, "onCreate activity == null"

    .line 12
    invoke-static {p2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_f
    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 24
    const-string/jumbo p0, "onCreate intent == null"

    .line 27
    invoke-static {p2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_1e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportAod()Z

    move-result p2

    .line 35
    iput-boolean p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAodSupport:Z

    .line 37
    sget p2, Lcom/android/launcher3/R$xml;->launcher_settings:I

    .line 39
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 42
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences()V

    .line 45
    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p2, :cond_4f

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 53
    const-string v1, "assistant_screen_type"

    .line 55
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 69
    const-string p2, "assistant_screen_type_left_enable"

    .line 71
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 75
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShelfAssistScreenEnableObserver:Landroid/database/ContentObserver;

    .line 77
    invoke-virtual {p1, p2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    :cond_4f
    const-string/jumbo p1, "key_from"

    .line 83
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFrom:Ljava/lang/String;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    .line 92
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    .line 1
    const-string/jumbo v0, "inflater"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "parent"

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$k;)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .line 1
    const-string/jumbo v0, "inflater"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 11
    sget p2, Lcom/android/launcher3/R$id;->toolbar:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 17
    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p2, :cond_15

    return-object p1

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "savedInstanceState:"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 37
    const-string v0, "LauncherSettingsFragment"

    .line 39
    invoke-static {v0, p3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_73

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_3a

    .line 54
    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    goto :goto_3b

    :cond_3a
    const/4 p3, 0x0

    .line 60
    :goto_3b
    sget-object v1, Lcom/oplus/basecommon/util/IntentUtils;->Companion:Lcom/oplus/basecommon/util/IntentUtils$Companion;

    .line 62
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    const-string v2, ":settings:oplus_from_main_page"

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, p3, v2, v3}, Lcom/oplus/basecommon/util/IntentUtils$Companion;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p3

    .line 72
    iput-boolean p3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "fromMainPage:"

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 88
    invoke-static {v0, p3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 95
    instance-of p3, p3, Lcom/android/launcher/settings/LauncherSettingsActivity;

    if-eqz p3, :cond_73

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 103
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.settings.LauncherSettingsActivity"

    .line 106
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    check-cast p3, Lcom/android/launcher/settings/LauncherSettingsActivity;

    .line 111
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    .line 113
    invoke-virtual {p3, v0}, Lcom/android/launcher/OplusBaseAppCompatActivity;->enableRootViewBackAnim(Z)V

    .line 116
    :cond_73
    invoke-virtual {p2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_7e

    .line 122
    sget p3, Lcom/android/launcher3/R$drawable;->coui_back_arrow:I

    .line 124
    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 127
    :cond_7e
    sget-object p2, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    .line 129
    invoke-virtual {p2}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p2

    if-eqz p2, :cond_89

    .line 135
    invoke-virtual {p2, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_89
    return-object p1
.end method

.method public onDestroy()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-eqz v1, :cond_10

    .line 9
    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onDestroyPreference()V

    .line 12
    sget-object v1, Lm9/n;->a:Lm9/n;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    goto :goto_16

    :catchall_e
    move-exception v1

    goto :goto_12

    :cond_10
    move-object v1, v0

    goto :goto_16

    .line 19
    :goto_12
    invoke-static {v1}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    .line 23
    :goto_16
    invoke-static {v1}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string/jumbo v2, "onDestroy: exception: "

    .line 36
    const-string v3, "LauncherSettingsFragment"

    .line 38
    invoke-static {v2, v1, v3}, Lcom/android/common/config/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_28
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 59
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_67

    .line 63
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    .line 65
    const-string/jumbo v2, "mContext"

    if-nez v1, :cond_49

    .line 70
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    .line 74
    :cond_49
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 80
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    .line 82
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    :cond_54
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5c

    .line 89
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    .line 93
    :cond_5c
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 99
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShelfAssistScreenEnableObserver:Landroid/database/ContentObserver;

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    :cond_67
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_6e

    .line 108
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_6e
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mResetPullDownHintDialog:Landroidx/appcompat/app/f;

    if-eqz v1, :cond_75

    .line 115
    invoke-virtual {v1}, Landroidx/appcompat/app/q;->dismiss()V

    .line 118
    :cond_75
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    .line 120
    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    .line 122
    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 128
    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    .line 131
    :cond_82
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;

    .line 133
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCompatStrategyChangeListener:Lcom/android/launcher/settings/LauncherSettingsFragment$mCompatStrategyChangeListener$1;

    .line 135
    invoke-virtual {v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature;->removeCompatStrategyChangeListener(Lcom/android/launcher/bottomsearch/BottomSearchDecoupleFeature$CompatStrategyChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->rmCheckHighlightDelayIfNeed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFoldStateChange(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIconFallenEntry()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updatePageTurnEntry()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const-string/jumbo v0, "preference"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "newValue"

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v1, "onPreferenceChange, key: "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "LauncherSettingsFragment"

    .line 34
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "launcher_locked"

    .line 40
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    .line 48
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-nez v0, :cond_3e

    .line 52
    const-string/jumbo p1, "is_launcher_layout_locked"

    .line 55
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    goto/16 :goto_105

    .line 63
    :cond_3e
    const-string v0, "app_startup_anim_speed"

    .line 65
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 71
    sget-object p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    .line 73
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo v3, "mContext"

    if-nez v0, :cond_53

    .line 80
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    .line 84
    :cond_53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {p1, v0, v4, v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    .line 92
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_64

    goto :goto_67

    .line 101
    :cond_64
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    .line 104
    :goto_67
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_6f

    .line 108
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_70

    :cond_6f
    move-object v2, p0

    .line 113
    :goto_70
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 117
    const-string/jumbo p1, "setting_app_startup_anim_speed"

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_105

    .line 129
    :cond_80
    const-string/jumbo v0, "launcher_slide_down"

    .line 132
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->onClickSlideDownPopMenuList(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 147
    :cond_92
    const-string/jumbo v0, "launcher_double_click_lock"

    .line 150
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 156
    const-string/jumbo p1, "is_double_click_lock"

    .line 159
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 163
    :cond_a2
    const-string/jumbo v0, "launcher_finger_clear_dot"

    .line 166
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 172
    const-string/jumbo p1, "is_finger_clear_dot"

    .line 175
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 179
    :cond_b2
    const-string/jumbo v0, "launcher_search_entry_enable"

    .line 182
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 188
    const-string/jumbo p1, "is_search_entry_enable"

    .line 191
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 195
    :cond_c2
    const-string/jumbo v0, "launcher_breeno_entry_enable"

    .line 198
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 204
    const-string/jumbo p1, "is_breeno_entry_enable"

    .line 207
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 211
    :cond_d2
    const-string/jumbo v0, "launcher_indicator_entry"

    .line 214
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->onClickIndicatorEntryMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 229
    :cond_e4
    const-string/jumbo v0, "launcher_widget_optimize_setting_entry"

    .line 232
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 238
    const-string/jumbo p1, "is_optimize_widget"

    .line 241
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 245
    :cond_f4
    const-string v0, "browser_news_switch"

    .line 247
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_105

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->onClickSlideUpPopMenuList(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_105
    :goto_105
    return v1
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    .line 4
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onResumePreference()V

    .line 11
    sget-object v0, Lm9/n;->a:Lm9/n;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_15

    .line 18
    :goto_11
    invoke-static {v0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    .line 22
    :goto_15
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 26
    const-string v1, "LauncherSettingsFragment"

    if-eqz v0, :cond_27

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string/jumbo v2, "onResume: exception: "

    .line 37
    invoke-static {v2, v0, v1}, Lcom/android/common/config/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_27
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    if-nez v0, :cond_31

    .line 44
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    .line 47
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    .line 50
    :cond_31
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    if-nez v0, :cond_3e

    .line 54
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBranchSearchPreference()V

    :cond_3e
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    .line 66
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_58

    .line 71
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_58

    .line 75
    const-string v0, " onResume removePreference."

    .line 77
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_58

    .line 84
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 86
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 89
    :cond_58
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 91
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSurpportLayoutUpgrade()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initLayoutUpgradeGuide()V

    .line 100
    :cond_63
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 106
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initTabletLayoutUpgradeGuide()V

    :cond_6c
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStop()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 4
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onStopPreference()V

    .line 11
    sget-object v0, Lm9/n;->a:Lm9/n;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_15

    .line 18
    :goto_11
    invoke-static {v0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    .line 22
    :goto_15
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "onStop: exception: "

    .line 35
    const-string v2, "LauncherSettingsFragment"

    .line 37
    invoke-static {v1, v0, v2}, Lcom/android/common/config/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_27
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateBranchSearchPreference()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    .line 3
    const-string/jumbo v1, "global_search_setting_entrance_preference"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_23

    .line 10
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_23

    .line 14
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_16

    .line 18
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v2

    :goto_17
    if-nez v0, :cond_23

    .line 26
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_46

    .line 30
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    .line 32
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_46

    .line 36
    :cond_23
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    if-eq v0, v3, :cond_46

    .line 40
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_30

    .line 44
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, v2

    :goto_31
    if-eqz v0, :cond_34

    move-object v2, v0

    :cond_34
    if-eqz v2, :cond_46

    .line 55
    const-string v0, "LauncherSettingsFragment"

    .line 57
    const-string v1, " updateBranchSearchPreference remove branch setting preference"

    .line 59
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    .line 64
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_46

    .line 68
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_46
    :goto_46
    return-void
.end method
