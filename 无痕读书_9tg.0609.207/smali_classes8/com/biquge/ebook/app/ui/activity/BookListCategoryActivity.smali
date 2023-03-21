.class public Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;
.super Lcom/apk/f6;
.source "BookListCategoryActivity.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/bean/NovelCategory;

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090062
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090063
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/biquge/ebook/app/bean/NovelCategory;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "classify"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004c

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->do:Lcom/biquge/ebook/app/bean/NovelCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NovelCategory;->getCId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "hot"

    .line 3
    invoke-static {v0, v2}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "new"

    .line 4
    invoke-static {v0, v2}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "vote"

    .line 5
    invoke-static {v0, v2}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "over"

    .line 6
    invoke-static {v0, v2}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 8
    new-instance v0, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/q0;->for()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "classify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/NovelCategory;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->do:Lcom/biquge/ebook/app/bean/NovelCategory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NovelCategory;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const v1, 0x7f090085

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->mIndicator:Lcom/apk/b40;

    const/16 v1, 0x1e

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    return-void
.end method
