.class public Lcom/apk/v3$break;
.super Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/v3;->public(ZLjava/lang/String;IZ)V
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
        "Lcom/biquge/ebook/app/bean/BookElement;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/v3;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/apk/v3;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v3$break;->for:Lcom/apk/v3;

    iput-object p3, p0, Lcom/apk/v3$break;->do:Ljava/lang/String;

    iput p4, p0, Lcom/apk/v3$break;->if:I

    invoke-direct {p0, p2}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookElement;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/BookElement;

    const-string v3, "commend"

    .line 6
    iget-object v4, p0, Lcom/apk/v3$break;->do:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/apk/v3$break;->for:Lcom/apk/v3;

    .line 10
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/apk/v3$break;->for:Lcom/apk/v3;

    .line 12
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v1, p0, Lcom/apk/v3$break;->if:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/apk/u5;->catch(Ljava/util/List;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookElement;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/v3$break;->for:Lcom/apk/v3;

    .line 3
    iget-object p1, p1, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/apk/v3$break;->if:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/u5;->catch(Ljava/util/List;ZI)V

    :cond_0
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
            "Lcom/biquge/ebook/app/bean/BookElement;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookElement;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/BookElement;

    const-string v3, "commend"

    .line 6
    iget-object v4, p0, Lcom/apk/v3$break;->do:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/apk/v3$break;->for:Lcom/apk/v3;

    .line 10
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/apk/v3$break;->for:Lcom/apk/v3;

    .line 12
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v1, p0, Lcom/apk/v3$break;->if:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/apk/u5;->catch(Ljava/util/List;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
