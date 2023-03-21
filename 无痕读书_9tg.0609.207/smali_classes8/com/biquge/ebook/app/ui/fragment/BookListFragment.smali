.class public Lcom/biquge/ebook/app/ui/fragment/BookListFragment;
.super Lcom/apk/g6;
.source "BookListFragment.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

.field public for:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

.field public if:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021d
    .end annotation
.end field

.field public mSexIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021e
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021f
    .end annotation
.end field

.field public new:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

.field public final try:Lcom/apk/b40$new;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookListFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->try:Lcom/apk/b40$new;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00aa

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mSexIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->try:Lcom/apk/b40$new;

    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mSexIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v2, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    sget-object v4, Lcom/apk/q0;->goto:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "new"

    .line 5
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->j(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "hot"

    .line 7
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->j(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "collect"

    .line 9
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->j(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "commend"

    .line 11
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->j(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->new:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 14
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/q0;->new()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 15
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mSexIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mSexIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0, v1}, Lcom/apk/ze;->v(Landroid/content/Context;Lcom/apk/b40;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mIndicator:Lcom/apk/b40;

    invoke-static {v0, v1}, Lcom/apk/ze;->v(Landroid/content/Context;Lcom/apk/b40;)V

    return-void
.end method

.method public menuClick()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090224
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f10013e

    .line 1
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10014e

    .line 2
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    .line 4
    new-instance v2, Lcom/apk/zu$do;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/apk/wa;

    invoke-direct {v3, p0}, Lcom/apk/wa;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListFragment;)V

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v4, v1, v0, v3}, Lcom/apk/zu$do;->for(Ljava/lang/CharSequence;[Ljava/lang/String;[ILcom/apk/xv;)Lcom/lxj/xpopup/impl/BottomListPopupView;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080133
        0x7f080134
    .end array-data
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->new:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->setUserVisibleHint(Z)V

    :cond_4
    :goto_0
    return-void
.end method
