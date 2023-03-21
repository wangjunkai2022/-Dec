.class public Lcom/apk/v3$this;
.super Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/v3;->return()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biquge/ebook/app/helper/req/convert/JsonCallback<",
        "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/NovelCategory;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v3$this;->do:Lcom/apk/v3;

    invoke-direct {p0, p2}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;-><init>(Ljava/lang/String;)V

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
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/v3$this;->do:Lcom/apk/v3;

    .line 7
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/apk/v3$this;->do:Lcom/apk/v3;

    .line 9
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 10
    invoke-virtual {v0, p1}, Lcom/apk/u5;->for(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    return-void
.end method

.method public onFinish(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/v3$this;->do:Lcom/apk/v3;

    .line 7
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/apk/v3$this;->do:Lcom/apk/v3;

    .line 9
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 10
    invoke-virtual {v0, p1}, Lcom/apk/u5;->for(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
