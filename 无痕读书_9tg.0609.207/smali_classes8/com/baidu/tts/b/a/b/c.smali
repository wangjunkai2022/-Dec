.class public Lcom/baidu/tts/b/a/b/c;
.super Ljava/lang/Object;
.source "MixStrategy.java"


# instance fields
.field public a:Lcom/baidu/tts/m/b;

.field public b:Lcom/baidu/tts/f/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/c;->b(I)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->c()Lcom/baidu/tts/f/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    goto :goto_1

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    goto :goto_1

    :goto_2
    return v2
.end method

.method private c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    return-void
.end method

.method public a()Z
    .locals 8

    const-string v0, "MixStrategy"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/c;->b()Z

    move-result v4

    .line 4
    iget-object v5, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v5}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v6}, Lcom/baidu/tts/m/b;->d()Lcom/baidu/tts/f/l;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lcom/baidu/tts/f/l;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/baidu/tts/b/a/b/f$b;->d(I)V

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MixOnlineRequestTimeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/baidu/tts/b/a/b/f$b;->u()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isModeChanged: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "connectivity"

    .line 8
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 12
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 13
    sget-object v5, Lcom/baidu/tts/b/a/b/c$1;->a:[I

    iget-object v6, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x9

    if-eq v5, v3, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_0

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0, v4}, Lcom/baidu/tts/b/a/b/c;->c(I)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v4, v6, :cond_2

    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0, v4}, Lcom/baidu/tts/b/a/b/c;->c(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1
.end method
