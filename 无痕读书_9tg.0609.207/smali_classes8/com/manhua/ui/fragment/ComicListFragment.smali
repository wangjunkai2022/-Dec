.class public Lcom/manhua/ui/fragment/ComicListFragment;
.super Lcom/apk/g6;
.source "ComicListFragment.java"


# instance fields
.field public do:Lcom/manhua/ui/fragment/ComicListChildFragment;

.field public for:Lcom/manhua/ui/fragment/ComicListChildFragment;

.field public if:Lcom/manhua/ui/fragment/ComicListChildFragment;

.field public mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021d
    .end annotation
.end field

.field public mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090220
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021f
    .end annotation
.end field

.field public new:Lcom/manhua/ui/fragment/ComicListChildFragment;

.field public final try:Lcom/apk/b40$new;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/ComicListFragment$do;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicListFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicListFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->try:Lcom/apk/b40$new;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0076

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "new"

    .line 3
    invoke-static {v1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->j(Ljava/lang/String;)Lcom/manhua/ui/fragment/ComicListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicListFragment;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "hot"

    .line 5
    invoke-static {v1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->j(Ljava/lang/String;)Lcom/manhua/ui/fragment/ComicListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicListFragment;->if:Lcom/manhua/ui/fragment/ComicListChildFragment;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "collect"

    .line 7
    invoke-static {v1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->j(Ljava/lang/String;)Lcom/manhua/ui/fragment/ComicListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicListFragment;->for:Lcom/manhua/ui/fragment/ComicListChildFragment;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "commend"

    .line 9
    invoke-static {v1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->j(Ljava/lang/String;)Lcom/manhua/ui/fragment/ComicListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicListFragment;->new:Lcom/manhua/ui/fragment/ComicListChildFragment;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 12
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/q0;->new()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 4
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicListFragment;->try:Lcom/apk/b40$new;

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    .line 5
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v3, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    sget-object v5, Lcom/apk/q0;->goto:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0, v2}, Lcom/apk/ze;->v(Landroid/content/Context;Lcom/apk/b40;)V

    .line 7
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0, v2}, Lcom/apk/ze;->v(Landroid/content/Context;Lcom/apk/b40;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

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

    new-instance v3, Lcom/apk/r10;

    invoke-direct {v3, p0}, Lcom/apk/r10;-><init>(Lcom/manhua/ui/fragment/ComicListFragment;)V

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

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicListFragment;->synchronized(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicListFragment;->synchronized(Z)V

    return-void
.end method

.method public synchronized(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    .line 2
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

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->new:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0, p1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->for:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0, p1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->if:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0, p1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListFragment;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->setUserVisibleHint(Z)V

    :cond_4
    :goto_0
    return-void
.end method
