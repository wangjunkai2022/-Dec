.class public Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;
.super Lcom/apk/mx;
.source "BaseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/mx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public reqType:Ljava/lang/String;

.field public reqUrl:Ljava/lang/String;

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/mx;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    .line 4
    invoke-virtual {p1}, Lcom/apk/iy;->new()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/apk/iy;->new()Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p1, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->reqType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 10
    invoke-static {p1}, Lcom/apk/x4;->const(Lcom/apk/iy;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->reqType:Ljava/lang/String;

    invoke-static {p1}, Lcom/apk/x4;->break(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    throw v1

    .line 14
    :cond_4
    :goto_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
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
    invoke-super {p0, p1}, Lcom/apk/mx;->onStart(Lcom/apk/qy;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->startTime:J

    .line 3
    iget-object v0, p1, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->reqUrl:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/apk/x4;->final(Ljava/lang/String;)Lcom/apk/fy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/qy;->catch(Lcom/apk/fy;)Lcom/apk/qy;

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

    return-void
.end method

.method public setReqType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->reqType:Ljava/lang/String;

    return-void
.end method
