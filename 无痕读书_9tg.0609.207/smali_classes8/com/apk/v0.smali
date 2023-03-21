.class public Lcom/apk/v0;
.super Ljava/lang/Object;
.source "UserHelper.java"


# static fields
.field public static if:Lcom/apk/v0;


# instance fields
.field public do:Lcom/biquge/ebook/app/bean/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/v0;->break()V

    return-void
.end method

.method public static if()Ljava/lang/String;
    .locals 7

    const-string v0, "#"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v2, "plateform=android"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pak="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->extends()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v3, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, -0x1

    :try_start_1
    const-string v5, "connectivity"

    .line 26
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 27
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_2

    .line 30
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x2

    :catch_0
    :cond_2
    :goto_1
    move v3, v4

    .line 31
    :goto_2
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ua="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/eg;->extends()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v3

    .line 38
    iget-object v3, v3, Lcom/apk/qt;->for:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v3

    .line 42
    iget-object v3, v3, Lcom/apk/qt;->do:Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oaid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/eg;->public()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v2

    .line 48
    iget-object v2, v2, Lcom/apk/qt;->if:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    :catch_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

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

.method public static try()Lcom/apk/v0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/v0;->if:Lcom/apk/v0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/v0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/v0;->if:Lcom/apk/v0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/v0;

    invoke-direct {v1}, Lcom/apk/v0;-><init>()V

    sput-object v1, Lcom/apk/v0;->if:Lcom/apk/v0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/v0;->if:Lcom/apk/v0;

    return-object v0
.end method


