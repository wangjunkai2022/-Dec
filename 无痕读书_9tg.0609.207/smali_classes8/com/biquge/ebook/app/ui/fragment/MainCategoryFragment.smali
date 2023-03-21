.class public Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;
.super Lcom/apk/g6;
.source "MainCategoryFragment.java"


# instance fields
.field public do:Lcom/apk/b40;

.field public mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090563
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00bf

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
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, v2, :cond_1

    .line 8
    new-instance v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-ne v1, v2, :cond_2

    .line 11
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_0
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->do:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 20
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const v2, 0x7f1001da

    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getIndicator()Lcom/apk/b40;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->do:Lcom/apk/b40;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    new-instance v1, Lcom/apk/fg;

    invoke-direct {v1}, Lcom/apk/fg;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->synchronized()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->synchronized()V

    :cond_0
    return-void
.end method

.method public final synchronized()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    :cond_0
    return-void
.end method
