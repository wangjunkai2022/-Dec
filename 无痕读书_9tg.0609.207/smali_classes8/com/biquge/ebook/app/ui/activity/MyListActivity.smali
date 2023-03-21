.class public Lcom/biquge/ebook/app/ui/activity/MyListActivity;
.super Lcom/apk/f6;
.source "MyListActivity.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

.field public for:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

.field public if:Lcom/apk/b40;

.field public mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d0
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cc
    .end annotation
.end field

.field public new:Lcom/manhua/ui/fragment/ComicMyListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/apk/hf;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/MyListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appModule"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004a

    return v0
.end method

.method public initData()V
    .locals 8

    .line 1
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "appModule"

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/apk/hf;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v4

    .line 6
    iget-object v4, v4, Lcom/apk/continue;->while:Lcom/apk/hf;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v1, :cond_1

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    .line 8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v4, v0, :cond_2

    .line 9
    new-instance v0, Lcom/manhua/ui/fragment/ComicMyListFragment;

    invoke-direct {v0}, Lcom/manhua/ui/fragment/ComicMyListFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->new:Lcom/manhua/ui/fragment/ComicMyListFragment;

    .line 10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    sget-object v7, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-ne v4, v7, :cond_4

    .line 12
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    .line 13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/manhua/ui/fragment/ComicMyListFragment;

    invoke-direct {v1}, Lcom/manhua/ui/fragment/ComicMyListFragment;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->new:Lcom/manhua/ui/fragment/ComicMyListFragment;

    .line 15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    if-ne v2, v0, :cond_6

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v5

    goto :goto_2

    .line 17
    :cond_4
    sget-object v0, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v4, v0, :cond_6

    .line 18
    new-instance v0, Lcom/manhua/ui/fragment/ComicMyListFragment;

    invoke-direct {v0}, Lcom/manhua/ui/fragment/ComicMyListFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->new:Lcom/manhua/ui/fragment/ComicMyListFragment;

    .line 19
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    .line 21
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    if-ne v2, v1, :cond_6

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v5

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x0

    .line 23
    :goto_2
    new-instance v0, Lcom/apk/e40;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->if:Lcom/apk/b40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v0, v1, v2}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 24
    new-instance v1, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 25
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const v2, 0x7f100219

    invoke-virtual {v1, v0, v2, v6}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 27
    invoke-virtual {v0, v5, v6}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {p0, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/HeaderView;->getTitleIndicatorView()Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getIndicator()Lcom/apk/b40;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->if:Lcom/apk/b40;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x7d1

    if-ne p1, p2, :cond_2

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    if-eqz p1, :cond_5

    .line 3
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->synchronized()V

    .line 5
    :cond_0
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->synchronized()V

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->synchronized()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x7d2

    if-ne p1, p2, :cond_5

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->new:Lcom/manhua/ui/fragment/ComicMyListFragment;

    if-eqz p1, :cond_5

    .line 10
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicMyListFragment;->do:Lcom/manhua/ui/fragment/ComicMyListChildFragment;

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/manhua/ui/fragment/ComicMyListChildFragment;->synchronized()V

    .line 12
    :cond_3
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicMyListFragment;->if:Lcom/manhua/ui/fragment/ComicMyListChildFragment;

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p2}, Lcom/manhua/ui/fragment/ComicMyListChildFragment;->synchronized()V

    .line 14
    :cond_4
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicMyListFragment;->for:Lcom/manhua/ui/fragment/ComicMyListChildFragment;

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/manhua/ui/fragment/ComicMyListChildFragment;->synchronized()V

    :cond_5
    :goto_0
    return-void
.end method
