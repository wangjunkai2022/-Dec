.class public final Lcom/apk/w0$for;
.super Lcom/apk/c1;
.source "WebInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/w0;->for(Landroid/app/Activity;Landroid/view/View;ILandroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic case:I

.field public do:Ljava/io/File;

.field public final synthetic for:Landroid/widget/ImageView;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Landroid/app/Activity;

.field public final synthetic try:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w0$for;->if:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/w0$for;->for:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/apk/w0$for;->new:Landroid/app/Activity;

    iput-object p4, p0, Lcom/apk/w0$for;->try:Landroid/view/View;

    iput p5, p0, Lcom/apk/w0$for;->case:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/apk/w0$for;->do:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/a6;->try()Ljava/lang/String;

    move-result-object v1

    const-string v2, "novel.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apk/w0$for;->do:Ljava/io/File;

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/w0$for;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/w0$for;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/w;->class(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/apk/jg;->do(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/w0$for;->for:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/w0$for;->new:Landroid/app/Activity;

    iget-object v0, p0, Lcom/apk/w0$for;->try:Landroid/view/View;

    iget v1, p0, Lcom/apk/w0$for;->case:I

    iget-object v2, p0, Lcom/apk/w0$for;->do:Ljava/io/File;

    .line 5
    new-instance v3, Lcom/apk/b1;

    invoke-direct {v3}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/z0;

    invoke-direct {v4, v0, v2, v1, p1}, Lcom/apk/z0;-><init>(Landroid/view/View;Ljava/io/File;ILandroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method
