.class public Lcom/apk/z2$try;
.super Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.source "ComicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/z2;->static()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biquge/ebook/app/helper/req/convert/JsonCallback<",
        "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
        "Lcom/biquge/ebook/app/bean/WantBookBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/z2;


# direct methods
.method public constructor <init>(Lcom/apk/z2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z2$try;->do:Lcom/apk/z2;

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Lcom/biquge/ebook/app/bean/WantBookBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/apk/z2$try;->do:Lcom/apk/z2;

    .line 6
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/apk/z2$try;->do:Lcom/apk/z2;

    .line 8
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/biquge/ebook/app/bean/WantBookBean;

    invoke-virtual {v0, p1}, Lcom/apk/r5;->super(Lcom/biquge/ebook/app/bean/WantBookBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Lcom/biquge/ebook/app/bean/WantBookBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/z2$try;->do:Lcom/apk/z2;

    .line 3
    iget-object p1, p1, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/apk/r5;->super(Lcom/biquge/ebook/app/bean/WantBookBean;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Lcom/biquge/ebook/app/bean/WantBookBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/apk/z2$try;->do:Lcom/apk/z2;

    .line 6
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/apk/z2$try;->do:Lcom/apk/z2;

    .line 8
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/biquge/ebook/app/bean/WantBookBean;

    invoke-virtual {v0, p1}, Lcom/apk/r5;->super(Lcom/biquge/ebook/app/bean/WantBookBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
