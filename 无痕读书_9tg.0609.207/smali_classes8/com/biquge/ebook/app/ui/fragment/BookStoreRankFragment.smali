.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;
.super Lcom/apk/g6;
.source "BookStoreRankFragment.java"


# instance fields
.field public do:Z

.field public for:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

.field public if:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090211
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090212
    .end annotation
.end field

.field public new:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

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
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->try:Lcom/apk/nt$do;

    return-void
.end method

.method public static synchronized(Ljava/lang/String;IZ)Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "rankTypeName"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "tabIndex"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "isMan"

    .line 6
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ab

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "rankTypeName"

    .line 2
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tabIndex"

    .line 3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "isMan"

    .line 4
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->time_choose:Landroid/widget/TextView;

    sget-object v5, Lcom/apk/q0;->goto:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    xor-int/2addr v1, v6

    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    const-string v1, "week"

    invoke-static {v1, v3, v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->j(Ljava/lang/String;Ljava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 7
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    const-string v1, "month"

    invoke-static {v1, v3, v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->j(Ljava/lang/String;Ljava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 8
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    const-string v1, "total"

    invoke-static {v1, v3, v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->j(Ljava/lang/String;Ljava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->new:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    iget-boolean v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    .line 10
    iput-boolean v3, v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 12
    iput-boolean v3, v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    .line 13
    iput-boolean v3, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->new:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    new-instance v1, Lcom/apk/e40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->mIndicator:Lcom/apk/b40;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v3, v5}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 20
    new-instance v3, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-static {}, Lcom/apk/q0;->try()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v1, v4, v2}, Lcom/apk/e40;->if(IZ)V

    :cond_1
    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->mIndicator:Lcom/apk/b40;

    invoke-static {v0, v1}, Lcom/apk/ze;->v(Landroid/content/Context;Lcom/apk/b40;)V

    return-void
.end method
