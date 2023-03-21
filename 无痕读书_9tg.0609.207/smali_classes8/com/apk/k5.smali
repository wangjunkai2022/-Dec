.class public Lcom/apk/k5;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "UserPresenter.java"


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/g5;


# direct methods
.method public constructor <init>(Lcom/apk/g5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k5;->if:Lcom/apk/g5;

    iput-object p2, p0, Lcom/apk/k5;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/apk/iy;)V
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
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    const p1, 0x7f100141

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

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
    iget-object p1, p0, Lcom/apk/k5;->if:Lcom/apk/g5;

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
    iget-object p1, p0, Lcom/apk/k5;->if:Lcom/apk/g5;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
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
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onSuccess(Lcom/apk/iy;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_1

    .line 3
    :try_start_1
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "info"

    .line 7
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "status"

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v3, :cond_0

    move-object v0, p1

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 9
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/apk/k5;->if:Lcom/apk/g5;

    .line 11
    iget-object p1, p1, Lcom/apk/g5;->for:Lcom/apk/x5;

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/apk/k5;->if:Lcom/apk/g5;

    .line 13
    iget-object p1, p1, Lcom/apk/g5;->for:Lcom/apk/x5;

    .line 14
    iget-object v1, p0, Lcom/apk/k5;->do:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apk/x5;->this(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const p1, 0x7f100141

    .line 15
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_2
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 17
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method
