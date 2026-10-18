.class final Lcom/wukong/manager/WukongInstrumentationHook$PropField;
.super Ljava/lang/Object;
.source "WukongInstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongInstrumentationHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropField"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final owner:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;->owner:Ljava/lang/Class;

    .line 400
    iput-object p2, p0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;->name:Ljava/lang/String;

    return-void
.end method
