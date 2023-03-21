.class public Lcom/apk/kb0$if;
.super Lcom/apk/ma0;
.source "TrCommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/kb0;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Ljava/lang/String;

.field public final synthetic else:Lcom/apk/kb0;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/kb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kb0$if;->else:Lcom/apk/kb0;

    iput-object p2, p0, Lcom/apk/kb0$if;->for:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/kb0$if;->new:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/kb0$if;->try:Ljava/lang/String;

    iput-object p5, p0, Lcom/apk/kb0$if;->case:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/ma0;-><init>()V

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
    invoke-super {p0, p1}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    .line 3
    :cond_0
    sget p1, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_request_failed_txt:I

    invoke-static {p1}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/fa0;->const(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/apk/kb0$if;->else:Lcom/apk/kb0;

    .line 3
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/apk/lb0;

    invoke-interface {p1}, Lcom/apk/lb0;->for()V

    :cond_0
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
    invoke-super {p0, p1}, Lcom/apk/ma0;->onStart(Lcom/apk/qy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/kb0$if;->else:Lcom/apk/kb0;

    .line 3
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/apk/lb0;

    invoke-interface {p1}, Lcom/apk/lb0;->goto()V

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
    invoke-super {p0, p1}, Lcom/apk/ma0;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string p1, "Info"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-static {p1}, Lcom/apk/fa0;->const(Ljava/lang/String;)V

    :cond_0
    const-string p1, "Data"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "Result"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "CommentId"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-direct {v0}, Lcom/tr/comment/sdk/bean/TrCommentBean;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserAdd(Z)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setId(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/apk/kb0$if;->for:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setBookId(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/apk/kb0$if;->new:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setChapterId(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/apk/kb0$if;->try:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setContent(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setCommendCount(I)V

    .line 20
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 21
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUpdateTime(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/apk/fa0;->switch()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserFace(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/apk/fa0;->throws()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserId(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/apk/fa0;->default()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/apk/k40;->catch(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 28
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "(\\d{3})\\d{5}(\\d{3})"

    const-string v2, "$1****$2"

    .line 29
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserName(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/apk/kb0$if;->else:Lcom/apk/kb0;

    .line 32
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/apk/kb0$if;->else:Lcom/apk/kb0;

    .line 34
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    .line 35
    check-cast p1, Lcom/apk/lb0;

    iget-object v1, p0, Lcom/apk/kb0$if;->case:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/apk/lb0;->else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
