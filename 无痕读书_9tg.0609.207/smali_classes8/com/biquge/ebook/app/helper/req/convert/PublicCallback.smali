.class public Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.super Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;
.source "PublicCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biquge/ebook/app/helper/req/convert/BaseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final convert:Lcom/apk/ox;

.field public mKeyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/ox;

    invoke-direct {v0}, Lcom/apk/ox;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->convert:Lcom/apk/ox;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;-><init>()V

    .line 4
    new-instance v0, Lcom/apk/ox;

    invoke-direct {v0}, Lcom/apk/ox;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->convert:Lcom/apk/ox;

    .line 5
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->setReqType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->convertResponse(Lcom/apk/ch0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResponse(Lcom/apk/ch0;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->convert:Lcom/apk/ox;

    invoke-virtual {v0, p1}, Lcom/apk/ox;->do(Lcom/apk/ch0;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    return-object v0
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 2
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
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->mKeyUrl:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1, v1}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onSuccess(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->mKeyUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->mKeyUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
