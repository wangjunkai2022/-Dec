.class public Lcom/apk/y2;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "ComicPresenter.java"


# instance fields
.field public final synthetic case:Lorg/json/JSONArray;

.field public final synthetic do:Ljava/lang/String;

.field public final synthetic else:Lcom/apk/z2;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Z

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/z2;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/y2;->else:Lcom/apk/z2;

    iput-object p2, p0, Lcom/apk/y2;->do:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/apk/y2;->if:Z

    iput-object p4, p0, Lcom/apk/y2;->for:Ljava/lang/String;

    iput-object p5, p0, Lcom/apk/y2;->new:Ljava/lang/String;

    iput-object p6, p0, Lcom/apk/y2;->try:Ljava/lang/String;

    iput-object p7, p0, Lcom/apk/y2;->case:Lorg/json/JSONArray;

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
    iget-object p1, p0, Lcom/apk/y2;->else:Lcom/apk/z2;

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
    iget-object p1, p0, Lcom/apk/y2;->else:Lcom/apk/z2;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 9
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

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "info"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "data"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "listid"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "result"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 13
    iget-object v2, p0, Lcom/apk/y2;->do:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/apk/y2;->if:Z

    iget-object v5, p0, Lcom/apk/y2;->for:Ljava/lang/String;

    iget-object v6, p0, Lcom/apk/y2;->new:Ljava/lang/String;

    iget-object v7, p0, Lcom/apk/y2;->try:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/y2;->case:Lorg/json/JSONArray;

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 15
    invoke-static/range {v2 .. v8}, Lcom/apk/z2;->for(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    iget-object v0, p0, Lcom/apk/y2;->else:Lcom/apk/z2;

    .line 17
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/apk/y2;->else:Lcom/apk/z2;

    .line 19
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    .line 20
    invoke-virtual {v0, p1}, Lcom/apk/r5;->const(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
