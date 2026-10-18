.class public final Lcom/android/launcher3/hotseat/HotseatItemUtils;
.super Ljava/lang/Object;
.source "HotseatItemUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u0019\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0019\u0010\u0011\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u000bJ\u0019\u0010\u0012\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u000bJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u000eJ\u0019\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u000bJ\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0019\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u000bJ\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u000bJ\u0019\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u000bJ\u0019\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJG\u0010!\u001a\u00020\u00192\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0006\u0010 \u001a\u00020\tH\u0003\u00a2\u0006\u0004\u0008!\u0010\"J/\u0010&\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\tH\u0003\u00a2\u0006\u0004\u0008&\u0010\'J7\u0010)\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u000c2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0006\u0010 \u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0081\u0001\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010-2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0016\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001dH\u0007\u00a2\u0006\u0004\u0008.\u0010/J=\u00101\u001a\u00020\u00192\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00070-2\u0006\u0010 \u001a\u00020\tH\u0007\u00a2\u0006\u0004\u00081\u00102J\'\u00103\u001a\u00020\u00192\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001dH\u0007\u00a2\u0006\u0004\u00083\u00104J?\u00105\u001a\u00020\t2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001dH\u0007\u00a2\u0006\u0004\u00085\u00106J!\u00109\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u00108\u001a\u000207H\u0007\u00a2\u0006\u0004\u00089\u0010:J\u0019\u0010<\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010?\u001a\u0004\u0018\u00010>*\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008?\u0010@J\u0013\u0010A\u001a\u00020>*\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008A\u0010@J\'\u0010D\u001a\u0012\u0012\u0004\u0012\u00020>0\u001cj\u0008\u0012\u0004\u0012\u00020>`\u001d2\u0006\u0010C\u001a\u00020BH\u0007\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010D\u001a\u00020>2\u0006\u0010F\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008D\u0010@J\'\u0010G\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0006\u0010C\u001a\u00020BH\u0007\u00a2\u0006\u0004\u0008G\u0010EJ\u0019\u0010H\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008H\u0010=J\u0019\u0010I\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008I\u0010=J\u0017\u0010J\u001a\u00020\u000c2\u0006\u00108\u001a\u000207H\u0007\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008N\u0010OJ)\u0010P\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0008\u00108\u001a\u0004\u0018\u000107H\u0007\u00a2\u0006\u0004\u0008P\u0010QJ)\u0010R\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u0008\u00108\u001a\u0004\u0018\u000107H\u0007\u00a2\u0006\u0004\u0008R\u0010QJ\u0019\u0010S\u001a\u00020\u000c2\u0008\u00108\u001a\u0004\u0018\u000107H\u0007\u00a2\u0006\u0004\u0008S\u0010KJ\u001f\u0010W\u001a\u00020\u00192\u0006\u0010T\u001a\u00020\u00072\u0006\u0010V\u001a\u00020UH\u0007\u00a2\u0006\u0004\u0008W\u0010XJ\u001f\u0010W\u001a\u00020\u00192\u0006\u0010T\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020YH\u0007\u00a2\u0006\u0004\u0008W\u0010[J1\u0010^\u001a\u00020\t2\u0006\u0010T\u001a\u00020\u00072\u0018\u0010]\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00190\\H\u0007\u00a2\u0006\u0004\u0008^\u0010_J\u0017\u0010a\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010c\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008c\u0010bJ\u000f\u0010d\u001a\u00020\u0019H\u0007\u00a2\u0006\u0004\u0008d\u0010\u0003J\u0019\u0010e\u001a\u00020\u00192\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008e\u0010fJ\u000f\u0010g\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008g\u0010MJ\u0017\u0010h\u001a\u00020\t2\u0006\u00108\u001a\u000207H\u0007\u00a2\u0006\u0004\u0008h\u0010iJ\u000f\u0010j\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008j\u0010MJ\u000f\u0010k\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008k\u0010MJ\u000f\u0010l\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008l\u0010MJ\u000f\u0010m\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008m\u0010OJ\u0017\u0010o\u001a\u00020\t2\u0006\u0010n\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008o\u0010\u000eJ1\u0010p\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001dH\u0007\u00a2\u0006\u0004\u0008p\u0010qJ=\u0010s\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00172\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001cj\u0008\u0012\u0004\u0012\u00020\u0007`\u001d2\u000c\u0010r\u001a\u0008\u0012\u0004\u0012\u00020\u00070-H\u0003\u00a2\u0006\u0004\u0008s\u0010tR\u0014\u0010u\u001a\u00020>8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0014\u0010w\u001a\u00020\u000c8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\'\u0010y\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u001cj\u0008\u0012\u0004\u0012\u00020\u000c`\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\u00a8\u0006}"
    }
    d2 = {
        "Lcom/android/launcher3/hotseat/HotseatItemUtils;",
        "",
        "<init>",
        "()V",
        "Lcom/android/launcher3/OplusHotseat;",
        "getHotseat",
        "()Lcom/android/launcher3/OplusHotseat;",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "itemInfo",
        "",
        "isSubscribeItem",
        "(Lcom/android/launcher3/model/data/ItemInfo;)Z",
        "",
        "itemType",
        "(I)Z",
        "isSubscribeAllAppsItem",
        "isSubscribeGlobalSearchItem",
        "isSubscribeFileManagerItem",
        "isExpandItem",
        "isNormalItem",
        "isDividerItem",
        "isSubscribeDividerItem",
        "isExpandDividerItem",
        "Lcom/android/launcher3/model/BgDataModel;",
        "bgDataModel",
        "Lm9/n;",
        "rectifyItemCellXIfNecessary",
        "(Lcom/android/launcher3/model/BgDataModel;)V",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "subscribeAreaItems",
        "normalItems",
        "isFoldScreenExpand",
        "updateCellXFromScreenId",
        "(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V",
        "rank",
        "normalItemCount",
        "subscribeAndDividerCount",
        "getCellXFromOrder",
        "(IIIZ)I",
        "subscribeAreaItemSize",
        "rectifyNormalItems",
        "(ILjava/util/ArrayList;Z)V",
        "hotseatAllItems",
        "expandAreaItems",
        "",
        "getHotseatItems",
        "(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;",
        "frontItems",
        "rectifyExpandItems",
        "(Ljava/util/ArrayList;Ljava/util/List;Z)V",
        "rectifySubscribeItemCellX",
        "(Ljava/util/ArrayList;)V",
        "isNecessaryRectify",
        "(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z",
        "Lcom/android/launcher3/Launcher;",
        "launcher",
        "ignoreBindInHotseat",
        "(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)Z",
        "hotseat",
        "getNormalItemCount",
        "(Lcom/android/launcher3/OplusHotseat;)I",
        "",
        "getCompactTargetPackage",
        "(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;",
        "getPackageAndType",
        "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
        "container",
        "getNormalApplicationItemPackages",
        "(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;",
        "info",
        "getAllCombineItems",
        "getExceptExpandItemCount",
        "getSubscribeItemCount",
        "getBgDataExceptExpandItemCount",
        "(Lcom/android/launcher3/Launcher;)I",
        "getBgDataNormalAndExpandItemCount",
        "()I",
        "hasExceptSubscribeItemInRightArea",
        "()Z",
        "getBgDataNormalItems",
        "(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;",
        "getBgDataSubscribeItems",
        "getBgDataAllItemCount",
        "item",
        "Landroid/content/ContentValues;",
        "values",
        "rectifyNormalItemDbData",
        "(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ContentValues;)V",
        "Lcom/android/launcher3/util/ContentWriter;",
        "writer",
        "(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V",
        "Lkotlin/Function2;",
        "write",
        "rectifyNormalItemDbDataInner",
        "(Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;)Z",
        "cellX",
        "rectifyScreenIdFormCellXForScreenFolded",
        "(I)I",
        "rectifyScreenIdFormCellXForExpandScreen",
        "startTaskbarSetting",
        "hideSubscribeItem",
        "(Lcom/android/launcher3/model/data/ItemInfo;)V",
        "getExpandItemMaxCount",
        "isLandscapeFromDeviceprofile",
        "(Lcom/android/launcher3/Launcher;)Z",
        "getHotseatItemAndDiverMaxCount",
        "getBgDataSubscribeAndNormalAndDiverCount",
        "getBgDataExpandItemMaxCount",
        "dockerCompactArrangement",
        "iconVisiableSizePx",
        "iconSizeLargerThanDefaultSize",
        "filterExpandAreaItems",
        "(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;)V",
        "itemsToRemove",
        "removeItems",
        "(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/List;)V",
        "TAG",
        "Ljava/lang/String;",
        "WHITE_SWAN_EXPANDED_DOCKER_COMPACT_ARRANGEMENT_ICON_SIZE_PX",
        "I",
        "subscribeItemOrderedTypes",
        "Ljava/util/ArrayList;",
        "getSubscribeItemOrderedTypes",
        "()Ljava/util/ArrayList;",
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
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/HotseatItemUtils;

.field private static final TAG:Ljava/lang/String; = "HotseatItemUtils"

.field private static final WHITE_SWAN_EXPANDED_DOCKER_COMPACT_ARRANGEMENT_ICON_SIZE_PX:I = 0x91

.field private static final subscribeItemOrderedTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/launcher3/hotseat/HotseatItemUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/launcher3/hotseat/HotseatItemUtils;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatItemUtils;

    .line 7
    .line 8
    const/16 v0, 0xcc

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0xcd

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0xce

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lkotlin/collections/s;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/launcher3/hotseat/HotseatItemUtils;->subscribeItemOrderedTypes:Ljava/util/ArrayList;

    .line 35
    .line 36
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final dockerCompactArrangement()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher/UiConfig;->isWhiteSwan()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 6
    .line 7
    invoke-static {}, Lcom/android/launcher/UiConfig;->isPeacock()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 12
    .line 13
    :cond_c
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public static final filterExpandAreaItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "expandAreaItems"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    if-eqz p0, :cond_156

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_10

    .line 14
    .line 15
    goto/16 :goto_156

    .line 16
    .line 17
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_30

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v4, v3

    .line 37
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 38
    .line 39
    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 40
    .line 41
    const/16 v5, 0xc9

    .line 42
    .line 43
    if-ne v4, v5, :cond_19

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_19

    .line 49
    :cond_30
    new-instance v2, Lcom/android/launcher3/hotseat/HotseatItemUtils$filterExpandAreaItems$$inlined$sortedBy$1;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils$filterExpandAreaItems$$inlined$sortedBy$1;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lkotlin/collections/w;->m0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-le v2, v0, :cond_6a

    .line 63
    .line 64
    invoke-static {v1}, Lkotlin/collections/w;->X(Ljava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 69
    .line 70
    check-cast v1, Ljava/lang/Iterable;

    .line 71
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_67

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    move-object v5, v4

    .line 92
    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 93
    .line 94
    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 95
    .line 96
    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 97
    .line 98
    if-eq v5, v6, :cond_50

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_50

    .line 104
    :cond_67
    invoke-static {p0, p1, v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->removeItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    :cond_6a
    new-instance v1, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_73
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_8a

    .line 121
    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    move-object v4, v3

    .line 127
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 128
    .line 129
    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 130
    .line 131
    const/16 v5, 0xca

    .line 132
    .line 133
    if-ne v4, v5, :cond_73

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_73

    .line 139
    :cond_8a
    const/4 v2, 0x2

    .line 140
    new-array v2, v2, [Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    sget-object v3, Lcom/android/launcher3/hotseat/HotseatItemUtils$filterExpandAreaItems$expandItems$2;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatItemUtils$filterExpandAreaItems$expandItems$2;

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    aput-object v3, v2, v4

    .line 146
    .line 147
    sget-object v3, Lcom/android/launcher3/hotseat/HotseatItemUtils$filterExpandAreaItems$expandItems$3;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatItemUtils$filterExpandAreaItems$expandItems$3;

    .line 148
    .line 149
    aput-object v3, v2, v0

    .line 150
    .line 151
    invoke-static {v2}, Lo9/b;->a([Lkotlin/jvm/functions/Function1;)Lo9/a;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v1, v0}, Lkotlin/collections/w;->m0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    const-string v3, ""

    .line 168
    .line 169
    if-le v1, v2, :cond_e6

    .line 170
    .line 171
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    move-object v4, v0

    .line 182
    check-cast v4, Ljava/lang/Iterable;

    .line 183
    .line 184
    invoke-static {v4}, Lkotlin/collections/w;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    :cond_bf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_131

    .line 197
    .line 198
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 203
    .line 204
    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    if-nez v6, :cond_d2

    .line 209
    .line 210
    move-object v6, v3

    .line 211
    :cond_d2
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_bf

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-ne v5, v6, :cond_bf

    .line 229
    .line 230
    goto :goto_131

    .line 231
    :cond_e6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExpandItemMaxCount()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-ge v1, v2, :cond_130

    .line 240
    .line 241
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :cond_f9
    :goto_f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_125

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 261
    .line 262
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    if-nez v5, :cond_10c

    .line 267
    .line 268
    move-object v5, v3

    .line 269
    :cond_10c
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_121

    .line 274
    .line 275
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 276
    .line 277
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    .line 285
    .line 286
    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 287
    .line 288
    if-le v6, v7, :cond_f9

    .line 289
    .line 290
    :cond_121
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    goto :goto_f9

    .line 294
    :cond_125
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Ljava/lang/Iterable;

    .line 299
    .line 300
    invoke-static {v1}, Lkotlin/collections/w;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    goto :goto_131

    .line 305
    :cond_130
    move-object v2, v0

    .line 306
    :cond_131
    :goto_131
    check-cast v0, Ljava/lang/Iterable;

    .line 307
    .line 308
    new-instance v1, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :cond_13c
    :goto_13c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_153

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    move-object v4, v3

    .line 328
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 329
    .line 330
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_13c

    .line 335
    .line 336
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_13c

    .line 340
    :cond_153
    invoke-static {p0, p1, v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->removeItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 341
    .line 342
    .line 343
    :cond_156
    :goto_156
    return-void
.end method

.method public static final getAllCombineItems(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "container"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_45

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 34
    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_42

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 42
    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    .line 45
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 50
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_42

    move-object v4, v3

    .line 56
    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 58
    invoke-static {v4}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_45
    return-object v0
.end method

.method public static final getBgDataAllItemCount(Lcom/android/launcher3/Launcher;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_1f

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1f

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 20
    .line 21
    if-eqz p0, :cond_1f

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p0, :cond_1f

    .line 26
    .line 27
    check-cast p0, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_1f
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4b

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 53
    .line 54
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 55
    .line 56
    const/16 v5, -0x65

    .line 57
    .line 58
    if-ne v4, v5, :cond_28

    .line 59
    .line 60
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_28

    .line 65
    .line 66
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_28

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_28

    .line 76
    :cond_4b
    invoke-static {p0, v0}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0
.end method

.method public static final getBgDataExceptExpandItemCount(Lcom/android/launcher3/Launcher;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "launcher"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 23
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_23

    .line 27
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    if-eqz p0, :cond_23

    .line 31
    check-cast p0, Ljava/util/Collection;

    .line 33
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_23
    new-instance p0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .line 56
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 58
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x65

    if-ne v4, v5, :cond_2c

    .line 64
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 70
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 76
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 80
    :cond_4f
    invoke-static {p0, v0}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static final getBgDataExpandItemMaxCount()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getMaxExpandItemsSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final getBgDataNormalAndExpandItemCount()I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_21

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 22
    .line 23
    if-eqz v2, :cond_21

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v2, :cond_21

    .line 28
    .line 29
    check-cast v2, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4d

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object v4, v3

    .line 54
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 55
    .line 56
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 57
    .line 58
    const/16 v6, -0x65

    .line 59
    .line 60
    if-ne v5, v6, :cond_2a

    .line 61
    .line 62
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_49

    .line 67
    .line 68
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2a

    .line 73
    .line 74
    :cond_49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_2a

    .line 78
    :cond_4d
    invoke-static {v2, v0}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "getBgDataNormalAndExpandItemCount "

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "HotseatItemUtils"

    .line 100
    .line 101
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    return v0
.end method

.method public static final getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_1f

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1f

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 20
    .line 21
    if-eqz p0, :cond_1f

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p0, :cond_1f

    .line 26
    .line 27
    check-cast p0, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_1f
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_45

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 53
    .line 54
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 55
    .line 56
    const/16 v5, -0x65

    .line 57
    .line 58
    if-ne v4, v5, :cond_28

    .line 59
    .line 60
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_28

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_28

    .line 70
    :cond_45
    invoke-static {p0, v0}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public static final getBgDataSubscribeAndNormalAndDiverCount()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public static final getBgDataSubscribeItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_1f

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1f

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 20
    .line 21
    if-eqz p0, :cond_1f

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p0, :cond_1f

    .line 26
    .line 27
    check-cast p0, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_1f
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_47

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 53
    .line 54
    if-eqz v3, :cond_28

    .line 55
    .line 56
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 57
    .line 58
    const/16 v5, -0x65

    .line 59
    .line 60
    if-ne v4, v5, :cond_28

    .line 61
    .line 62
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_28

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_28

    .line 72
    :cond_47
    invoke-static {p0, v0}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method private static final getCellXFromOrder(IIIZ)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return p0

    .line 8
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    return p0

    .line 19
    :cond_12
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4d

    .line 24
    .line 25
    if-eqz p3, :cond_25

    .line 26
    .line 27
    if-gt p2, p0, :cond_25

    .line 28
    .line 29
    add-int v0, p1, p2

    .line 30
    .line 31
    if-ge p0, v0, :cond_25

    .line 32
    .line 33
    add-int/lit8 p3, p0, 0x1

    .line 34
    .line 35
    sub-int/2addr v0, p3

    .line 36
    add-int/2addr v0, p2

    .line 37
    goto :goto_2f

    .line 38
    :cond_25
    if-nez p3, :cond_2e

    .line 39
    .line 40
    if-ge p0, p1, :cond_2e

    .line 41
    .line 42
    add-int/lit8 p3, p0, 0x1

    .line 43
    .line 44
    sub-int v0, p1, p3

    .line 45
    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v0, p0

    .line 48
    :goto_2f
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_4c

    .line 53
    .line 54
    const-string p3, "getCellXFromOrder, screenId:"

    .line 55
    .line 56
    const-string v1, ", CellX:"

    .line 57
    .line 58
    const-string v2, ", normalItemCount:"

    .line 59
    .line 60
    invoke-static {p0, v0, p3, v1, v2}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p3, ",subscribeAndDividerCount: "

    .line 65
    .line 66
    invoke-static {p0, p1, p2, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "Hotseat"

    .line 71
    .line 72
    const-string p2, "HotseatItemUtils"

    .line 73
    .line 74
    invoke-static {p1, p2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    return v0

    .line 78
    :cond_4d
    add-int/lit8 p0, p0, 0x1

    .line 79
    .line 80
    sub-int/2addr p1, p0

    .line 81
    return p1
.end method

.method public static final getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_33

    .line 12
    .line 13
    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 14
    .line 15
    const/16 v3, 0xca

    .line 16
    .line 17
    if-ne v2, v3, :cond_22

    .line 18
    .line 19
    instance-of v2, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 20
    .line 21
    if-eqz v2, :cond_22

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 25
    .line 26
    iget-boolean v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    .line 27
    .line 28
    if-nez v3, :cond_32

    .line 29
    .line 30
    iget-boolean v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    .line 31
    .line 32
    if-eqz v2, :cond_22

    .line 33
    .line 34
    goto :goto_32

    .line 35
    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName$default(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_32
    :goto_32
    move-object v1, v0

    .line 52
    :cond_33
    return-object v1
.end method

.method public static final getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    .line 3
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_f
    if-ge v0, v1, :cond_3f

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 22
    const-string v4, "getChildAt(...)"

    .line 24
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 41
    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_3c

    .line 45
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 47
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 53
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_3c

    add-int/lit8 v2, v2, 0x1

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 64
    :cond_3f
    const-string/jumbo p0, "getExceptExpandItemCount:"

    .line 66
    const-string v0, "HotseatItemUtils"

    .line 68
    invoke-static {v2, p0, v0}, Lcom/android/common/config/m;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final getExpandItemMaxCount()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getMaxExpandItemsSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final getHotseat()Lcom/android/launcher3/OplusHotseat;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/launcher/Launcher;

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    return-object v0
.end method

.method public static final getHotseatItemAndDiverMaxCount()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getHotSeatMaxIconNum()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public static final getHotseatItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "hotseatAllItems"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "subscribeAreaItems"

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "normalItems"

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "expandAreaItems"

    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 34
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 37
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    if-eqz p0, :cond_35

    .line 49
    check-cast p0, Ljava/util/Collection;

    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_35
    new-instance p0, Ljava/util/ArrayList;

    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    :cond_3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 74
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 76
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_3e

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 86
    :cond_55
    invoke-static {p0, p1}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 89
    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    .line 94
    invoke-static {p1, p0}, Lkotlin/collections/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    new-instance p0, Ljava/util/ArrayList;

    .line 99
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    :cond_69
    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 117
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 119
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 125
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 131
    :cond_82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_86
    const/16 v0, 0xa

    .line 137
    invoke-static {p0, v0}, Lkotlin/collections/s;->f(Ljava/lang/Iterable;I)I

    move-result v0

    .line 141
    invoke-static {v0}, Lkotlin/collections/j0;->b(I)I

    move-result v0

    const/16 v1, 0x10

    .line 147
    invoke-static {v0, v1}, Lz9/g;->c(II)I

    move-result v0

    .line 151
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 153
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 156
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 160
    :goto_9f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 166
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 171
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 173
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    .line 183
    :cond_b6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 187
    check-cast p0, Ljava/lang/Iterable;

    .line 189
    invoke-static {p0, p2}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 192
    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifySubscribeItemCellX(Ljava/util/ArrayList;)V

    .line 195
    new-instance p0, Ljava/util/ArrayList;

    .line 197
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    :cond_cb
    :goto_cb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 215
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 217
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_cb

    .line 223
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_cb

    .line 229
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 235
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 239
    :cond_ee
    invoke-static {p0, p3}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 242
    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    .line 244
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    .line 247
    invoke-static {p3, p0}, Lkotlin/collections/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    new-instance p0, Ljava/util/ArrayList;

    .line 252
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 259
    :cond_102
    :goto_102
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 270
    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 272
    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_11b

    .line 278
    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 284
    :cond_11b
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_102

    .line 288
    :cond_11f
    invoke-static {p0, p4}, Lkotlin/collections/w;->r0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 291
    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    .line 293
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    .line 296
    invoke-static {p4, p0}, Lkotlin/collections/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-nez p0, :cond_131

    return-object p3

    .line 306
    :cond_131
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_13c

    return-object p3

    .line 317
    :cond_13c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 325
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 327
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 331
    const-string p1, "getBounds(...)"

    .line 333
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    sget-object p1, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    .line 338
    invoke-virtual {p1, p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_15d

    .line 344
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_165

    .line 350
    :cond_15d
    invoke-static {p3, p2}, Lkotlin/collections/w;->e0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    .line 354
    invoke-static {p4, p0}, Lkotlin/collections/w;->e0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p3

    :cond_165
    return-object p3
.end method

.method public static final getNormalApplicationItemPackages(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    const-string/jumbo v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    .line 10
    :cond_d
    const-string p0, ""

    return-object p0
.end method

.method public static final getNormalApplicationItemPackages(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_41

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_3e

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 6
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v4, :cond_3e

    .line 7
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_41
    return-object v0
.end method

.method public static final getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "HotseatItemUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    .line 6
    :try_start_5
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_b

    :catchall_8
    move-exception p0

    goto :goto_59

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_e

    return v1

    .line 15
    :cond_e
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_17
    if-ge v3, v2, :cond_43

    .line 26
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 30
    const-string v6, "getChildAt(...)"

    .line 32
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_40

    .line 37
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_40

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 51
    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_40

    .line 55
    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 57
    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_40

    add-int/lit8 v4, v4, 0x1

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 68
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string/jumbo v2, "getNormalItemCount:"

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_8

    return v4

    .line 90
    :goto_59
    invoke-static {p0}, Lkotlin/b;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6a

    .line 100
    const-string/jumbo v2, "something wrong when getting container size. "

    .line 103
    invoke-static {v2, v0, p0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 107
    :cond_6a
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 109
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 112
    throw p0
.end method

.method public static final getPackageAndType(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 12
    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_1b

    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 28
    :cond_1b
    :goto_1b
    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 30
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 32
    invoke-static {p0}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object p0

    .line 36
    const-string v2, "("

    .line 38
    const-string/jumbo v3, "|"

    .line 41
    invoke-static {v2, v3, v1, v0, v3}, Lcom/android/common/rus/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, ")"

    .line 47
    invoke-static {p0, v1, v0}, Landroidx/activity/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSubscribeItemCount(Lcom/android/launcher3/OplusHotseat;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    .line 3
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_f
    if-ge v0, v1, :cond_39

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 22
    const-string v4, "getChildAt(...)"

    .line 24
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_36

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 41
    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_36

    .line 45
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 47
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_36

    add-int/lit8 v2, v2, 0x1

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 58
    :cond_39
    const-string/jumbo p0, "getSubscribeItemCount:"

    .line 61
    const-string v0, "HotseatItemUtils"

    .line 63
    invoke-static {v2, p0, v0}, Lcom/android/common/config/m;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final hasExceptSubscribeItemInRightArea()Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9
    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    .line 20
    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1e
    if-ge v3, v2, :cond_49

    .line 33
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 43
    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_46

    .line 47
    const-string/jumbo v5, "hasExceptSubscribeItemInRightArea:"

    .line 50
    const-string v6, "HotseatItemUtils"

    .line 52
    invoke-static {v4, v5, v6}, Lcom/android/common/config/f;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 57
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 63
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_46

    const/4 v0, 0x1

    return v0

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_49
    return v1
.end method

.method public static final hideSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "hideSubscribeItem,item:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "Taskbar"

    .line 18
    const-string v2, "HotseatItemUtils"

    .line 20
    invoke-static {v1, v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1f

    .line 25
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    const/4 v0, 0x0

    .line 34
    const-string v1, "getAppContext(...)"

    if-nez p0, :cond_26

    goto :goto_3f

    .line 39
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_3f

    .line 47
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    .line 49
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarAllAppsSettingEnable(Z)V

    goto :goto_76

    :cond_3f
    :goto_3f
    if-nez p0, :cond_42

    goto :goto_5b

    .line 67
    :cond_42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_5b

    .line 75
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    .line 77
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 81
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarBreenoSettingEnable(Z)V

    goto :goto_76

    :cond_5b
    :goto_5b
    if-nez p0, :cond_5e

    goto :goto_76

    .line 95
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v2, 0xce

    if-ne p0, v2, :cond_76

    .line 103
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    .line 105
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 109
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarFileManagerSettingEnable(Z)V

    :cond_76
    :goto_76
    return-void
.end method

.method public static final iconSizeLargerThanDefaultSize(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v0, 0x91

    .line 2
    .line 3
    if-le p0, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    :goto_7
    return p0
.end method

.method public static final ignoreBindInHotseat(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "launcher"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    if-eqz p0, :cond_a4

    .line 16
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v0, v2, :cond_a4

    .line 22
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 29
    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 37
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 39
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 43
    const-string v0, "getBounds(...)"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    .line 50
    invoke-virtual {v0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay(Landroid/graphics/Rect;)Z

    move-result v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v3, "ignoreBindItem,isFoldScreenFoldedByDisplay:"

    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, ", bounds = "

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string v2, "Hotseat_expand"

    .line 79
    invoke-static {v2, p1}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_89

    .line 89
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_89

    .line 96
    :cond_5f
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 102
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    return v1

    .line 110
    :cond_6d
    :goto_6d
    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->subscribeItemSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p0

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v4, "ignoreBindItem, isSubscribeItemSwitchOffAndRemoveDirtyData = "

    .line 119
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v2, p1}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_87

    if-eqz p0, :cond_88

    :cond_87
    move v1, v3

    :cond_88
    return v1

    .line 138
    :cond_89
    :goto_89
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->expandSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v4, "ignoreBindItem, isExpandSwitchOffAndRemoveDirtyData = "

    .line 147
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v2, p1}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_a3

    if-eqz p0, :cond_a4

    :cond_a3
    move v1, v3

    :cond_a4
    return v1
.end method

.method public static final isDividerItem(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v0, 0xc9

    if-eq p0, v0, :cond_b

    const/16 v0, 0xcb

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static final isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    .line 2
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(I)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static final isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 5
    .line 6
    const/16 v1, 0xc9

    .line 7
    .line 8
    if-ne p0, v1, :cond_a

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_a
    return v0
.end method

.method public static final isExpandItem(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v0, 0xca

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    .line 2
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(I)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static final isLandscapeFromDeviceprofile(Lcom/android/launcher3/Launcher;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "launcher"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    .line 17
    const-string/jumbo v0, "getDeviceProfile(...)"

    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    goto :goto_2b

    .line 27
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 35
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public static final isNecessaryRectify(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "normalItems"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "expandAreaItems"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public static final isNormalItem(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(I)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static final isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    .line 1
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(I)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static final isSubscribeAllAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 5
    .line 6
    const/16 v1, 0xcd

    .line 7
    .line 8
    if-ne p0, v1, :cond_a

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_a
    return v0
.end method

.method public static final isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 5
    .line 6
    const/16 v1, 0xcb

    .line 7
    .line 8
    if-ne p0, v1, :cond_a

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_a
    return v0
.end method

.method public static final isSubscribeFileManagerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 5
    .line 6
    const/16 v1, 0xce

    .line 7
    .line 8
    if-ne p0, v1, :cond_a

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_a
    return v0
.end method

.method public static final isSubscribeGlobalSearchItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 5
    .line 6
    const/16 v1, 0xcc

    .line 7
    .line 8
    if-ne p0, v1, :cond_a

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_a
    return v0
.end method

.method public static final isSubscribeItem(I)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    goto :goto_6

    :pswitch_5
    const/4 p0, 0x1

    :goto_6
    return p0

    nop

    :pswitch_data_8
    .packed-switch 0xcc
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static final isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    .line 2
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(I)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static final rectifyExpandItems(Ljava/util/ArrayList;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string p2, "expandAreaItems"

    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string p2, "frontItems"

    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_71

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 23
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 35
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2d

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    const/4 v1, -0x1

    :goto_2d
    if-lez v1, :cond_3e

    .line 48
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    .line 52
    const-string/jumbo v1, "removeAt(...)"

    .line 55
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 60
    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3e
    move-object p2, p1

    .line 64
    check-cast p2, Ljava/util/Collection;

    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_54

    .line 72
    invoke-static {p1}, Lkotlin/collections/w;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 78
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    :cond_54
    move p1, v0

    .line 86
    :goto_55
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_59
    if-ge v0, p2, :cond_71

    .line 92
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 96
    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    add-int v2, p1, v0

    .line 100
    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/ItemInfo;->setCellX(I)V

    .line 103
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 109
    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_71
    return-void
.end method

.method public static final rectifyItemCellXIfNecessary(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getHotseatItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    if-nez v4, :cond_21

    return-void

    .line 34
    :cond_21
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v4

    if-nez v4, :cond_2c

    return-void

    .line 45
    :cond_2c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 53
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 55
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 59
    const-string v5, "getBounds(...)"

    .line 61
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v5, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    .line 66
    invoke-virtual {v5, v4}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 72
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 78
    :cond_4d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x1

    goto :goto_56

    :cond_55
    const/4 v5, 0x0

    .line 87
    :goto_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 99
    const-string v8, "HotseatItemUtils#rectifyItemCellXIfNecessary,hotseatItems.size:"

    .line 101
    const-string v9, ",subscribeAreaItems.size:"

    .line 103
    const-string v10, ",normalItems.size:"

    .line 105
    invoke-static {v0, v6, v8, v9, v10}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    const-string v6, ",isFoldScreenExpand:"

    .line 111
    const-string v8, ", bounds = "

    .line 113
    invoke-static {v7, v6, v8, v0, v5}, Landroidx/compose/ui/graphics/colorspace/d;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v4, "Taskbar"

    .line 125
    invoke-static {v4, v0}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v2, v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNecessaryRectify(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 134
    const-string p0, "HotseatItemUtils"

    .line 136
    const-string/jumbo v0, "rectifyItemCellXIfNecessary,no necessary return"

    .line 139
    invoke-static {v4, p0, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_8e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    invoke-static {v0, v2, v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyNormalItems(ILjava/util/ArrayList;Z)V

    .line 150
    invoke-static {p0, v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->filterExpandAreaItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;)V

    .line 153
    invoke-static {v2, v1}, Lkotlin/collections/w;->e0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    .line 157
    invoke-static {v3, p0, v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyExpandItems(Ljava/util/ArrayList;Ljava/util/List;Z)V

    .line 160
    invoke-static {v1, v2, v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->updateCellXFromScreenId(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static final rectifyNormalItemDbData(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ContentValues;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/android/launcher3/hotseat/HotseatItemUtils$rectifyNormalItemDbData$hasModify$1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils$rectifyNormalItemDbData$hasModify$1;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyNormalItemDbDataInner(Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rectifyNormalItemDbData,item:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",values:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v0, "HotseatItemUtils"

    invoke-static {p1, v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static final rectifyNormalItemDbData(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/android/launcher3/hotseat/HotseatItemUtils$rectifyNormalItemDbData$hasModify$2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils$rectifyNormalItemDbData$hasModify$2;-><init>(Lcom/android/launcher3/util/ContentWriter;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyNormalItemDbDataInner(Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rectifyNormalItemDbDataInner,item:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",writer:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v0, "HotseatItemUtils"

    invoke-static {p1, v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static final rectifyNormalItemDbDataInner(Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lm9/n;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "item"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "write"

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 21
    :cond_14
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-eq v0, v2, :cond_1b

    return v1

    .line 28
    :cond_1b
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 34
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_28

    return v1

    .line 41
    :cond_28
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 49
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v3, "rectifyNormalItemDbDataInner,item:"

    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v3, ",subscribeAndDividerItemCount:"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, "Taskbar"

    .line 80
    const-string v4, "HotseatItemUtils"

    .line 82
    invoke-static {v3, v4, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    if-nez v0, :cond_57

    return v1

    .line 88
    :cond_57
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v2

    if-lt v2, v0, :cond_73

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result p0

    sub-int/2addr p0, v0

    .line 99
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyScreenIdFormCellXForScreenFolded(I)I

    move-result v0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_73
    return v1
.end method

.method public static final rectifyNormalItems(ILjava/util/ArrayList;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "normalItems"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_23

    .line 15
    invoke-static {v2, p1}, Landroidx/compose/runtime/l;->a(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 21
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 29
    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    .line 37
    :goto_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 41
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    add-int/lit8 v4, v1, 0x1

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    const-string v7, "HotseatItemUtils#rectifyItemCellXIfNecessary,before info:"

    .line 59
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    const-string v7, "Taskbar"

    .line 71
    invoke-static {v7, v6}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_52

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    goto :goto_53

    :cond_52
    move v6, v1

    :goto_53
    if-eqz p2, :cond_5d

    add-int/2addr v1, p0

    .line 87
    invoke-virtual {v5, v1}, Lcom/android/launcher3/model/data/ItemInfo;->setCellX(I)V

    add-int/2addr v6, p0

    .line 91
    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_62

    .line 94
    :cond_5d
    invoke-virtual {v5, v1}, Lcom/android/launcher3/model/data/ItemInfo;->setCellX(I)V

    .line 97
    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 99
    :goto_62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    const-string v6, "HotseatItemUtils#rectifyItemCellXIfNecessary,after info:"

    .line 103
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v7, v1}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_28

    :cond_75
    return-void
.end method

.method public static final rectifyScreenIdFormCellXForExpandScreen(I)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_f

    return p0

    .line 16
    :cond_f
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_17
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    .line 28
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    add-int v2, v1, v0

    add-int/lit8 v3, p0, 0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 38
    const-string/jumbo v3, "rectifyScreenIdFormCellXForExpandScreen,cellX:"

    .line 41
    const-string v4, ",normalItemCount:"

    .line 43
    const-string v5, ",subscribeAndDividerCount :"

    .line 45
    invoke-static {p0, v1, v3, v4, v5}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 49
    const-string v1, ",screenId:"

    .line 51
    invoke-static {p0, v0, v2, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    const-string v0, "Taskbar"

    .line 57
    const-string v1, "HotseatItemUtils"

    .line 59
    invoke-static {v0, v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final rectifyScreenIdFormCellXForScreenFolded(I)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_17

    return p0

    .line 24
    :cond_17
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    add-int/lit8 v1, p0, 0x1

    sub-int v1, v0, v1

    .line 32
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 38
    const-string/jumbo v2, "rectifyScreenIdFormCellXForScreenFolded,cellX:"

    .line 41
    const-string v3, ",normalItemCount:"

    .line 43
    const-string v4, ",screenId:"

    .line 45
    invoke-static {p0, v0, v2, v3, v4}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 49
    const-string v0, "Taskbar"

    .line 51
    const-string v2, "HotseatItemUtils"

    .line 53
    invoke-static {p0, v1, v0, v2}, Landroidx/compose/ui/graphics/colorspace/g;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_37
    return v1
.end method

.method public static final rectifySubscribeItemCellX(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "subscribeAreaItems"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 14
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sget-object v1, Lcom/android/launcher3/hotseat/HotseatItemUtils;->subscribeItemOrderedTypes:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 25
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 41
    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 51
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 53
    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v2, :cond_39

    goto :goto_28

    .line 58
    :cond_39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_28

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 68
    :cond_43
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 82
    const-string v1, "<this>"

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 90
    :cond_59
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 106
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 112
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 118
    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/ItemInfo;->setCellX(I)V

    .line 121
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v3

    .line 125
    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_5d

    .line 128
    :cond_7f
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 134
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 138
    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/ItemInfo;->setCellX(I)V

    .line 141
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    move-result v3

    .line 145
    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_5d

    :cond_93
    return-void
.end method

.method private static final removeItems(Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_50

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 16
    .line 17
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 18
    .line 19
    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 20
    .line 21
    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getCellX()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_28

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-nez v5, :cond_28

    .line 38
    .line 39
    const-string v5, ""

    .line 40
    .line 41
    :cond_28
    const-string v6, "HotseatItemUtils#filterExpandAreaItems,remove expand item:id="

    .line 42
    .line 43
    const-string v7, ",type="

    .line 44
    .line 45
    const-string v8, ",screenId="

    .line 46
    .line 47
    invoke-static {v1, v2, v6, v7, v8}, Landroidx/recyclerview/widget/k;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, ",cellX="

    .line 52
    .line 53
    const-string v6, ",packageName="

    .line 54
    .line 55
    invoke-static {v3, v4, v2, v6, v1}, Landroidx/compose/runtime/p;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "Taskbar"

    .line 66
    .line 67
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->toFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v1, :cond_4c

    .line 73
    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_4c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_50
    return-void
.end method

.method public static final startTaskbarSetting()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "HotseatItemUtils"

    .line 3
    const-string/jumbo v1, "startTaskbarSetting"

    .line 6
    const-string v2, "Taskbar"

    .line 8
    invoke-static {v2, v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 18
    :cond_11
    :try_start_11
    new-instance v1, Landroid/content/Intent;

    .line 20
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 26
    const-class v3, Lcom/android/launcher/settings/LauncherTabletTaskbarSettingActivity;

    goto :goto_20

    :catch_1c
    move-exception v0

    goto :goto_2d

    .line 31
    :cond_1e
    const-class v3, Lcom/android/launcher/settings/LauncherTaskbarSettingActivity;

    .line 33
    :goto_20
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x10008000

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_2c} :catch_1c

    goto :goto_3f

    .line 46
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v3, "startTaskbarSetting,Exception:"

    .line 51
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method private static final updateCellXFromScreenId(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_8

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p0, v0

    .line 10
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_27

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 25
    .line 26
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {v3, v4, p0, p2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCellXFromOrder(IIIZ)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/model/data/ItemInfo;->setCellXY(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_d

    .line 40
    :cond_27
    return-void
.end method


# virtual methods
.method public final getSubscribeItemOrderedTypes()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/launcher3/hotseat/HotseatItemUtils;->subscribeItemOrderedTypes:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method
