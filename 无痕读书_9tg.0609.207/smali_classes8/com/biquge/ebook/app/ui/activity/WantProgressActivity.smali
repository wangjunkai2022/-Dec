.class public Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;
.super Lcom/apk/f6;
.source "WantProgressActivity.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

.field public for:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

.field public if:Lcom/apk/b40;

.field public mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ed
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ef
    .end annotation
.end field

.field public new:Lcom/manhua/ui/fragment/WantComicProgressFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c005c

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0003

    return v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 7

    .line 1
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {p0, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/HeaderView;->getTitleIndicatorView()Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getIndicator()Lcom/apk/b40;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->if:Lcom/apk/b40;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 9
    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 10
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->for:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, v2, :cond_1

    .line 13
    new-instance v1, Lcom/manhua/ui/fragment/WantComicProgressFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/WantComicProgressFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->new:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    sget-object v2, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-ne v1, v2, :cond_2

    .line 16
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->for:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/manhua/ui/fragment/WantComicProgressFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/WantComicProgressFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->new:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v1

    goto :goto_1

    .line 21
    :cond_2
    sget-object v2, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v1, v2, :cond_3

    .line 22
    new-instance v1, Lcom/manhua/ui/fragment/WantComicProgressFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/WantComicProgressFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->new:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->for:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 27
    :goto_1
    new-instance v2, Lcom/apk/e40;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->if:Lcom/apk/b40;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v2, v4, v5}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 28
    new-instance v4, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const v4, 0x7f1003db

    invoke-virtual {v0, v2, v4, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 31
    invoke-virtual {v0, v1, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    return-void
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

    const-string v0, "REFRESH_WANTBOOK_KEY"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->for:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;->a(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->new:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/manhua/ui/fragment/WantComicProgressFragment;->a(Z)V

    :cond_1
    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {p0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 6
    invoke-static {p0, p1, v1}, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->i(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f090084

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900d8

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f1003e3

    .line 3
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
