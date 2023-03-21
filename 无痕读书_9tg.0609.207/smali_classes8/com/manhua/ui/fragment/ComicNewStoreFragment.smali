.class public Lcom/manhua/ui/fragment/ComicNewStoreFragment;
.super Lcom/apk/g6;
.source "ComicNewStoreFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;
    }
.end annotation


# instance fields
.field public break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ComicStoreBean$TopTabsBean;",
            ">;"
        }
    .end annotation
.end field

.field public case:Ljava/lang/String;

.field public catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public class:Ljava/lang/String;

.field public const:I

.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public else:Z

.field public final:I

.field public for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

.field public goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

.field public if:Lcom/manhua/adapter/ComicNewStoreAdapter;

.field public final import:Lcom/apk/bg;

.field public loadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09043a
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023f
    .end annotation
.end field

.field public mTopView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090390
    .end annotation
.end field

.field public final native:Lcom/apk/r5;

.field public new:Z

.field public ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public public:Z

.field public return:Lcom/youth/banner/Banner;

.field public final static:Lcom/apk/cc0;

.field public super:I

.field public switch:I

.field public this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public throws:Z

.field public try:Z

.field public while:Lcom/apk/z2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->import:Lcom/apk/bg;

    .line 4
    new-instance v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->native:Lcom/apk/r5;

    .line 5
    new-instance v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->static:Lcom/apk/cc0;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->switch:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throws:Z

    return-void
.end method

