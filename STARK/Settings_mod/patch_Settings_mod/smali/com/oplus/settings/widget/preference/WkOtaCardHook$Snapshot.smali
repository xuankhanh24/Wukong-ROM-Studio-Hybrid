.class final Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
.super Ljava/lang/Object;


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

.field final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/net/Uri;ZIJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blur:Z

    iput p4, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    iput-wide p5, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    return-void
.end method
