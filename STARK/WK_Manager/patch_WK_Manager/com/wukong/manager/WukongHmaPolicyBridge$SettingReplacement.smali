.class final Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingReplacement"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    iput-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->name:Ljava/lang/String;

    .line 1468
    iput-object p2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->value:Ljava/lang/String;

    return-void
.end method
