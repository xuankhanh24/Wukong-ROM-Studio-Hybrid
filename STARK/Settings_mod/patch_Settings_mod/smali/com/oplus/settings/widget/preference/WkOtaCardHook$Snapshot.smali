.class final Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settings/widget/preference/WkOtaCardHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Snapshot"
.end annotation


# instance fields
.field final blur:Z

.field final blurLevel:I

.field final mode:I

.field final revision:J

.field final soundEnabled:Z

.field final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/net/Uri;ZIJZ)V
    .locals 0

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    .line 747
    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    .line 748
    iput-boolean p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blur:Z

    .line 749
    iput p4, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    .line 750
    iput-wide p5, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    .line 751
    iput-boolean p7, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    .line 752
    return-void
.end method
