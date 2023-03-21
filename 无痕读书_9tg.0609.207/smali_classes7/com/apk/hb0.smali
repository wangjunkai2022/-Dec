.class public final Lcom/apk/hb0;
.super Lcom/apk/db0;
.source "TrDanMuManager.java"


# instance fields
.field public final synthetic for:Lcom/apk/q80;


# direct methods
.method public constructor <init>(Lcom/apk/q80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hb0;->for:Lcom/apk/q80;

    invoke-direct {p0}, Lcom/apk/db0;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/apk/iy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/hb0;->for:Lcom/apk/q80;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "\u8bf7\u6c42\u5931\u8d25"

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/apk/q80;->failed(ILjava/lang/String;)V

    :cond_0
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
    invoke-super {p0, p1}, Lcom/apk/db0;->onSuccess(Lcom/apk/iy;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 6
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/apk/hb0;->for:Lcom/apk/q80;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v1}, Lcom/apk/q80;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/apk/hb0;->for:Lcom/apk/q80;

    if-eqz p1, :cond_2

    const-string v2, "data"

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/apk/q80;->failed(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/apk/hb0;->for:Lcom/apk/q80;

    if-eqz p1, :cond_2

    const-string v1, "\u8bf7\u6c42\u5931\u8d25"

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/apk/q80;->failed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
