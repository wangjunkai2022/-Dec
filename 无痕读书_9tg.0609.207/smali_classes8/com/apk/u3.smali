.class public Lcom/apk/u3;
.super Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biquge/ebook/app/helper/req/convert/JsonCallback<",
        "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
        "Lcom/biquge/ebook/app/bean/Book;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;-><init>()V

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/bean/Book;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 2
    const-class v0, Lcom/biquge/ebook/app/bean/Footprint;

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "novelId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 3
    new-instance v1, Lcom/biquge/ebook/app/bean/Footprint;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/Footprint;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setAuthor(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setCategory(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setContent(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setIcon(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setNovelId(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Footprint;->setSaveTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/16 v1, 0x32

    .line 13
    invoke-static {v0}, Lorg/litepal/LitePal;->count(Ljava/lang/Class;)I

    move-result v2

    if-le v2, v1, :cond_0

    .line 14
    invoke-static {v0}, Lorg/litepal/LitePal;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Footprint;

    .line 15
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->delete()I

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object p0

    .line 17
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOKDETAIL_ADD_HIT_KEY#NOVEL#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v0}, Lcom/apk/ze;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "action"

    const-string v4, "addhit"

    .line 22
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bookid"

    .line 23
    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->new()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/BookAction.aspx"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v3, 0x0

    .line 25
    sget-object v5, Lcom/apk/xw;->do:Lcom/apk/xw;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/apk/x4;->class(Ljava/lang/String;Ljava/util/Map;JLcom/apk/xw;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    sget-object p0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
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
            "Lcom/biquge/ebook/app/bean/Book;",
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

    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    .line 7
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    .line 9
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 10
    invoke-virtual {v0, p1}, Lcom/apk/u5;->if(Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
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
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object v0, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    .line 3
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/u5;->switch()V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/apk/x4;->const(Lcom/apk/iy;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/apk/v3;->new()V

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/apk/iy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    new-instance v1, Lcom/apk/t2;

    invoke-direct {v1, p1}, Lcom/apk/t2;-><init>(Lcom/biquge/ebook/app/bean/Book;)V

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Lcom/biquge/ebook/app/helper/req/convert/LzyResponse<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;)V"
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

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    .line 7
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/apk/u3;->do:Lcom/apk/v3;

    .line 9
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 10
    invoke-virtual {v0, p1}, Lcom/apk/u5;->if(Lcom/biquge/ebook/app/bean/Book;)V

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/apk/v3;->class(Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
