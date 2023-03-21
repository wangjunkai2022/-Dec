.class public Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;
.super Lcom/apk/g6;
.source "MainStoreFragment.java"


# instance fields
.field public do:Lcom/apk/e40;

.field public for:Lcom/apk/xp0;

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field public searchView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090515
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 5
    iput-boolean p1, v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->public:Z

    .line 6
    invoke-virtual {v1, p1}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->m(Z)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v2, v1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 9
    iput-boolean p1, v1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->public:Z

    .line 10
    invoke-virtual {v1, p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->l(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00c1

    return v0
.end method

.method public initData()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/apk/hf;->for:Lcom/apk/hf;

    invoke-super/range {p0 .. p0}, Lcom/apk/g6;->initData()V

    const-string v2, "SP_BOOK_CITY_CURRENT_POSITION_KEY"

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v2

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    .line 5
    iget-object v5, v5, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 6
    sget-object v6, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v8, 0x1

    const-string v9, "SP_STORE_TAB_MODEL_GUIDE_KEY"

    const/4 v10, 0x2

    const-string v11, "/fq"

    const v12, 0x7f1001db

    const v13, 0x7f1001e3

    const v14, 0x7f1001dd

    const-string v15, "ver9/base"

    const-string v7, "/"

    const/4 v3, 0x0

    if-eq v5, v6, :cond_5

    if-ne v5, v1, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-static {v14}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1000cf

    .line 8
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1000ce

    .line 9
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v13}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v12}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/scmh_jx.html"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 14
    :goto_0
    invoke-static {v8, v6, v12}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->i(ZLjava/lang/String;Z)Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    if-ne v2, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 16
    :goto_1
    invoke-static {v8, v3, v6}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->i(ZLjava/lang/String;Z)Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    move-result-object v6

    .line 17
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    if-ne v2, v10, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v10, 0x0

    .line 19
    invoke-static {v10, v3, v6}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->i(ZLjava/lang/String;Z)Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    move-result-object v3

    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    const v3, 0x7f10026a

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/x10;->i(Ljava/lang/String;)Lcom/apk/x10;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    new-instance v3, Lcom/manhua/ui/fragment/ComicListFragment;

    invoke-direct {v3}, Lcom/manhua/ui/fragment/ComicListFragment;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v1, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v5, v1, :cond_a

    const v1, 0x7f10013b

    .line 24
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/scxs_jx2.html"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 27
    :goto_3
    invoke-static {v8, v3, v5}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->h(ZLjava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v9, v8}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_9

    .line 29
    :cond_5
    :goto_4
    invoke-static {v14}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, 0x7f10022c

    .line 30
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, 0x7f10022b

    .line 31
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v13}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v12}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v6, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    .line 35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/scxs_jx.html"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v2, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 36
    :goto_5
    invoke-static {v8, v11, v12}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->h(ZLjava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v6, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    if-ne v2, v8, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    .line 38
    :goto_6
    invoke-static {v8, v3, v11}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->h(ZLjava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    move-result-object v11

    .line 39
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v6, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    if-ne v2, v10, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x0

    .line 41
    invoke-static {v11, v3, v10}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->h(ZLjava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    move-result-object v10

    .line 42
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v6, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v10

    invoke-static {v3, v11, v10}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->synchronized(Ljava/lang/String;IZ)Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    new-instance v6, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;

    invoke-direct {v6}, Lcom/biquge/ebook/app/ui/fragment/BookListFragment;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v5, v1, :cond_a

    const v1, 0x7f1000f5

    .line 45
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/scmh_jx2.html"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    if-ne v2, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    .line 48
    :goto_8
    invoke-static {v8, v3, v5}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->i(ZLjava/lang/String;Z)Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v9, v8}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v1

    :goto_9
    move v10, v1

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    .line 50
    :goto_a
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 51
    iget-object v1, v1, Lcom/apk/continue;->catch:Ljava/util/List;

    if-eqz v1, :cond_c

    const/4 v3, 0x0

    .line 52
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 53
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    if-eqz v5, :cond_b

    .line 54
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v6, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    .line 56
    invoke-static {v7, v5, v9, v9, v9}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    move-result-object v5

    .line 57
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 58
    :cond_c
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v1, :cond_f

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 62
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "movie"

    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "SOURCE_TYPE_KEY"

    if-eqz v6, :cond_e

    .line 64
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    .line 66
    new-instance v6, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {v6}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;-><init>()V

    .line 67
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 68
    invoke-virtual {v9, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    const-string v6, "tingshu"

    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 72
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    .line 74
    new-instance v6, Lcom/expand/listen/fragment/ListenRankFragment;

    invoke-direct {v6}, Lcom/expand/listen/fragment/ListenRankFragment;-><init>()V

    .line 75
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 76
    invoke-virtual {v9, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 79
    :cond_f
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 80
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/apk/fg;

    invoke-direct {v3, v8}, Lcom/apk/fg;-><init>(Z)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v3, Lcom/apk/nz;

    invoke-virtual/range {p0 .. p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    const/4 v6, 0x0

    .line 82
    invoke-direct {v3, v5, v4, v6}, Lcom/apk/nz;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 83
    invoke-virtual {v1, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 84
    new-instance v1, Lcom/apk/e40;

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v5, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v3, v5}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->do:Lcom/apk/e40;

    if-eqz v2, :cond_10

    .line 85
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    .line 86
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v1, v2}, Lcom/apk/ze;->a0(Landroidx/viewpager/widget/ViewPager;I)V

    .line 87
    :cond_10
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->do:Lcom/apk/e40;

    new-instance v2, Lcom/apk/y30;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v5, v0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->if:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    const-string v1, "SP_STORE_GUIDE_KEY"

    .line 88
    invoke-static {v1, v8}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v10, :cond_12

    const/high16 v2, 0x41900000    # 18.0f

    .line 89
    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    .line 90
    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    const/4 v5, 0x0

    .line 91
    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 92
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 93
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int v7, v7, v2

    add-int/2addr v7, v3

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_11
    const/high16 v2, 0x430c0000    # 140.0f

    .line 94
    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    sub-int v3, v5, v2

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    :goto_e
    if-nez v1, :cond_13

    if-eqz v10, :cond_18

    .line 95
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    .line 96
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 97
    sget-object v4, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 98
    iput-object v4, v2, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 99
    new-instance v4, Lcom/apk/zb;

    invoke-direct {v4, v0}, Lcom/apk/zb;-><init>(Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;)V

    .line 100
    iput-object v4, v2, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 101
    new-instance v4, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    invoke-direct {v4, v5, v1, v10, v3}, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;-><init>(Landroid/content/Context;ZZI)V

    .line 103
    instance-of v1, v4, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_14

    .line 104
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 105
    iput-boolean v1, v2, Lcom/apk/lv;->continue:Z

    goto :goto_f

    .line 106
    :cond_14
    instance-of v1, v4, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_15

    .line 107
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 108
    iput-boolean v1, v2, Lcom/apk/lv;->continue:Z

    goto :goto_f

    .line 109
    :cond_15
    instance-of v1, v4, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_16

    .line 110
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 111
    iput-boolean v1, v2, Lcom/apk/lv;->continue:Z

    goto :goto_f

    .line 112
    :cond_16
    instance-of v1, v4, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_17

    .line 113
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 114
    iput-boolean v1, v2, Lcom/apk/lv;->continue:Z

    goto :goto_f

    .line 115
    :cond_17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 116
    iput-boolean v1, v2, Lcom/apk/lv;->continue:Z

    .line 117
    :goto_f
    iput-object v2, v4, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 118
    invoke-virtual {v4}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_18
    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 3
    new-instance v0, Lcom/apk/g40;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    sget-object v2, Lcom/apk/h40$do;->for:Lcom/apk/h40$do;

    const v3, 0x7f08022d

    invoke-direct {v0, v1, v3, v2}, Lcom/apk/g40;-><init>(Landroid/content/Context;ILcom/apk/h40$do;)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setScrollBar(Lcom/apk/h40;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/apk/i40;

    invoke-direct {v1}, Lcom/apk/i40;-><init>()V

    const v2, 0x7f060093

    .line 6
    invoke-virtual {v1, v2, v2}, Lcom/apk/i40;->for(II)Lcom/apk/i40;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41800000    # 16.0f

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/apk/i40;->new(FF)Lcom/apk/i40;

    .line 8
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/apk/b40$try;)V

    const-string v0, "SP_STORE_SEARCH_SHOW_RED_KEY"

    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/apk/xp0;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->for:Lcom/apk/xp0;

    .line 11
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->searchView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    const/high16 v2, 0x40400000    # 3.0f

    .line 12
    invoke-static {v2}, Lcom/apk/eg;->break(F)F

    move-result v3

    invoke-static {v2}, Lcom/apk/eg;->break(F)F

    move-result v2

    check-cast v0, Lcom/apk/xp0;

    invoke-virtual {v0, v3, v2, v1}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    const/4 v1, -0x1

    .line 13
    check-cast v0, Lcom/apk/xp0;

    invoke-virtual {v0, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    :cond_0
    return-void
.end method

.method public menuClick()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090515
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 2
    iget-object v2, v2, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 3
    sget-object v3, Lcom/apk/hf;->for:Lcom/apk/hf;

    const/4 v4, 0x5

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v3, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v2, v3, :cond_2

    .line 6
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ge v2, v4, :cond_3

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->for:Lcom/apk/xp0;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 10
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_STORE_SEARCH_SHOW_RED_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    const-string v1, "REFRESH_BOOKSTORE_RED_TAG_KEY"

    .line 11
    invoke-static {v1, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->a(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/k6;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->a(Z)V

    return-void
.end method

.method public synchronized(Lcom/apk/hf;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 3
    sget-object v1, Lcom/apk/hf;->for:Lcom/apk/hf;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->do:Lcom/apk/e40;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->do:Lcom/apk/e40;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/apk/e40;->if(IZ)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->do:Lcom/apk/e40;

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->do:Lcom/apk/e40;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/apk/e40;->if(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
