.class public Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;
.super Lcom/apk/f6;
.source "RankListWeekActivity.java"


# instance fields
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

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "category"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004c

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "week"

    .line 4
    invoke-static {v0, v1, v3}, Lcom/biquge/ebook/app/ui/fragment/RankBookFragment;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/RankBookFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "month"

    .line 5
    invoke-static {v0, v1, v3}, Lcom/biquge/ebook/app/ui/fragment/RankBookFragment;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/RankBookFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "total"

    .line 6
    invoke-static {v0, v1, v3}, Lcom/biquge/ebook/app/ui/fragment/RankBookFragment;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/RankBookFragment;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 8
    new-instance v0, Lcom/apk/e40;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, v1, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    new-instance v1, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/q0;->try()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090085

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;->mIndicator:Lcom/apk/b40;

    const/16 v1, 0x32

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method
