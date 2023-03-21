.class public Lcom/apk/r7;
.super Lcom/apk/c1;
.source "FeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iput-object p2, p0, Lcom/apk/r7;->if:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    const-string v0, "data"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "add_fankui"

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    sget-object v3, Lcom/apk/hf;->do:Lcom/apk/hf;

    iget-object v4, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    .line 5
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->do:Lcom/apk/hf;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lcom/apk/hf;->if:Lcom/apk/hf;

    iget-object v4, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    .line 7
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->do:Lcom/apk/hf;

    if-ne v3, v4, :cond_1

    const-string v3, "cartoon"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "novel"

    :goto_1
    :try_start_1
    const-string v4, "platform"

    const-string v5, "android"

    .line 8
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mode"

    .line 9
    invoke-static {}, Lcom/apk/ze;->F()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "3"

    goto :goto_2

    :cond_2
    const-string v5, "2"

    :goto_2
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "brand"

    .line 10
    invoke-static {}, Lcom/apk/ze;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "model"

    .line 11
    invoke-static {}, Lcom/apk/ze;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "package"

    .line 12
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    .line 13
    invoke-static {}, Lcom/apk/ze;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "channel"

    .line 14
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "userIn"

    .line 15
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ans"

    .line 16
    iget-object v4, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    .line 17
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->for:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "desc"

    .line 19
    iget-object v4, p0, Lcom/apk/r7;->if:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device"

    .line 20
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "phone"

    .line 21
    iget-object v4, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_phone_et:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "qq_wx"

    .line 22
    iget-object v4, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_weixin_qq_et:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ts"

    .line 23
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "user"

    .line 24
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extinfo"

    const-string v4, ""

    .line 25
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NxHk1JoybOj8n9NjhePY4Mv4"

    const-string v4, "yRJlRzyS"

    invoke-static {v2, v3, v4}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "https://fankui.chinadegi.com/api/v3/Action"

    .line 27
    :try_start_2
    invoke-static {v2, v1}, Lcom/apk/x4;->switch(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    const-string v0, "status"

    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u63d0\u4ea4\u53cd\u9988\u6210\u529f"

    .line 5
    iput-object p1, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iget-object v0, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    new-instance v1, Lcom/apk/q7;

    invoke-direct {v1, p0}, Lcom/apk/q7;-><init>(Lcom/apk/r7;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/apk/ze;->c0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f100179

    .line 8
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/apk/r7;->do:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
