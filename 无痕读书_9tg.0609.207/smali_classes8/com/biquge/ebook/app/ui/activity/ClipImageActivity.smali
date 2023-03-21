.class public Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;
.super Lcom/apk/f6;
.source "ClipImageActivity.java"


# instance fields
.field public clipViewLayout:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09015c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0036

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;->clipViewLayout:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1002f4

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09015e

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 13
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090121,
            0x7f090120
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto/16 :goto_7

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;->clipViewLayout:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    .line 4
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 5
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 6
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {v0}, Lcom/apk/qh;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v3, v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0xc8

    .line 8
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 10
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    int-to-float v3, v9

    div-float v3, v2, v3

    int-to-float v4, v10

    div-float/2addr v2, v4

    .line 11
    invoke-virtual {v11, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v6, v0

    .line 12
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 13
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 16
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v0

    .line 17
    iget-object v3, v0, Lcom/apk/a6;->new:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "image"

    .line 18
    invoke-virtual {v0, v3}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/apk/a6;->new:Ljava/lang/String;

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/apk/a6;->new:Ljava/lang/String;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 22
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 23
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    .line 24
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 25
    :catch_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    .line 26
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    const-string v1, "SP_SAVE_USER_HEADICON_KEY"

    const-string v2, ""

    .line 27
    invoke-static {v1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_7

    :goto_5
    if-eqz v1, :cond_5

    .line 38
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    :cond_5
    :goto_6
    throw p1

    :cond_6
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090120
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
