.class public final Lcom/apk/ia0;
.super Lcom/apk/ma0;
.source "TrRequestManager.java"


# instance fields
.field public final synthetic for:Lcom/apk/q80;


# direct methods
.method public constructor <init>(Lcom/apk/q80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ia0;->for:Lcom/apk/q80;

    invoke-direct {p0}, Lcom/apk/ma0;-><init>()V

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
    :try_start_0
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    invoke-virtual {p1}, Lcom/apk/iy;->new()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/apk/ia0;->for:Lcom/apk/q80;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    move-result v1

    invoke-virtual {p1}, Lcom/apk/iy;->new()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/apk/q80;->failed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/ma0;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Info"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Data"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "Result"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/apk/ia0;->for:Lcom/apk/q80;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1, v0}, Lcom/apk/q80;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/apk/ia0;->for:Lcom/apk/q80;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "failed"

    :goto_0
    :try_start_1
    invoke-interface {v1, v2, p1}, Lcom/apk/q80;->failed(ILjava/lang/String;)V

    .line 13
    :cond_2
    :goto_1
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
