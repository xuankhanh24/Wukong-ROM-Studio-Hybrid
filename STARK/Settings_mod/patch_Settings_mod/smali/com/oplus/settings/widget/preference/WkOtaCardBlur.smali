.class final Lcom/oplus/settings/widget/preference/WkOtaCardBlur;
.super Ljava/lang/Object;
.source "WkOtaCardBlur.java"


# static fields
.field private static final MAX_BLUR_LEVEL:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method static apply(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 15
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 16
    return-object v0

    .line 18
    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    return-object p0

    .line 23
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 25
    mul-int/lit8 v4, p1, 0x7

    add-int/lit8 v4, v4, 0x63

    div-int/2addr v4, v2

    const/4 v2, 0x1

    add-int/2addr v4, v2

    .line 26
    add-int/lit8 p1, p1, 0xe

    div-int/lit8 p1, p1, 0xf

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 27
    div-int v5, v1, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int v4, v3, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v5, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 29
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 31
    if-nez v5, :cond_2

    .line 32
    :try_start_2
    invoke-static {v4, p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 33
    return-object p0

    .line 35
    :cond_2
    invoke-static {v5, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->boxBlurInPlace(Landroid/graphics/Bitmap;I)V

    .line 36
    invoke-static {v5, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->boxBlurInPlace(Landroid/graphics/Bitmap;I)V

    .line 37
    invoke-static {v5, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 38
    invoke-static {v5, p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 39
    invoke-static {v4, p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 40
    if-eq p1, p0, :cond_3

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :cond_3
    return-object p1

    .line 44
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 45
    :goto_0
    :try_start_3
    invoke-static {v5, p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 46
    invoke-static {v4, p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->recycleUnlessKept(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 47
    return-object p0

    .line 49
    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 50
    :goto_1
    nop

    .line 55
    goto :goto_3

    .line 52
    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    .line 53
    :goto_2
    nop

    .line 54
    nop

    .line 56
    :goto_3
    return-object p0
.end method

.method private static boxBlurInPlace(Landroid/graphics/Bitmap;I)V
    .locals 18

    .line 60
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 62
    if-lez v0, :cond_7

    if-lez v3, :cond_7

    if-gtz v7, :cond_0

    goto/16 :goto_6

    .line 65
    :cond_0
    mul-int v1, v3, v7

    .line 66
    new-array v2, v1, [I

    .line 67
    new-array v9, v1, [I

    .line 68
    nop

    .line 69
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v8, v7

    move v7, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    move-object v1, v2

    .line 71
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 72
    move v5, v3

    .line 73
    :goto_0
    if-ge v5, v8, :cond_3

    .line 74
    mul-int v6, v5, v4

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    neg-int v7, v0

    move v10, v3

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_1
    if-gt v7, v0, :cond_1

    .line 80
    add-int/lit8 v14, v4, -0x1

    invoke-static {v7, v3, v14}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v14

    add-int/2addr v14, v6

    aget v14, v1, v14

    .line 81
    ushr-int/lit8 v15, v14, 0x18

    add-int/2addr v10, v15

    .line 82
    ushr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v11, v15

    .line 83
    ushr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v12, v15

    .line 84
    and-int/lit16 v14, v14, 0xff

    add-int/2addr v13, v14

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 86
    :cond_1
    move v7, v3

    .line 87
    :goto_2
    if-ge v7, v4, :cond_2

    .line 88
    add-int v14, v6, v7

    invoke-static {v10, v11, v12, v13, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->packColor(IIIII)I

    move-result v15

    aput v15, v9, v14

    .line 89
    add-int/lit8 v14, v4, -0x1

    .line 90
    sub-int v15, v7, v0

    invoke-static {v15, v3, v14}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v15

    add-int/2addr v15, v6

    aget v15, v1, v15

    .line 91
    nop

    .line 92
    add-int v16, v7, v0

    move-object/from16 v17, v1

    add-int/lit8 v1, v16, 0x1

    invoke-static {v1, v3, v14}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v1

    add-int/2addr v1, v6

    aget v1, v17, v1

    .line 93
    ushr-int/lit8 v14, v1, 0x18

    ushr-int/lit8 v16, v15, 0x18

    sub-int v14, v14, v16

    add-int/2addr v10, v14

    .line 94
    ushr-int/lit8 v14, v1, 0x10

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v14, v3

    add-int/2addr v11, v14

    .line 95
    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v14, v15, 0x8

    and-int/lit16 v14, v14, 0xff

    sub-int/2addr v3, v14

    add-int/2addr v12, v3

    .line 96
    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v3, v15, 0xff

    sub-int/2addr v1, v3

    add-int/2addr v13, v1

    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 98
    nop

    .line 99
    nop

    .line 100
    move-object/from16 v1, v17

    const/4 v3, 0x0

    goto :goto_2

    .line 101
    :cond_2
    move-object/from16 v17, v1

    add-int/lit8 v5, v5, 0x1

    .line 102
    nop

    .line 103
    const/4 v3, 0x0

    goto :goto_0

    .line 104
    :cond_3
    move-object/from16 v17, v1

    .line 105
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_6

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    neg-int v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_4
    if-gt v3, v0, :cond_4

    .line 111
    add-int/lit8 v11, v8, -0x1

    const/4 v12, 0x0

    invoke-static {v3, v12, v11}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    aget v11, v9, v11

    .line 112
    ushr-int/lit8 v12, v11, 0x18

    add-int/2addr v5, v12

    .line 113
    ushr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v6, v12

    .line 114
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v7, v12

    .line 115
    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 117
    :cond_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_5

    .line 118
    mul-int v3, v12, v4

    add-int/2addr v3, v1

    invoke-static {v5, v6, v7, v10, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->packColor(IIIII)I

    move-result v11

    aput v11, v17, v3

    .line 119
    add-int/lit8 v3, v8, -0x1

    .line 120
    sub-int v11, v12, v0

    const/4 v13, 0x0

    invoke-static {v11, v13, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    aget v11, v9, v11

    .line 121
    add-int v14, v12, v0

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14, v13, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->clamp(III)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    aget v3, v9, v3

    .line 122
    ushr-int/lit8 v14, v3, 0x18

    ushr-int/lit8 v15, v11, 0x18

    sub-int/2addr v14, v15

    add-int/2addr v5, v14

    .line 123
    ushr-int/lit8 v14, v3, 0x10

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    add-int/2addr v6, v14

    .line 124
    ushr-int/lit8 v14, v3, 0x8

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    add-int/2addr v7, v14

    .line 125
    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v11, v11, 0xff

    sub-int/2addr v3, v11

    add-int/2addr v10, v3

    .line 117
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 105
    :cond_5
    const/4 v13, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 128
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

    .line 129
    return-void

    .line 63
    :cond_7
    :goto_6
    return-void
.end method

.method private static clamp(III)I
    .locals 0

    .line 132
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static packColor(IIIII)I
    .locals 0

    .line 136
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
    .locals 0

    .line 140
    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    if-eq p0, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    return-void

    .line 141
    :cond_1
    :goto_0
    return-void
.end method
