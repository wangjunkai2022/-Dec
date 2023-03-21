.class public Lcom/biquge/ebook/app/ui/activity/SecurityCenterActivity;
.super Lcom/apk/f6;
.source "SecurityCenterActivity.java"


# instance fields
.field public do:Lcom/apk/g5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0051

    return v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f09008e

    const v1, 0x7f1002f0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public menuClick()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0903c4
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SecurityCenterActivity;->do:Lcom/apk/g5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/g5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SecurityCenterActivity;->do:Lcom/apk/g5;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SecurityCenterActivity;->do:Lcom/apk/g5;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    new-instance v2, Lcom/apk/zu$do;

    iget-object v3, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    const v3, 0x7f10032b

    .line 5
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1001a7

    .line 6
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/apk/d5;

    invoke-direct {v5, v0}, Lcom/apk/d5;-><init>(Lcom/apk/g5;)V

    .line 7
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/apk/zu$do;->case(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/g5;->new:Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 10
    :cond_1
    throw v1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "login_action"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_0
    return-void
.end method
