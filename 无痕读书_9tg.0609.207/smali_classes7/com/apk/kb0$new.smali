.class public Lcom/apk/kb0$new;
.super Lcom/apk/ma0;
.source "TrCommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/kb0;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/apk/kb0;


# direct methods
.method public constructor <init>(Lcom/apk/kb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kb0$new;->for:Lcom/apk/kb0;

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
    invoke-static {}, Lcom/apk/fa0;->if()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/apk/kb0$new;->for:Lcom/apk/kb0;

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
    iget-object p1, p0, Lcom/apk/kb0$new;->for:Lcom/apk/kb0;

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
    .locals 1
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

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/apk/fa0;->if()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string p1, "Info"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/apk/fa0;->const(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
