.class public Lcom/apk/v4;
.super Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.source "PublicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biquge/ebook/app/helper/req/convert/JsonCallback<",
        "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/Book;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/x4;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/apk/x4;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v4;->for:Lcom/apk/x4;

    iput-object p2, p0, Lcom/apk/v4;->do:Ljava/lang/String;

    iput p3, p0, Lcom/apk/v4;->if:I

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/apk/iy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/v4;->for:Lcom/apk/x4;

    .line 3
    iget-object p1, p1, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/v4;->do:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/w5;->do(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->onStart(Lcom/apk/qy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/v4;->do:Ljava/lang/String;

    const-string v0, "search_history_key"

    .line 3
    invoke-static {v0, p1}, Lcom/apk/n2;->for(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/apk/v4;->for:Lcom/apk/x4;

    .line 7
    iget-object v0, v0, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/Book;

    .line 11
    iget v3, p0, Lcom/apk/v4;->if:I

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/apk/v4;->for:Lcom/apk/x4;

    .line 13
    iget-object v1, v1, Lcom/apk/x4;->for:Lcom/apk/w5;

    .line 14
    iget-object v2, p0, Lcom/apk/v4;->do:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/apk/w5;->do(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
