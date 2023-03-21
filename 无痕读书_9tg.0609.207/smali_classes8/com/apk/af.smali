.class public final Lcom/apk/af;
.super Lcom/apk/c1;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/g1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/apk/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/af;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/af;->if:Lcom/apk/g1;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/af;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/u;->if(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x41880000    # 17.0f

    .line 2
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v0

    int-to-float v2, v4

    div-float v2, v0, v2

    int-to-float v3, v5

    div-float/2addr v0, v3

    .line 5
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {v6, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 7
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/af;->if:Lcom/apk/g1;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
