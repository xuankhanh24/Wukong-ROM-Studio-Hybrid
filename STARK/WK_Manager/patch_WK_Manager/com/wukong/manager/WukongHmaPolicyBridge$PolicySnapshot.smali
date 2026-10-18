.class final Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PolicySnapshot"
.end annotation


# static fields
.field static final EMPTY:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;


# instance fields
.field final active:Z

.field final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;"
        }
    .end annotation
.end field

.field final version:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1379
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    const/4 v1, 0x0

    .line 1380
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;-><init>(JZLjava/util/Map;)V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->EMPTY:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    return-void
.end method

.method constructor <init>(JZLjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;)V"
        }
    .end annotation

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    iput-wide p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->version:J

    .line 1387
    iput-boolean p3, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->active:Z

    if-eqz p4, :cond_a

    goto :goto_c

    .line 1388
    :cond_a
    sget-object p4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_c
    iput-object p4, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->rules:Ljava/util/Map;

    return-void
.end method