# virtual methods
.method public final break()V
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Lcom/biquge/ebook/app/bean/User;

    invoke-static {v0}, Lorg/litepal/LitePal;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/User;

    iput-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->isNeedChanagePwd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/User;->setPhone(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0, p3}, Lcom/biquge/ebook/app/bean/User;->setPwd(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0, p4}, Lcom/biquge/ebook/app/bean/User;->setEmail(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 9
    iget-object p4, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {p4, p5}, Lcom/biquge/ebook/app/bean/User;->setNickName(Ljava/lang/String;)V

    .line 10
    :cond_3
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object p2

    const-string v0, "phone"

    invoke-virtual {p4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 14
    iget-object p2, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object p2

    const-string p3, "pwd"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 16
    iget-object p2, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "nickName"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_6
    const-class p2, Lcom/biquge/ebook/app/bean/User;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const/4 p5, 0x0

    const-string v0, "name = ?"

    aput-object v0, p3, p5

    const/4 p5, 0x1

    aput-object p1, p3, p5

    invoke-static {p2, p4, p3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public else()Lcom/biquge/ebook/app/bean/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/v0;->break()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    return-object v0
.end method

.method public final(Lcom/apk/sg0;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/apk/sg0;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Set-Cookie"

    .line 2
    invoke-virtual {p1, v0}, Lcom/apk/sg0;->try(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ";"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, v3}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_LOGIN_COOKIE_VALUE"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method

.method public for(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(\\d{3})\\d{5}(\\d{3})"

    const-string v1, "$1****$2"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getUserid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getUserid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/v0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public super(ZILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "Email"

    const-string v2, "Phone"

    const-string v3, "NickName"

    const-string v4, "UserName"

    const-string v5, "UserId"

    const-string v6, "SP_USER_NICKNAME_KEY"

    .line 1
    const-class v7, Lcom/biquge/ebook/app/bean/User;

    .line 2
    sget-object v8, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v9, "SP_ADD_BOOK_SHELF_AUTO_LOGIN_KEY"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {v7}, Lorg/litepal/LitePal;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p1

    .line 4
    :goto_0
    :try_start_0
    iget-object v12, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v12, :cond_1

    if-eqz v8, :cond_2

    .line 5
    :cond_1
    new-instance v12, Lcom/biquge/ebook/app/bean/User;

    invoke-direct {v12}, Lcom/biquge/ebook/app/bean/User;-><init>()V

    iput-object v12, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    .line 6
    :cond_2
    iget-object v12, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Lcom/biquge/ebook/app/bean/User;->setLoginType(I)V

    .line 7
    iget-object v12, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    move-object/from16 v13, p3

    invoke-virtual {v12, v13}, Lcom/biquge/ebook/app/bean/User;->setName(Ljava/lang/String;)V

    .line 8
    iget-object v12, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    move-object/from16 v13, p4

    invoke-virtual {v12, v13}, Lcom/biquge/ebook/app/bean/User;->setPwd(Ljava/lang/String;)V

    const-string v12, "UserInfo"

    move-object/from16 v13, p5

    .line 9
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v13, "NeedChanagePwd"

    const-string v14, "KPTime"

    const-string v15, "Balance"

    const-string v11, "KingPower"

    if-eqz v12, :cond_b

    .line 10
    :try_start_1
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 11
    iget-object v10, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/biquge/ebook/app/bean/User;->setUserid(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    iget-object v5, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/biquge/ebook/app/bean/User;->setName(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    iget-object v4, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/biquge/ebook/app/bean/User;->setNickName(Ljava/lang/String;)V

    .line 16
    :cond_5
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/User;->setPhone(Ljava/lang/String;)V

    .line 18
    :cond_6
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setEmail(Ljava/lang/String;)V

    :cond_7
    const-string v0, "VipLevel"

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 21
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setVipLevel(I)V

    const-string v0, "NoAdTitle"

    .line 22
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setNoAdTitle(Ljava/lang/String;)V

    const-string v0, "IsNoAd"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3, v0}, Lcom/biquge/ebook/app/bean/User;->setNoAd(Z)V

    .line 26
    invoke-virtual {v12, v11, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 27
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/User;->setKingPower(Z)V

    if-nez v0, :cond_8

    if-eqz v3, :cond_9

    .line 28
    :cond_8
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v0, Lcom/apk/finally;->do:Z

    .line 30
    :cond_9
    iget-object v0, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    const-string v2, "ExtInfo"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/User;->setExtInfo(Ljava/lang/String;)V

    const-string v0, "IsFirstLogin"

    .line 31
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->isFirstLogin()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    .line 33
    :cond_a
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setFirstLogin(Z)V

    .line 34
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setBalance(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setKPTime(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 39
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/User;->setNeedChanagePwd(Z)V

    .line 40
    :cond_b
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-static {v7}, Lorg/litepal/LitePal;->count(Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_c

    .line 42
    :try_start_2
    iget-object v0, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 43
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    invoke-static {v7}, Lorg/litepal/LitePal;->count(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_d

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v0}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 48
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "userid"

    .line 49
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 50
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pwd"

    .line 51
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "avatar"

    .line 52
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "email"

    .line 53
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vipLevel"

    .line 54
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getVipLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "noAdTitle"

    .line 55
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getNoAdTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isNoAd"

    .line 56
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->isNoAd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "isFirstLogin"

    .line 57
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->isFirstLogin()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "extInfo"

    .line 58
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getExtInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->getBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "signDate"

    .line 60
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getSignDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "signdays"

    .line 61
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getSigndays()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "signHistory"

    .line 62
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getSignHistory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->isKingPower()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->getKPTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "messageCode"

    .line 65
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getMessageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "loginType"

    .line 66
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getLoginType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "nickName"

    .line 67
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "phone"

    .line 68
    iget-object v3, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->isNeedChanagePwd()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 70
    invoke-static {v7, v0, v3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 71
    :cond_d
    :goto_1
    invoke-static {v6}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 72
    iget-object v0, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v6, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    const-string v0, ""

    .line 74
    invoke-static {v6, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v2, v1, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "SP_USER_AUDIT_NICKNAME_KEY"

    .line 76
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "message"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "login_action"

    invoke-static {v2, v0}, Lcom/apk/mf;->if(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public this()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/apk/v0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
