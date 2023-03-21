.class public Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;
.super Lcom/apk/f6;
.source "DownloadManagerActivity.java"


# instance fields
.field public mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e5
    .end annotation
.end field

.field public mIndicator:Lcom/apk/b40;

.field public mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09006e
    .end annotation
.end field


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

    const v0, 0x7f0c003e

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0003

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 4
    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v1, v2, :cond_0

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, v2, :cond_1

    .line 8
    new-instance v1, Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicDownloadFragment;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-ne v1, v2, :cond_2

    .line 11
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicDownloadFragment;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    sget-object v2, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v1, v2, :cond_3

    .line 16
    new-instance v1, Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicDownloadFragment;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 21
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 22
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const v2, 0x7f10018d

    const/4 v3, 0x1

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {p0, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/HeaderView;->getTitleIndicatorView()Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getIndicator()Lcom/apk/b40;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mIndicator:Lcom/apk/b40;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setChangeTabListener(Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
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

    const v2, 0x7f100126

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
