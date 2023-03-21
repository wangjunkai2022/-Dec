.class public Lcom/bytedance/msdk/adapter/SplashDismissController;
.super Ljava/lang/Object;
.source "SplashDismissController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;
    }
.end annotation


# instance fields
.field public do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public for:Z

.field public if:Z

.field public new:Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->if:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->for:Z

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->try:Z

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->do:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/adapter/SplashDismissController$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/SplashDismissController$1;-><init>(Lcom/bytedance/msdk/adapter/SplashDismissController;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isCallDismiss()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->try:Z

    return v0
.end method

.method public jumpToAdPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->if:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->for:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallBack(Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->new:Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;

    return-void
.end method

.method public setCallDismiss(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->try:Z

    return-void
.end method

.method public setClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/SplashDismissController;->if:Z

    return-void
.end method
