.class public Lcom/apk/q5$do;
.super Lcom/apk/c1;
.source "WelComePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/q5;->case(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Lorg/json/JSONObject;

.field public final synthetic for:Lcom/apk/q5;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/apk/q5;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q5$do;->for:Lcom/apk/q5;

    iput-boolean p2, p0, Lcom/apk/q5$do;->if:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lcom/apk/w0;->break()J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/apk/continue;->try:I

    .line 5
    invoke-static {}, Lcom/apk/w;->do()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/apk/xw;->if:Lcom/apk/xw;

    new-instance v6, Lcom/apk/p5;

    invoke-direct {v6, p0}, Lcom/apk/p5;-><init>(Lcom/apk/q5$do;)V

    const-string v7, "SP_HOST_APP_INIT_KEY"

    invoke-static/range {v2 .. v7}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/q5$do;->do:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_AD_CACHE_DATA_KEY"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    :cond_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    const/4 v2, 0x2

    .line 11
    iput v2, v0, Lcom/apk/continue;->try:I

    goto :goto_0

    .line 12
    :cond_1
    throw v1

    .line 13
    :cond_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    const/4 v2, 0x0

    .line 14
    iput v2, v0, Lcom/apk/continue;->try:I

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/apk/q5$do;->for:Lcom/apk/q5;

    .line 16
    iget-object v0, v0, Lcom/apk/q5;->new:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/apk/q5$do;->do:Lorg/json/JSONObject;

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcom/apk/q5$do;->if:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-string v2, "SP_RESTART_APP_FLAG_KEY"

    .line 4
    invoke-static {v2, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    const-string v2, "SP_AD_TT_GM_APPID_KEY"

    .line 5
    invoke-static {v2, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SP_AD_HOST_CSJ_KEY"

    .line 6
    invoke-static {v3, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SP_AD_HOST_GDT_KEY"

    .line 7
    invoke-static {v4, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SP_AD_HOST_BAIDU_KEY"

    .line 8
    invoke-static {v5, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    .line 9
    invoke-static {v2, v6, v3, v6, v4}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SP_APP_AD_APPID_DATA_KEY"

    .line 11
    invoke-static {v3, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v3, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {v3, v1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/apk/q5$do;->for:Lcom/apk/q5;

    .line 18
    iget-object p1, p1, Lcom/apk/q5;->for:Lcom/apk/y5;

    if-eqz p1, :cond_2

    .line 19
    check-cast p1, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    .line 20
    invoke-static {v3}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p1}, Lcom/apk/finally;->h(Landroid/content/Context;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/apk/q5$do;->for:Lcom/apk/q5;

    .line 25
    iget-boolean v1, v0, Lcom/apk/q5;->try:Z

    if-nez v1, :cond_2

    .line 26
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/o5;

    invoke-direct {v2, v0, p1}, Lcom/apk/o5;-><init>(Lcom/apk/q5;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
