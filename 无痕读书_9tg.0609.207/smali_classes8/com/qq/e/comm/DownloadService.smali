.class public Lcom/qq/e/comm/DownloadService;
.super Landroid/app/Service;
.source ""


# instance fields
.field public a:Lcom/qq/e/comm/pi/SVSD;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/b;->b()Lcom/qq/e/comm/managers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qq/e/comm/managers/b;->b()Lcom/qq/e/comm/managers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/b;->c()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/qq/e/comm/pi/POFactory;->getAPKDownloadServiceDelegate(Landroid/app/Service;)Lcom/qq/e/comm/pi/SVSD;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/SVSD;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "\u521d\u59cb\u5316Service\u53d1\u751f\u5f02\u5e38"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static enterAPPDownloadListPage(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "enterAPPDownloadListPage \u8c03\u7528\u5f02\u5e38\uff0ccontext\u4e3a\u7a7a"

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qq/e/comm/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/qq/e/comm/managers/b;->b()Lcom/qq/e/comm/managers/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GDT_APPID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.qq.e.comm.ACTION_DOWNLOAD_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "DownloadService.onBind"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "GDT_APPID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadService.onBind,appID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/qq/e/comm/DownloadService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/SVSD;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/SVSD;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onRebind(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    return v0

    :cond_0
    const-string v1, "GDT_APPID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/qq/e/comm/DownloadService;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/SVSD;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "Service onStartCommand \u51fa\u73b0\u5f02\u5e38"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onTaskRemoved(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/comm/pi/SVSD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SVSD;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
