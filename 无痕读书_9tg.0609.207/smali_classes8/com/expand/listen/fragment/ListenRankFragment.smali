.class public Lcom/expand/listen/fragment/ListenRankFragment;
.super Lcom/apk/g6;
.source "ListenRankFragment.java"


# instance fields
.field public do:Lcom/expand/listen/fragment/ListenRankChildFragment;

.field public for:Lcom/expand/listen/fragment/ListenRankChildFragment;

.field public if:Lcom/expand/listen/fragment/ListenRankChildFragment;

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090235
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090236
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public time_choose:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09055c
    .end annotation
.end field

.field public final try:Lcom/apk/nt$do;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/expand/listen/fragment/ListenRankFragment$do;

    invoke-direct {v0, p0}, Lcom/expand/listen/fragment/ListenRankFragment$do;-><init>(Lcom/expand/listen/fragment/ListenRankFragment;)V

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->try:Lcom/apk/nt$do;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00bd

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->new:Ljava/lang/String;

    const-string v1, "week"

    invoke-static {v1, v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/expand/listen/fragment/ListenRankChildFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 2
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->new:Ljava/lang/String;

    const-string v1, "month"

    invoke-static {v1, v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/expand/listen/fragment/ListenRankChildFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->if:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 3
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->new:Ljava/lang/String;

    const-string v1, "total"

    invoke-static {v1, v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/expand/listen/fragment/ListenRankChildFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->for:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment;->if:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment;->for:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/expand/listen/fragment/ListenRankFragment;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/expand/listen/fragment/ListenRankFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 10
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/apk/q0;->case:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 11
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->time_choose:Landroid/widget/TextView;

    sget-object v1, Lcom/apk/q0;->goto:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment;->mIndicator:Lcom/apk/b40;

    invoke-static {v0, v1}, Lcom/apk/ze;->v(Landroid/content/Context;Lcom/apk/b40;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SOURCE_TYPE_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment;->new:Ljava/lang/String;

    :cond_0
    return-void
.end method
