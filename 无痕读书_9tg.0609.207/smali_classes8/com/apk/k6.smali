.class public abstract Lcom/apk/k6;
.super Lcom/apk/j6;
.source "LazyLoadFragment.java"


# instance fields
.field public isFirstEnter:Z

.field public isReuseView:Z

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/j6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/k6;->isFirstEnter:Z

    .line 3
    iput-boolean v0, p0, Lcom/apk/k6;->isReuseView:Z

    return-void
.end method

.method private resetVariavle()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/k6;->isFirstEnter:Z

    .line 2
    iput-boolean v0, p0, Lcom/apk/k6;->isReuseView:Z

    return-void
.end method


# virtual methods
.method public getUserVisibleHint()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/k6;->isOpenLazyLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/k6;->isUseVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public isOpenLazyLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUseVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/apk/k6;->resetVariavle()V

    return-void
.end method

.method public onFragmentFirstVisible()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/apk/k6;->isOpenLazyLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/k6;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/apk/k6;->rootView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/apk/k6;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/apk/k6;->isFirstEnter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/apk/k6;->isFirstEnter:Z

    .line 7
    invoke-virtual {p0}, Lcom/apk/k6;->onFragmentFirstVisible()V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/apk/k6;->isReuseView:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/apk/k6;->rootView:Landroid/view/View;

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public preInit()V
    .locals 0

    return-void
.end method

.method public reuseView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/k6;->isReuseView:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/k6;->isOpenLazyLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/k6;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/k6;->isFirstEnter:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/apk/k6;->isFirstEnter:Z

    .line 6
    invoke-virtual {p0}, Lcom/apk/k6;->onFragmentFirstVisible()V

    :cond_1
    return-void
.end method
