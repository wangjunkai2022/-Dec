.class public Lcom/apk/q3$do;
.super Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.source "ExpandPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/q3;->new()V
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
        "Lcom/expand/videoplayer/bean/RankCategory;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/q3;


# direct methods
.method public constructor <init>(Lcom/apk/q3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q3$do;->do:Lcom/apk/q3;

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
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/RankCategory;",
            ">;>;>;)V"
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
    iget-object v0, p0, Lcom/apk/q3$do;->do:Lcom/apk/q3;

    .line 4
    iget-object v0, v0, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/apk/q3$do;->do:Lcom/apk/q3;

    .line 6
    iget-object v0, v0, Lcom/apk/q3;->for:Lcom/apk/t5;

    .line 7
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/apk/t5;->for(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
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
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/RankCategory;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/q3$do;->do:Lcom/apk/q3;

    .line 3
    iget-object p1, p1, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/apk/t5;->for(Ljava/util/List;)V

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
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/RankCategory;",
            ">;>;>;)V"
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
    iget-object v0, p0, Lcom/apk/q3$do;->do:Lcom/apk/q3;

    .line 4
    iget-object v0, v0, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/apk/q3$do;->do:Lcom/apk/q3;

    .line 6
    iget-object v0, v0, Lcom/apk/q3;->for:Lcom/apk/t5;

    .line 7
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/apk/t5;->for(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
