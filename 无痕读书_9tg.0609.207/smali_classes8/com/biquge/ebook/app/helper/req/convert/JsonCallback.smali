.class public abstract Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;
.super Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;
.source "JsonCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/biquge/ebook/app/helper/req/convert/BaseCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mKeyUrl:Ljava/lang/String;

.field public type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->setReqType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ch0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->type:Ljava/lang/reflect/Type;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->type:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;

    invoke-direct {v1, v0}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;-><init>(Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v1, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;

    iget-object v1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->type:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onStart(Lcom/apk/qy;)V

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->mKeyUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 9
    invoke-static {v0, p1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p1, v1, v1}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V
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

.method public onSuccess(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onSuccess(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->mKeyUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonCallback;->mKeyUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
