.class public Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;
.super Ljava/lang/Object;
.source "ClipViewLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/net/Uri;

.field public final synthetic if:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;->if:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;->do:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;->if:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    iget-object v4, v1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;->do:Landroid/net/Uri;

    const/4 v9, 0x0

    if-eqz v2, :cond_13

    if-nez v4, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**********clip_view uri*******  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v10, -0x1

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v5, "file"

    .line 6
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v5, "content"

    .line 8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v10, :cond_3

    .line 12
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v9

    .line 13
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    move-object v0, v9

    .line 14
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_7

    :cond_5
    const/16 v3, 0x438

    const/16 v4, 0x500

    .line 15
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    .line 16
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 17
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 18
    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 20
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v11, 0x3

    const/16 v12, 0x8

    if-gt v7, v4, :cond_6

    if-le v8, v3, :cond_a

    :cond_6
    int-to-float v6, v7

    int-to-float v4, v4

    div-float/2addr v6, v4

    .line 21
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, v8

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 22
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ge v4, v3, :cond_7

    move v6, v4

    goto :goto_2

    :cond_7
    move v6, v3

    :goto_2
    if-ge v6, v11, :cond_8

    goto :goto_3

    :cond_8
    int-to-double v3, v6

    const-wide/high16 v7, 0x401a000000000000L    # 6.5

    cmpg-double v13, v3, v7

    if-gez v13, :cond_9

    const/4 v6, 0x4

    goto :goto_3

    :cond_9
    if-ge v6, v12, :cond_a

    const/16 v6, 0x8

    .line 23
    :cond_a
    :goto_3
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 24
    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_b

    goto/16 :goto_7

    .line 26
    :cond_b
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v4

    goto :goto_4

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-eqz v9, :cond_f

    const-string v0, "Orientation"

    .line 28
    invoke-virtual {v9, v0, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v10, :cond_f

    if-eq v0, v11, :cond_e

    const/4 v4, 0x6

    if-eq v0, v4, :cond_d

    if-eq v0, v12, :cond_c

    goto :goto_5

    :cond_c
    const/16 v3, 0x10e

    goto :goto_5

    :cond_d
    const/16 v3, 0x5a

    goto :goto_5

    :cond_e
    const/16 v3, 0xb4

    .line 29
    :cond_f
    :goto_5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v3

    .line 30
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 31
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object/from16 v18, v0

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_10

    .line 33
    iget-object v3, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 34
    iget-object v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {v4}, Lcom/apk/qh;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->class:F

    cmpg-float v5, v3, v4

    if-gez v5, :cond_11

    goto :goto_6

    .line 36
    :cond_10
    iget-object v3, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 37
    iget-object v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {v4}, Lcom/apk/qh;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->class:F

    cmpg-float v5, v3, v4

    if-gez v5, :cond_11

    :goto_6
    move v3, v4

    :cond_11
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_12

    const v3, 0x3f59999a    # 0.85f

    .line 39
    :cond_12
    iget-object v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 40
    iget-object v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 41
    iget-object v5, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    div-float/2addr v8, v7

    float-to-int v3, v8

    .line 44
    iget-object v7, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    sub-int/2addr v4, v6

    int-to-float v4, v4

    sub-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 45
    iget-object v3, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v3, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 47
    iget-object v2, v2, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    :goto_7
    iget-object v0, v1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;->if:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    .line 49
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 51
    :cond_13
    throw v9
.end method
