.class public Lcom/apk/g5$do;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "UserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/g5;->new(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Lcom/apk/g5;


# direct methods
.method public constructor <init>(Lcom/apk/g5;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/g5$do;->new:Lcom/apk/g5;

    iput p2, p0, Lcom/apk/g5$do;->do:I

    iput-object p3, p0, Lcom/apk/g5$do;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/g5$do;->for:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/apk/g5$do;->new:Lcom/apk/g5;

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
    iget-object p1, p0, Lcom/apk/g5$do;->new:Lcom/apk/g5;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 10
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

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 7
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Status"

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v1, :cond_1

    .line 9
    :try_start_1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    .line 10
    iget-object p1, p1, Lcom/apk/iy;->new:Lcom/apk/ch0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Lcom/apk/v0;->final(Lcom/apk/sg0;)V

    .line 13
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v4

    const/4 v5, 0x1

    iget v6, p0, Lcom/apk/g5$do;->do:I

    iget-object v7, p0, Lcom/apk/g5$do;->if:Ljava/lang/String;

    iget-object v8, p0, Lcom/apk/g5$do;->for:Ljava/lang/String;

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/apk/v0;->super(ZILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_2
    const-string p1, "Message"

    .line 14
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 17
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 18
    iget-object p1, p0, Lcom/apk/g5$do;->new:Lcom/apk/g5;

    .line 19
    iget-object p1, p1, Lcom/apk/g5;->for:Lcom/apk/x5;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/apk/x5;->try()V

    :cond_3
    return-void
.end method
