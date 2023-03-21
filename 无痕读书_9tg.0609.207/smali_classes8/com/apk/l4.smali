.class public Lcom/apk/l4;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "NovelPresenter.java"


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    iput-object p2, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->do()V

    .line 4
    iget-object p1, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    .line 5
    iget-object p1, p1, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz p1, :cond_1

    const-string p1, "my_release"

    .line 6
    iget-object v0, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, "type = ?"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    :try_start_1
    new-array p1, v3, [Ljava/lang/String;

    aput-object v1, p1, v2

    .line 7
    iget-object v1, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    aput-object v1, p1, v0

    invoke-static {p1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    .line 9
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 10
    iget-object v1, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/apk/u5;->throw(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "my_collect"

    .line 11
    iget-object v4, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v3, [Ljava/lang/String;

    aput-object v1, p1, v2

    .line 12
    iget-object v1, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    aput-object v1, p1, v0

    invoke-static {p1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    .line 14
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 15
    iget-object v1, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/apk/u5;->throw(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->do()V

    return-void
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "Ljava/lang/String;",
            "+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onStart(Lcom/apk/qy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "pub"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/apk/ze;->j0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const-string v1, "col"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/apk/ze;->j0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/apk/l4;->if:Lcom/apk/v3;

    iget-object v2, p0, Lcom/apk/l4;->do:Ljava/lang/String;

    invoke-static {v1, v2, v0, p1}, Lcom/apk/v3;->catch(Lcom/apk/v3;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
