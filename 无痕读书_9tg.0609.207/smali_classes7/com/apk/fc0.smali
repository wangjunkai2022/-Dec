.class public abstract Lcom/apk/fc0;
.super Ljava/lang/Object;
.source "BitmapTransformation.java"

# interfaces
.implements Lcom/apk/qj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/qj<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final if(Landroid/content/Context;Lcom/apk/gl;II)Lcom/apk/gl;
    .locals 38
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    .line 1
    invoke-static/range {p3 .. p4}, Lcom/apk/gs;->const(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lcom/apk/ii;->if:Lcom/apk/pl;

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    :cond_0
    if-ne v1, v4, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    check-cast v1, Lcom/apk/gc0;

    .line 8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 10
    iget v6, v1, Lcom/apk/gc0;->for:I

    div-int/2addr v4, v6

    .line 11
    div-int/2addr v5, v6

    .line 12
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2, v4, v5, v6}, Lcom/apk/pl;->if(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 13
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 14
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    iget v6, v1, Lcom/apk/gc0;->for:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v6

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 16
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v15, 0x2

    .line 17
    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v7, 0x0

    .line 18
    invoke-virtual {v5, v3, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    :try_start_0
    iget v5, v1, Lcom/apk/gc0;->if:I

    invoke-static {v0, v4, v5}, Lcom/apk/sb0;->break(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v29, v4

    goto/16 :goto_a

    :catch_0
    nop

    .line 20
    iget v0, v1, Lcom/apk/gc0;->if:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const/4 v4, 0x0

    move-object/from16 v17, v2

    goto/16 :goto_b

    .line 21
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 22
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v14, v5, v6

    .line 23
    new-array v13, v14, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    move-object v8, v13

    move v10, v5

    move-object/from16 v16, v13

    move v13, v5

    move v15, v14

    move v14, v6

    .line 24
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v7, v5, -0x1

    add-int/lit8 v8, v6, -0x1

    add-int v9, v0, v0

    add-int/2addr v9, v1

    .line 25
    new-array v10, v15, [I

    .line 26
    new-array v11, v15, [I

    .line 27
    new-array v12, v15, [I

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    new-array v13, v13, [I

    add-int/lit8 v14, v9, 0x1

    shr-int/2addr v14, v1

    mul-int v14, v14, v14

    mul-int/lit16 v15, v14, 0x100

    .line 29
    new-array v1, v15, [I

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_3

    .line 30
    div-int v18, v2, v14

    aput v18, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    const/4 v14, 0x2

    new-array v15, v14, [I

    const/4 v14, 0x1

    aput v2, v15, v14

    const/4 v2, 0x0

    aput v9, v15, v2

    .line 31
    const-class v2, I

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    add-int/lit8 v14, v0, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    if-ge v15, v6, :cond_8

    move-object/from16 v20, v3

    neg-int v3, v0

    move-object/from16 v29, v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move v4, v3

    const/4 v3, 0x0

    :goto_2
    const v30, 0xff00

    const/high16 v31, 0xff0000

    if-gt v4, v0, :cond_5

    move/from16 v32, v6

    move/from16 v33, v8

    const/4 v6, 0x0

    .line 32
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v8, v8, v18

    aget v8, v16, v8

    add-int v34, v4, v0

    .line 33
    aget-object v34, v2, v34

    and-int v31, v8, v31

    shr-int/lit8 v31, v31, 0x10

    .line 34
    aput v31, v34, v6

    and-int v30, v8, v30

    shr-int/lit8 v30, v30, 0x8

    const/16 v31, 0x1

    .line 35
    aput v30, v34, v31

    and-int/lit16 v8, v8, 0xff

    const/16 v30, 0x2

    .line 36
    aput v8, v34, v30

    .line 37
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v8, v14, v8

    .line 38
    aget v35, v34, v6

    mul-int v35, v35, v8

    add-int v3, v35, v3

    .line 39
    aget v35, v34, v31

    mul-int v35, v35, v8

    add-int v21, v35, v21

    .line 40
    aget v35, v34, v30

    mul-int v35, v35, v8

    add-int v22, v35, v22

    if-lez v4, :cond_4

    .line 41
    aget v8, v34, v6

    add-int v26, v26, v8

    .line 42
    aget v8, v34, v31

    add-int v27, v27, v8

    .line 43
    aget v8, v34, v30

    add-int v28, v28, v8

    goto :goto_3

    .line 44
    :cond_4
    aget v8, v34, v6

    add-int v23, v23, v8

    .line 45
    aget v6, v34, v31

    add-int v24, v24, v6

    .line 46
    aget v6, v34, v30

    add-int v25, v25, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v32

    move/from16 v8, v33

    goto :goto_2

    :cond_5
    move/from16 v32, v6

    move/from16 v33, v8

    move v6, v0

    move v4, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    .line 47
    aget v8, v1, v4

    aput v8, v10, v18

    .line 48
    aget v8, v1, v21

    aput v8, v11, v18

    .line 49
    aget v8, v1, v22

    aput v8, v12, v18

    sub-int v4, v4, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v8, v6, v0

    add-int/2addr v8, v9

    .line 50
    rem-int/2addr v8, v9

    aget-object v8, v2, v8

    const/16 v34, 0x0

    .line 51
    aget v35, v8, v34

    sub-int v23, v23, v35

    const/16 v34, 0x1

    .line 52
    aget v35, v8, v34

    sub-int v24, v24, v35

    const/16 v35, 0x2

    .line 53
    aget v36, v8, v35

    sub-int v25, v25, v36

    if-nez v15, :cond_6

    add-int v35, v3, v0

    move-object/from16 v36, v1

    add-int/lit8 v1, v35, 0x1

    .line 54
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v13, v3

    goto :goto_5

    :cond_6
    move-object/from16 v36, v1

    .line 55
    :goto_5
    aget v1, v13, v3

    add-int v1, v19, v1

    aget v1, v16, v1

    and-int v34, v1, v31

    shr-int/lit8 v34, v34, 0x10

    const/16 v35, 0x0

    .line 56
    aput v34, v8, v35

    and-int v34, v1, v30

    shr-int/lit8 v34, v34, 0x8

    const/16 v37, 0x1

    .line 57
    aput v34, v8, v37

    and-int/lit16 v1, v1, 0xff

    const/16 v34, 0x2

    .line 58
    aput v1, v8, v34

    .line 59
    aget v1, v8, v35

    add-int v26, v26, v1

    .line 60
    aget v1, v8, v37

    add-int v27, v27, v1

    .line 61
    aget v1, v8, v34

    add-int v28, v28, v1

    add-int v4, v4, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v6, v6, 0x1

    .line 62
    rem-int/2addr v6, v9

    .line 63
    rem-int v1, v6, v9

    aget-object v1, v2, v1

    const/4 v8, 0x0

    .line 64
    aget v34, v1, v8

    add-int v23, v23, v34

    const/16 v34, 0x1

    .line 65
    aget v35, v1, v34

    add-int v24, v24, v35

    const/16 v35, 0x2

    .line 66
    aget v37, v1, v35

    add-int v25, v25, v37

    .line 67
    aget v37, v1, v8

    sub-int v26, v26, v37

    .line 68
    aget v8, v1, v34

    sub-int v27, v27, v8

    .line 69
    aget v1, v1, v35

    sub-int v28, v28, v1

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v36

    goto/16 :goto_4

    :cond_7
    move-object/from16 v36, v1

    add-int v19, v19, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v20

    move-object/from16 v4, v29

    move/from16 v6, v32

    move/from16 v8, v33

    goto/16 :goto_1

    :cond_8
    move-object/from16 v36, v1

    move-object/from16 v20, v3

    move-object/from16 v29, v4

    move/from16 v32, v6

    move/from16 v33, v8

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v5, :cond_e

    neg-int v3, v0

    mul-int v4, v3, v5

    move/from16 v23, v9

    move-object/from16 v22, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move v13, v3

    move v9, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-gt v13, v0, :cond_b

    move/from16 v24, v5

    const/4 v5, 0x0

    .line 70
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v1

    add-int v26, v13, v0

    .line 71
    aget-object v26, v2, v26

    .line 72
    aget v27, v10, v25

    aput v27, v26, v5

    .line 73
    aget v5, v11, v25

    const/16 v27, 0x1

    aput v5, v26, v27

    .line 74
    aget v5, v12, v25

    const/16 v27, 0x2

    aput v5, v26, v27

    .line 75
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v14, v5

    .line 76
    aget v27, v10, v25

    mul-int v27, v27, v5

    add-int v8, v27, v8

    .line 77
    aget v27, v11, v25

    mul-int v27, v27, v5

    add-int v7, v27, v7

    .line 78
    aget v25, v12, v25

    mul-int v25, v25, v5

    add-int v6, v25, v6

    if-lez v13, :cond_9

    const/4 v5, 0x0

    .line 79
    aget v25, v26, v5

    add-int v18, v18, v25

    const/16 v25, 0x1

    .line 80
    aget v27, v26, v25

    add-int v19, v19, v27

    const/16 v27, 0x2

    .line 81
    aget v26, v26, v27

    add-int v21, v21, v26

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    const/16 v25, 0x1

    const/16 v27, 0x2

    .line 82
    aget v28, v26, v5

    add-int v4, v4, v28

    .line 83
    aget v5, v26, v25

    add-int/2addr v3, v5

    .line 84
    aget v5, v26, v27

    add-int/2addr v15, v5

    :goto_8
    move/from16 v5, v33

    if-ge v13, v5, :cond_a

    add-int v9, v9, v24

    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v33, v5

    move/from16 v5, v24

    goto :goto_7

    :cond_b
    move/from16 v24, v5

    move/from16 v5, v33

    move/from16 v26, v0

    move/from16 v25, v1

    move v9, v8

    move/from16 v13, v32

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v13, :cond_d

    const/high16 v27, -0x1000000

    .line 85
    aget v28, v16, v25

    and-int v27, v28, v27

    aget v28, v36, v9

    shl-int/lit8 v28, v28, 0x10

    or-int v27, v27, v28

    aget v28, v36, v8

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v36, v7

    or-int v27, v27, v28

    aput v27, v16, v25

    sub-int/2addr v9, v6

    sub-int/2addr v8, v4

    sub-int/2addr v7, v15

    sub-int v27, v26, v0

    add-int v27, v27, v23

    .line 86
    rem-int v27, v27, v23

    aget-object v27, v2, v27

    const/16 v28, 0x0

    .line 87
    aget v30, v27, v28

    sub-int v6, v6, v30

    const/16 v28, 0x1

    .line 88
    aget v30, v27, v28

    sub-int v4, v4, v30

    const/16 v28, 0x2

    .line 89
    aget v30, v27, v28

    sub-int v15, v15, v30

    move/from16 v28, v0

    if-nez v1, :cond_c

    add-int v0, v3, v14

    .line 90
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v24

    aput v0, v22, v3

    .line 91
    :cond_c
    aget v0, v22, v3

    add-int/2addr v0, v1

    .line 92
    aget v30, v10, v0

    const/16 v31, 0x0

    aput v30, v27, v31

    .line 93
    aget v30, v11, v0

    const/16 v32, 0x1

    aput v30, v27, v32

    .line 94
    aget v0, v12, v0

    const/16 v30, 0x2

    aput v0, v27, v30

    .line 95
    aget v0, v27, v31

    add-int v18, v18, v0

    .line 96
    aget v0, v27, v32

    add-int v19, v19, v0

    .line 97
    aget v0, v27, v30

    add-int v21, v21, v0

    add-int v9, v9, v18

    add-int v8, v8, v19

    add-int v7, v7, v21

    add-int/lit8 v26, v26, 0x1

    .line 98
    rem-int v26, v26, v23

    .line 99
    aget-object v0, v2, v26

    const/16 v27, 0x0

    .line 100
    aget v30, v0, v27

    add-int v6, v6, v30

    const/16 v30, 0x1

    .line 101
    aget v31, v0, v30

    add-int v4, v4, v31

    const/16 v31, 0x2

    .line 102
    aget v32, v0, v31

    add-int v15, v15, v32

    .line 103
    aget v32, v0, v27

    sub-int v18, v18, v32

    .line 104
    aget v32, v0, v30

    sub-int v19, v19, v32

    .line 105
    aget v0, v0, v31

    sub-int v21, v21, v0

    add-int v25, v25, v24

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v28

    goto/16 :goto_9

    :cond_d
    move/from16 v28, v0

    const/16 v27, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x2

    add-int/lit8 v1, v1, 0x1

    move/from16 v33, v5

    move/from16 v32, v13

    move-object/from16 v13, v22

    move/from16 v9, v23

    move/from16 v5, v24

    goto/16 :goto_6

    :cond_e
    move/from16 v24, v5

    move/from16 v13, v32

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, v29

    move-object/from16 v8, v16

    move/from16 v10, v24

    move v0, v13

    move/from16 v13, v24

    move v14, v0

    .line 106
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_a
    move-object/from16 v3, v20

    move-object/from16 v4, v29

    .line 107
    :goto_b
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v0, p2

    goto :goto_c

    :cond_f
    move-object/from16 v0, v17

    .line 108
    invoke-static {v4, v0}, Lcom/apk/vn;->try(Landroid/graphics/Bitmap;Lcom/apk/pl;)Lcom/apk/vn;

    move-result-object v0

    :goto_c
    return-object v0

    .line 109
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot apply transformation on width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or height: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
