.class public Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;
.super Lcom/apk/f6;
.source "BookSearchActivity.java"


# instance fields
.field public do:Lcom/apk/xp0;

.field public for:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

.field public if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

.field public mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008c
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008d
    .end annotation
.end field


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

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "selectPlatform"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static j(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v2, "createSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    check-cast p1, Ljava/io/Serializable;

    const-string v1, "SEARCH_SOURCE_BOOKLIST_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static k(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    const-string v2, "createSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicBean;

    .line 6
    new-instance v3, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v3}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setLastChapter(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getLastChapterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setFirstChapterId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getLastTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setLastTime(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setUpdateTime(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setAuthor(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/Book;->setDesc(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/Book;->setCName(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "SEARCH_SOURCE_BOOKLIST_KEY"

    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 20
    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0050

    return v0
.end method

.method public initData()V
    .locals 11

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1002d9

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1002d6

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "createSource"

    .line 6
    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 7
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/apk/hf;

    .line 9
    invoke-virtual {v6, v5, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v5, "SEARCH_SOURCE_BOOKLIST_KEY"

    .line 10
    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 12
    iget-object v8, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    if-eqz v8, :cond_0

    if-eqz v5, :cond_1

    .line 13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/Book;

    .line 15
    iget-object v9, v8, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->catch:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_0
    throw v7

    .line 17
    :cond_1
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    move-object v7, v6

    :cond_2
    const-string v5, "selectPlatform"

    .line 19
    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/apk/hf;

    .line 22
    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v4, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    invoke-direct {v4}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;-><init>()V

    iput-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->for:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SP_IS_VISIBLE_SEARCH_TAG_VIEW_KEY"

    .line 26
    invoke-static {v4, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    invoke-virtual {p0, v3}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->l(Z)V

    :cond_3
    if-eqz v7, :cond_4

    .line 28
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v3, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    :cond_4
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v4, Lcom/apk/nz;

    .line 30
    invoke-direct {v4, p0, v0, v2}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v3, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 32
    new-instance v2, Lcom/apk/e40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v2, v3, v4}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 33
    new-instance v3, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 35
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;)V

    .line 36
    iput-object v0, v2, Lcom/apk/e40;->for:Lcom/apk/e40$new;

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v1, 0x1e

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->do:Lcom/apk/xp0;

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lcom/apk/xp0;

    invoke-direct {p1, p0}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->do:Lcom/apk/xp0;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1, v0}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    const/high16 v0, 0x41800000    # 16.0f

    .line 4
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    check-cast p1, Lcom/apk/xp0;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    const/4 v0, -0x1

    .line 5
    check-cast p1, Lcom/apk/xp0;

    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->do:Lcom/apk/xp0;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 8
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_IS_VISIBLE_SEARCH_TAG_VIEW_KEY"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->for:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

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

    const-string v0, "EVENT_CHANGE_WEB_SEARCH_KEY"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->mIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->p(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->p(Z)V

    :cond_0
    return-void
.end method