.method public static synthetic a(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->k()V

    return-void
.end method

.method public static synthetic f(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->n(Z)V

    return-void
.end method

.method public static h(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Ljava/util/List;Z)V
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 4
    iget p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->const:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->const:I

    goto :goto_1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static i(ZLjava/lang/String;Z)Lcom/manhua/ui/fragment/ComicNewStoreFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {v0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isMan"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "sourceUrl"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isShowBangdanAd"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synchronized(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->this:Ljava/util/List;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->this:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v1, 0x7f09050f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/youth/banner/Banner;->goto:I

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->for(I)Lcom/youth/banner/Banner;

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    .line 9
    iput-boolean v1, v0, Lcom/youth/banner/Banner;->catch:Z

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    const/16 v1, 0x1388

    .line 11
    iput v1, v0, Lcom/youth/banner/Banner;->this:I

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->static:Lcom/apk/cc0;

    .line 13
    iput-object v1, v0, Lcom/youth/banner/Banner;->c:Lcom/apk/cc0;

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    .line 16
    iget-object v1, v1, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    .line 17
    iget-object v1, v1, Lcom/apk/bc0;->do:Lcom/apk/bc0$if;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    invoke-virtual {v0}, Lcom/youth/banner/Banner;->else()V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->this:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->m(Ljava/util/List;)V

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_2

    .line 21
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    .line 23
    :cond_3
    throw v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00c5

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/j6;->getWidthDpi()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->continue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 5
    iget v0, v0, Lcom/apk/continue;->throw:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_1
    new-instance v2, Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    .line 7
    iget-boolean v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    .line 8
    iput-boolean v0, v2, Lcom/manhua/adapter/ComicNewStoreAdapter;->for:Z

    .line 9
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 10
    new-instance v2, Lcom/apk/bh;

    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-direct {v2, v4, v3}, Lcom/apk/bh;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 11
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 15
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->native:Lcom/apk/r5;

    invoke-direct {v0, v2, v3}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->while:Lcom/apk/z2;

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const v2, 0x7f0c00d1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 17
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->k()V

    .line 21
    :try_start_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->import()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->else:Z

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 23
    invoke-virtual {v0, v1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/apk/strictfp;->setAdWidth(I)V

    .line 25
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-string v2, "bshomelist"

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "isMan"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->try:Z

    const-string v2, "sourceUrl"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->case:Ljava/lang/String;

    const-string v2, "isShowBangdanAd"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->else:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Lcom/apk/s10;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 10
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 11
    new-instance v1, Lcom/apk/s10;

    invoke-direct {v1, p0}, Lcom/apk/s10;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/apk/t10;

    invoke-direct {v1, p0}, Lcom/apk/t10;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mTopView:Landroid/widget/ImageView;

    new-instance v1, Lcom/apk/u10;

    invoke-direct {v1, p0}, Lcom/apk/u10;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 2
    iget-object v2, v2, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_46

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_46

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_46

    .line 6
    iget v8, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->super:I

    if-lez v8, :cond_0

    add-int/lit8 v9, v6, 0x1

    if-ne v9, v8, :cond_0

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->final:I

    .line 8
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;

    if-eqz v8, :cond_44

    .line 9
    sget-object v9, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v2, v9, :cond_1

    .line 10
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->isCartton()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_29

    .line 11
    :cond_1
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getViewType()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getNavIcon()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getMore()Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getMoreFlag()Ljava/lang/String;

    move-result-object v13

    .line 16
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getChangeFlag()Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->isCartton()Z

    move-result v15

    .line 18
    new-instance v5, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v5}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v5, v1}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 20
    invoke-virtual {v5, v9}, Lcom/manhua/data/bean/ComicBean;->setCategoryTitle(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5, v10}, Lcom/manhua/data/bean/ComicBean;->setViewType(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5, v11}, Lcom/manhua/data/bean/ComicBean;->setNavIcon(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, v12}, Lcom/manhua/data/bean/ComicBean;->setMore(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v13}, Lcom/manhua/data/bean/ComicBean;->setMoreFlag(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v14}, Lcom/manhua/data/bean/ComicBean;->setChangeFlag(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, v15}, Lcom/manhua/data/bean/ComicBean;->setCartton(Z)V

    .line 27
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->getBooks()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 29
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 30
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/manhua/data/bean/ComicBean;

    .line 31
    invoke-virtual {v12, v9}, Lcom/manhua/data/bean/ComicBean;->setCategoryTitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ComicStoreBean$ListStoreBean;->isCartton()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/manhua/data/bean/ComicBean;->setCartton(Z)V

    goto :goto_1

    .line 33
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object/from16 v8, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 34
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    move-object/from16 v8, p2

    :cond_4
    :goto_2
    const-string v9, "12c"

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x4

    if-eqz v9, :cond_5

    .line 36
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 37
    invoke-virtual {v1, v11}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 38
    invoke-virtual {v1, v5}, Lcom/manhua/data/bean/ComicBean;->setDatas(Ljava/util/List;)V

    .line 39
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :cond_5
    const-string v9, "1r1r3c"

    .line 40
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    .line 41
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_40

    .line 42
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicBean;

    .line 43
    iget-boolean v14, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-nez v14, :cond_7

    if-gt v9, v1, :cond_6

    goto :goto_4

    .line 44
    :cond_6
    invoke-virtual {v10, v12}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    goto :goto_5

    .line 45
    :cond_7
    :goto_4
    invoke-virtual {v10, v13}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 46
    :goto_5
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v9, v11, :cond_8

    goto/16 :goto_27

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    const-string v9, "1r3c3c"

    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v14, 0x6

    if-eqz v9, :cond_d

    const/4 v1, 0x0

    .line 48
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 49
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 50
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-nez v10, :cond_b

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    const/16 v10, 0x14

    .line 51
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    goto :goto_8

    .line 52
    :cond_b
    :goto_7
    invoke-virtual {v9, v13}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 53
    :goto_8
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v14, :cond_c

    goto/16 :goto_27

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    const-string v9, "1r1r4c"

    .line 54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v15, 0x16

    const/4 v13, 0x5

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    .line 55
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_40

    .line 56
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicBean;

    .line 57
    iget-boolean v11, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-nez v11, :cond_f

    if-eqz v9, :cond_f

    if-ne v9, v1, :cond_e

    goto :goto_a

    .line 58
    :cond_e
    invoke-virtual {v10, v15}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    goto :goto_b

    :cond_f
    :goto_a
    const/16 v11, 0x15

    .line 59
    invoke-virtual {v10, v11}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 60
    :goto_b
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v9, v13, :cond_10

    goto/16 :goto_27

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    const-string v9, "3c3c"

    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v1, 0x0

    .line 62
    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 63
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 64
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_12

    const/4 v10, 0x2

    goto :goto_d

    :cond_12
    const/16 v10, 0x10

    :goto_d
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 65
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v13, :cond_13

    goto/16 :goto_27

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    const-string v9, "3c4c"

    .line 66
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v9, 0x0

    .line 67
    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_40

    .line 68
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicBean;

    if-ge v9, v12, :cond_15

    const/4 v11, 0x1

    goto :goto_f

    :cond_15
    const/4 v11, 0x0

    .line 69
    :goto_f
    iget-boolean v15, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v15, :cond_16

    const/4 v11, 0x2

    goto :goto_10

    :cond_16
    if-eqz v11, :cond_17

    const/16 v11, 0x11

    goto :goto_10

    :cond_17
    const/4 v11, 0x5

    :goto_10
    invoke-virtual {v10, v11}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 70
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v9, v14, :cond_18

    goto/16 :goto_27

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_19
    const-string v1, "1r2c2c"

    .line 71
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 72
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 73
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 74
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_1a

    const/4 v10, 0x2

    goto :goto_12

    :cond_1a
    if-nez v1, :cond_1b

    const/16 v10, 0x12

    goto :goto_12

    :cond_1b
    const/4 v10, 0x6

    :goto_12
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 75
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v11, :cond_1c

    goto/16 :goto_27

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    const-string v1, "1221"

    .line 76
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x7

    if-eqz v1, :cond_1e

    .line 77
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 78
    invoke-virtual {v1, v9}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 79
    invoke-virtual {v1, v5}, Lcom/manhua/data/bean/ComicBean;->setDatas(Ljava/util/List;)V

    .line 80
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :cond_1e
    const-string v1, "5r2c"

    .line 81
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v12, 0x8

    const/16 v15, 0x9

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    .line 82
    :goto_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 83
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 84
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_1f

    const/4 v10, 0x2

    goto :goto_14

    :cond_1f
    const/16 v10, 0x8

    :goto_14
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 85
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v15, :cond_20

    goto/16 :goto_27

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const-string v1, "4c4c"

    .line 86
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    .line 87
    :goto_15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_40

    .line 88
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicBean;

    .line 89
    iget-boolean v11, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v11, :cond_22

    const/4 v11, 0x2

    goto :goto_16

    :cond_22
    const/16 v11, 0x18

    :goto_16
    invoke-virtual {v10, v11}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 90
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v9, :cond_23

    goto/16 :goto_27

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    const-string v1, "3r"

    .line 91
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 92
    :goto_17
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 93
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 94
    invoke-virtual {v9, v15}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 95
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    if-ne v1, v9, :cond_25

    goto/16 :goto_27

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_26
    const-string v1, "6r"

    .line 96
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    .line 97
    :goto_18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 98
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 99
    invoke-virtual {v9, v15}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 100
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v13, :cond_27

    goto/16 :goto_27

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_28
    const-string v1, "2c2c2c"

    .line 101
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    .line 102
    :goto_19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 103
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 104
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_29

    const/4 v10, 0x2

    goto :goto_1a

    :cond_29
    const/16 v10, 0xa

    :goto_1a
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 105
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v13, :cond_2a

    goto/16 :goto_27

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2b
    const-string v1, "2c2c2c_2"

    .line 106
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    .line 107
    :goto_1b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 108
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 109
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_2c

    const/4 v10, 0x2

    goto :goto_1c

    :cond_2c
    const/16 v10, 0xb

    :goto_1c
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 110
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v13, :cond_2d

    goto/16 :goto_27

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2e
    const-string v1, "4c2c2c"

    .line 111
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v16, 0x13

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    .line 112
    :goto_1d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_40

    .line 113
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicBean;

    .line 114
    iget-boolean v12, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v12, :cond_2f

    const/4 v12, 0x2

    goto :goto_1e

    :cond_2f
    if-ge v1, v11, :cond_30

    const/16 v12, 0x13

    goto :goto_1e

    :cond_30
    const/16 v12, 0x19

    :goto_1e
    invoke-virtual {v10, v12}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 115
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v9, :cond_31

    goto/16 :goto_27

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    const-string v1, "4c3r"

    .line 116
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    .line 117
    :goto_1f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 118
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 119
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_33

    const/4 v10, 0x2

    goto :goto_20

    :cond_33
    if-ge v1, v11, :cond_34

    const/16 v10, 0x13

    goto :goto_20

    :cond_34
    const/16 v10, 0x9

    :goto_20
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 120
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v14, :cond_35

    goto/16 :goto_27

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_36
    const-string v1, "4c4c2"

    .line 121
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    .line 122
    :goto_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_40

    .line 123
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicBean;

    .line 124
    iget-boolean v11, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v11, :cond_37

    const/4 v11, 0x2

    goto :goto_22

    :cond_37
    const/16 v11, 0x16

    :goto_22
    invoke-virtual {v10, v11}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 125
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v9, :cond_38

    goto :goto_27

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_39
    const-string v1, "1r4c4c"

    .line 126
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 127
    :goto_23
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 128
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 129
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_3a

    const/4 v10, 0x2

    goto :goto_24

    :cond_3a
    if-nez v1, :cond_3b

    const/16 v10, 0x9

    goto :goto_24

    :cond_3b
    const/4 v10, 0x5

    :goto_24
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 130
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v12, :cond_3c

    goto :goto_27

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3d
    const/4 v1, 0x0

    .line 131
    :goto_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_40

    .line 132
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicBean;

    .line 133
    iget-boolean v10, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    if-eqz v10, :cond_3e

    const/4 v10, 0x2

    goto :goto_26

    :cond_3e
    const/4 v10, 0x3

    :goto_26
    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 134
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v13, :cond_3f

    goto :goto_27

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 135
    :cond_40
    :goto_27
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/16 v5, 0xf

    .line 136
    invoke-virtual {v1, v5}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 137
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->continue()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 139
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 140
    iget v1, v1, Lcom/apk/continue;->throw:I

    if-ge v7, v1, :cond_45

    add-int/lit8 v1, v7, 0x64

    .line 141
    iget-object v5, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz v5, :cond_42

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 142
    iget-object v5, v5, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

    if-eqz v5, :cond_41

    .line 143
    invoke-virtual {v5}, Lcom/apk/gg;->do()V

    .line 144
    iget-object v5, v5, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_28

    :cond_41
    const/4 v5, 0x0

    :goto_28
    if-eqz v5, :cond_43

    .line 145
    :cond_42
    new-instance v5, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v5}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const-string v9, "ad"

    .line 146
    invoke-virtual {v5, v9}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v5, v1}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 148
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_44
    :goto_29
    move-object/from16 v8, p2

    :cond_45
    :goto_2a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_46
    return-object v3
.end method

.method public final k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->while:Lcom/apk/z2;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->case:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->case:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->try:Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ver9/base"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, "/scmh_man.html"

    goto :goto_0

    :cond_1
    const-string v0, "/scmh_lady.html"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->while:Lcom/apk/z2;

    if-eqz v1, :cond_2

    .line 5
    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/e3;

    const-string v4, "SP_HOST_SHUC_MH_KEY"

    invoke-direct {v3, v1, v4}, Lcom/apk/e3;-><init>(Lcom/apk/z2;Ljava/lang/String;)V

    const-wide/32 v4, 0x6ddd00

    invoke-static {v0, v4, v5, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public l(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->public:Z

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicNewStoreAdapter;->for()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicNewStoreAdapter;->if()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final m(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;

    const-string v3, ""

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->getImgurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7
    iget-object p1, p1, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    new-instance v2, Lcom/apk/mg;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/apk/mg;-><init>(Z)V

    invoke-virtual {p1, v2}, Lcom/youth/banner/Banner;->if(Lcom/apk/dc0;)Lcom/youth/banner/Banner;

    .line 10
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    .line 11
    iput-object v1, p1, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p1, Lcom/youth/banner/Banner;->public:I

    .line 13
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    .line 14
    iput-object v0, p1, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    .line 15
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->try()Lcom/youth/banner/Banner;

    return-void
.end method

.method public menuClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090390
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->K(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->n(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final n(Z)V
    .locals 8

    const-wide/16 v0, 0x12c

    const-string v2, "translationX"

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mTopView:Landroid/widget/ImageView;

    new-array v6, v6, [F

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v6, v5

    aput v4, v6, v7

    invoke-static {p1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mTopView:Landroid/widget/ImageView;

    new-array v6, v6, [F

    aput v4, v6, v5

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v6, v7

    invoke-static {p1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 8
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 11
    :goto_0
    iget-boolean p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throws:Z

    xor-int/2addr p1, v7

    iput-boolean p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throws:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->new:Z

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz v0, :cond_1

    .line 5
    iput-boolean p1, v0, Lcom/manhua/adapter/ComicNewStoreAdapter;->for:Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->k()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    :cond_2
    return-void
.end method

.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7f090355

    if-ne p3, v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->j(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    .line 8
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    if-nez p2, :cond_0

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f090353

    if-ne p2, p3, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getMore()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getMoreFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    invoke-static {p1, p2, p3}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "api"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->isCartton()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getItemType()I

    move-result p2

    const/4 v0, 0x2

    if-eq v0, p2, :cond_0

    const/16 v0, 0x15

    if-eq v0, p2, :cond_0

    const/4 v0, 0x3

    if-eq v0, p2, :cond_0

    const/16 v0, 0x14

    if-eq v0, p2, :cond_0

    const/4 v0, 0x5

    if-eq v0, p2, :cond_0

    const/4 v0, 0x6

    if-eq v0, p2, :cond_0

    const/4 v0, 0x7

    if-eq v0, p2, :cond_0

    const/16 v0, 0x8

    if-eq v0, p2, :cond_0

    const/16 v0, 0x9

    if-eq v0, p2, :cond_0

    const/16 v0, 0xa

    if-eq v0, p2, :cond_0

    const/16 v0, 0xb

    if-eq v0, p2, :cond_0

    const/16 v0, 0x10

    if-eq v0, p2, :cond_0

    const/16 v0, 0x11

    if-eq v0, p2, :cond_0

    const/16 v0, 0x12

    if-eq v0, p2, :cond_0

    const/16 v0, 0x13

    if-eq v0, p2, :cond_0

    const/16 v0, 0x16

    if-eq v0, p2, :cond_0

    const/16 v0, 0x18

    if-eq v0, p2, :cond_0

    const/16 v0, 0x19

    if-ne v0, p2, :cond_2

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->isCartton()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    .line 6
    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p3

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/biquge/ebook/app/bean/Book;->setDesc(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->l(Z)V

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
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->l(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/youth/banner/Banner;->case()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/youth/banner/Banner;->else()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->l(Z)V

    return-void
.end method
