.class Lcom/wukong/manager/WukongHmaPolicyBridge$1;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;->scheduleShortcutHostRegistration(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attempt:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$1;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$400(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$1;->val$attempt:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_15

    .line 204
    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$1;->val$context:Landroid/content/Context;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$500(Landroid/content/Context;I)V

    :cond_15
    return-void
.end method
