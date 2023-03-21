.class public final Lcom/hjq/toast/WindowHelper;
.super Ljava/lang/Object;
.source "WindowHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field public final mToastHelper:Lcom/hjq/toast/ToastHelper;

.field public mTopActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/hjq/toast/ToastHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hjq/toast/WindowHelper;->mToastHelper:Lcom/hjq/toast/ToastHelper;

    return-void
.end method

.method public static register(Lcom/hjq/toast/ToastHelper;Landroid/app/Application;)Lcom/hjq/toast/WindowHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/toast/WindowHelper;

    invoke-direct {v0, p0}, Lcom/hjq/toast/WindowHelper;-><init>(Lcom/hjq/toast/ToastHelper;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0
.end method


# virtual methods
.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/WindowHelper;->mTopActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/WindowHelper;->mTopActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/WindowHelper;->mTopActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/hjq/toast/WindowHelper;->mTopActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hjq/toast/WindowHelper;->mToastHelper:Lcom/hjq/toast/ToastHelper;

    invoke-virtual {p1}, Lcom/hjq/toast/ToastHelper;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hjq/toast/WindowHelper;->mToastHelper:Lcom/hjq/toast/ToastHelper;

    invoke-virtual {p1}, Lcom/hjq/toast/ToastHelper;->cancel()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/WindowHelper;->mTopActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/WindowHelper;->mTopActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
