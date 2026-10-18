.class final Lcom/oplus/settings/widget/preference/WkOtaCardBlur;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_BLUR_LEVEL:I = 0x64


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v4, p1, 0x7

    add-int/lit8 v4, v4, 0x63

    div-int/2addr v4, v2

    const/4 v2, 0x1

    add-int/2addr v4, v2

    add-int/lit8 p1, p1, 0xe

    div-int/lit8 p1, p1, 0xf

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int v5, v1, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int v4, v3, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v5, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_2

    :try_start_2
    invoke-static {v4, p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_2
    invoke-static {v5, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->boxBlurInPlace(Landroid/graphics/Bitmap;I)V

    invoke-static {v5, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->boxBlurInPlace(Landroid/graphics/Bitmap;I)V

    invoke-static {v5, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {v4, p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    if-eq p1, p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v5, v0

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v4, v0

    move-object v5, v4

    :goto_0
    invoke-static {v5, p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {v4, p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private static boxBlurInPlace(Landroid/graphics/Bitmap;I)V
    .registers 20

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v0, :cond_7

    if-lez v3, :cond_7

    if-gtz v7, :cond_0

    goto/16 :goto_6

    :cond_0
    mul-int v1, v3, v7

    new-array v2, v1, [I

    new-array v9, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v8, v7

    move v7, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_3

    mul-int v6, v5, v4

    nop

    nop

    nop

    nop

    neg-int v7, v0

    move v10, v3

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_1
    if-gt v7, v0, :cond_1

    add-int/lit8 v14, v4, -0x1

    invoke-static {v7, v3, v14}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v14

    add-int/2addr v14, v6

    aget v14, v1, v14

    ushr-int/lit8 v15, v14, 0x18

    add-int/2addr v10, v15

    ushr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v11, v15

    ushr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v12, v15

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v13, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_2
    if-ge v7, v4, :cond_2

    add-int v14, v6, v7

    invoke-static {v10, v11, v12, v13, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->packColor(IIIII)I

    move-result v15

    aput v15, v9, v14

    sub-int v14, v7, v0

    add-int/lit8 v15, v4, -0x1

    invoke-static {v14, v3, v15}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v14

    add-int/2addr v14, v6

    aget v14, v1, v14

    add-int v16, v7, v0

    move-object/from16 v17, v1

    add-int/lit8 v1, v16, 0x1

    invoke-static {v1, v3, v15}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v1

    add-int/2addr v1, v6

    aget v1, v17, v1

    ushr-int/lit8 v15, v1, 0x18

    ushr-int/lit8 v16, v14, 0x18

    sub-int v15, v15, v16

    add-int/2addr v10, v15

    ushr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    ushr-int/lit8 v3, v14, 0x10

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v15, v3

    add-int/2addr v11, v15

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v3, v15

    add-int/2addr v12, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v3, v14, 0xff

    sub-int/2addr v1, v3

    add-int/2addr v13, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v17

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v17, v1

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_6

    nop

    nop

    nop

    nop

    neg-int v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_4
    if-gt v3, v0, :cond_4

    add-int/lit8 v11, v8, -0x1

    const/4 v12, 0x0

    invoke-static {v3, v12, v11}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    aget v11, v9, v11

    ushr-int/lit8 v12, v11, 0x18

    add-int/2addr v5, v12

    ushr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v6, v12

    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v7, v12

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_5

    mul-int v3, v12, v4

    add-int/2addr v3, v1

    invoke-static {v5, v6, v7, v10, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->packColor(IIIII)I

    move-result v11

    aput v11, v17, v3

    sub-int v3, v12, v0

    add-int/lit8 v11, v8, -0x1

    const/4 v13, 0x0

    invoke-static {v3, v13, v11}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    aget v3, v9, v3

    add-int v14, v12, v0

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14, v13, v11}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    aget v11, v9, v11

    ushr-int/lit8 v14, v11, 0x18

    ushr-int/lit8 v15, v3, 0x18

    sub-int/2addr v14, v15

    add-int/2addr v5, v14

    ushr-int/lit8 v14, v11, 0x10

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    add-int/2addr v6, v14

    ushr-int/lit8 v14, v11, 0x8

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    add-int/2addr v7, v14

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v11, v3

    add-int/2addr v10, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object/from16 v0, p0

    move v7, v8

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :cond_7
    :goto_6
    return-void
.end method

.method private static clamp(III)I
    .registers 3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static packColor(IIIII)I
    .registers 5

    div-int/2addr p0, p4

    shl-int/lit8 p0, p0, 0x18

    div-int/2addr p1, p4

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    div-int/2addr p2, p4

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    div-int/2addr p3, p4

    or-int/2addr p0, p3

    return p0
.end method

.method private static recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    if-eq p0, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
