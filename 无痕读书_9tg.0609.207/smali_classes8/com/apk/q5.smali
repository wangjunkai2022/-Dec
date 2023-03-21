.class public Lcom/apk/q5;
.super Lcom/apk/p1;
.source "WelComePresenter.java"


# instance fields
.field public final for:Lcom/apk/y5;

.field public new:Landroid/os/Handler;

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/y5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/q5;->for:Lcom/apk/y5;

    return-void
.end method

.method public static for()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "SP_AD_CACHE_DATA_KEY"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/apk/ze;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-static {v0}, Lcom/apk/else;->for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CacheBean;->getData()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final case(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/q5$do;

    invoke-direct {v1, p0, p1}, Lcom/apk/q5$do;-><init>(Lcom/apk/q5;Z)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/apk/q5;->new:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/apk/w2;

    invoke-direct {v0, p0}, Lcom/apk/w2;-><init>(Lcom/apk/q5;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final new()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/q5;->for()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    new-instance v3, Lcom/apk/o5;

    invoke-direct {v3, p0, v0}, Lcom/apk/o5;-><init>(Lcom/apk/q5;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 4
    iput-boolean v1, p0, Lcom/apk/q5;->try:Z

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/q5;->case(Z)V

    goto :goto_0

    .line 6
    :cond_0
    throw v2

    .line 7
    :cond_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/apk/q5;->case(Z)V

    :goto_0
    return-void

    .line 9
    :cond_2
    throw v2
.end method

.method public synthetic try()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/q5;->try:Z

    .line 2
    iget-object v0, p0, Lcom/apk/q5;->for:Lcom/apk/y5;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    check-cast v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->l(ZLcom/apk/g;)V

    :cond_0
    return-void
.end method
