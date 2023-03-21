.class public final Lcom/apk/u$this;
.super Lcom/apk/c1;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/u;->catch(ZLjava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/manhua/ui/widget/barrage/BarrageView;

.field public final synthetic if:Landroid/widget/ImageView;

.field public final synthetic new:Lcom/apk/j1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u$this;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/u$this;->if:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/apk/u$this;->for:Lcom/manhua/ui/widget/barrage/BarrageView;

    iput-object p4, p0, Lcom/apk/u$this;->new:Lcom/apk/j1;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/u$this;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/mu;->private(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/u$this;->do:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/u$this;->if:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/apk/u$this;->for:Lcom/manhua/ui/widget/barrage/BarrageView;

    iget-object v2, p0, Lcom/apk/u$this;->new:Lcom/apk/j1;

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/apk/u;->class(Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V

    return-void
.end method
