.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;
.super Ljava/lang/Object;
.source "GMAppLogUtil.java"


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:Ljava/lang/String; = ""

.field public static volatile c:Z

.field public static volatile d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a([BI)[B
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/bytedance/mapplog/util/TTEncryptUtils;->do([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 3
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->c:Z

    .line 5
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    const-string v1, "299838"

    const-string v2, "gromore"

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->q()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUsePhoneState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->a(Z)V

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->q()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUseLocation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->b(Z)V

    .line 8
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$e;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/g;)V

    .line 9
    invoke-static {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/h;)V

    .line 10
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->c()Ljava/lang/String;

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d()Ljava/lang/String;

    .line 12
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "host_appid"

    .line 14
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "is_plugin"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "3.6.0.1"

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "plugin_version"

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel"

    .line 18
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_api_version"

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/util/HashMap;)V

    const-string p0, "TTMediationSDK_SDK_Init"

    const-string v0, "applod ------------: init end "

    .line 21
    invoke-static {p0, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    const-string v0, "applod ------------: did from get = "

    .line 5
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_SDK_Init"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->e()V

    .line 8
    :cond_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->f()V

    .line 5
    :cond_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->g()V

    .line 8
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$b;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static e()V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$c;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$c;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/c;)V

    return-void
.end method

.method public static f()V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$d;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$d;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e;)V

    return-void
.end method

.method public static g()V
    .locals 4

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v1, "applog"

    const/4 v2, 0x5

    .line 4
    :try_start_1
    new-instance v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$a;

    invoke-direct {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$a;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->initSingleThreadExecutor(Ljava/lang/String;ILjava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d:Ljava/util/concurrent/ExecutorService;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
