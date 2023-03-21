.class public Lcom/bytedance/msdk/adapter/SplashDismissController$1;
.super Ljava/lang/Object;
.source "SplashDismissController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/SplashDismissController;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/SplashDismissController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;->do:Lcom/bytedance/msdk/adapter/SplashDismissController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;->do:Lcom/bytedance/msdk/adapter/SplashDismissController;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/bytedance/msdk/adapter/SplashDismissController;->new:Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/SplashDismissController;->do:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;->do:Lcom/bytedance/msdk/adapter/SplashDismissController;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/SplashDismissController;->do:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;->do:Lcom/bytedance/msdk/adapter/SplashDismissController;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/bytedance/msdk/adapter/SplashDismissController;->for:Z

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;->do:Lcom/bytedance/msdk/adapter/SplashDismissController;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/SplashDismissController;->do:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;->do:Lcom/bytedance/msdk/adapter/SplashDismissController;

    .line 5
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/SplashDismissController;->new:Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;->onResume()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
