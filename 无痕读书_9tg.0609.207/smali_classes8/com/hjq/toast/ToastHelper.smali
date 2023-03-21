.class public final Lcom/hjq/toast/ToastHelper;
.super Landroid/os/Handler;
.source "ToastHelper.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public mShow:Z

.field public final mToast:Landroid/widget/Toast;

.field public final mWindowHelper:Lcom/hjq/toast/WindowHelper;


# direct methods
.method public constructor <init>(Landroid/widget/Toast;Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 3
    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/toast/ToastHelper;->mPackageName:Ljava/lang/String;

    .line 4
    invoke-static {p0, p2}, Lcom/hjq/toast/WindowHelper;->register(Lcom/hjq/toast/ToastHelper;Landroid/app/Application;)Lcom/hjq/toast/WindowHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/toast/ToastHelper;->mWindowHelper:Lcom/hjq/toast/WindowHelper;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0}, Lcom/hjq/toast/ToastHelper;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/hjq/toast/ToastHelper;->mWindowHelper:Lcom/hjq/toast/WindowHelper;

    invoke-virtual {v0}, Lcom/hjq/toast/WindowHelper;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "window"

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/hjq/toast/ToastHelper;->setShow(Z)V

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hjq/toast/ToastHelper;->cancel()V

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hjq/toast/ToastHelper;->mShow:Z

    return v0
.end method

.method public setShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hjq/toast/ToastHelper;->mShow:Z

    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/hjq/toast/ToastHelper;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x98

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 12
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 13
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mWindowHelper:Lcom/hjq/toast/WindowHelper;

    invoke-virtual {v1}, Lcom/hjq/toast/WindowHelper;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "window"

    .line 16
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 17
    iget-object v2, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/hjq/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getDuration()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-wide/16 v3, 0xdac

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x7d0

    :goto_0
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    invoke-virtual {p0, v2}, Lcom/hjq/toast/ToastHelper;->setShow(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
