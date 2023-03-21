.class public final Lcom/apk/ja0$do;
.super Lcom/apk/ma0;
.source "TrRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ja0;->try(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/q80;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/apk/q80;


# direct methods
.method public constructor <init>(Lcom/apk/q80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ja0$do;->for:Lcom/apk/q80;

    invoke-direct {p0}, Lcom/apk/ma0;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
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
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ja0$do;->for:Lcom/apk/q80;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    .line 5
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/apk/q80;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/ja0$do;->for:Lcom/apk/q80;

    if-eqz v0, :cond_1

    .line 8
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

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

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
    iget-object v0, p0, Lcom/apk/ja0$do;->for:Lcom/apk/q80;

    if-eqz v0, :cond_0

    .line 3
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

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
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
    invoke-super {p0, p1}, Lcom/apk/ma0;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ja0$do;->for:Lcom/apk/q80;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    .line 5
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/apk/q80;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/ja0$do;->for:Lcom/apk/q80;

    if-eqz v0, :cond_1

    .line 8
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

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
