.class public abstract Lcom/apk/g6;
.super Lcom/apk/k6;
.source "BaseFragment.java"


# instance fields
.field public mActivity:Lcom/apk/i6;

.field public mLoadingWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lxj/xpopup/impl/LoadingPopupView;",
            ">;"
        }
    .end annotation
.end field

.field public mPopupLoadingWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lxj/xpopup/impl/LoadingPopupView;",
            ">;"
        }
    .end annotation
.end field

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/k6;-><init>()V

    return-void
.end method

.method private createLoadingPopupView(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/zu$do;

    invoke-direct {v0, p1}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iget-object v1, v0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    const p1, 0x7f10025c

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/zu$do;->break(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object p1

    return-object p1
.end method

.method private createPublicLoadingDialog(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 4

    .line 1
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    const v1, 0x7f10025c

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c006a

    .line 6
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 7
    iput-boolean v3, v0, Lcom/apk/lv;->continue:Z

    .line 8
    new-instance v3, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v3, p1, v2}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {v3, v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 10
    iput-object v0, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object v3
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/g6;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getLayoutId()I
.end method

.method public getSupportActivity()Lcom/apk/i6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/g6;->mActivity:Lcom/apk/i6;

    return-object v0
.end method

.method public hideBaseLoading()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public hidePopupLoading()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public isEventBusRegisted(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/rl0;->case(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/apk/i6;

    iput-object p1, p0, Lcom/apk/g6;->mActivity:Lcom/apk/i6;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/apk/g6;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/g6;->rootView:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0}, Lcom/apk/k6;->preInit()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p0, Lcom/apk/g6;->rootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/g6;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/k6;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/g6;->rootView:Landroid/view/View;

    return-void
.end method

.method public onFragmentFirstVisible()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/g6;->initView()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->initData()V

    return-void
.end method

.method public registerEventBus(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/g6;->isEventBusRegisted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/rl0;->catch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public showBaseLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/g6;->showBaseLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showBaseLoading(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apk/g6;->createPublicLoadingDialog(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10025c

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/g6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showPopupLoading()V
    .locals 1

    const v0, 0x7f10025c

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/g6;->showPopupLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showPopupLoading(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apk/g6;->createLoadingPopupView(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/g6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unRegisterEventBus(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/g6;->isEventBusRegisted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/rl0;->const(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
