.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment;
.super Lcom/apk/g6;
.source "ComicMainCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/fragment/ComicMainCategoryFragment$break;
    }
.end annotation


# static fields
.field public static final while:[Ljava/lang/String;


# instance fields
.field public break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

.field public case:Ljava/lang/String;

.field public catch:Lcom/manhua/adapter/ComicRankListAdapter;

.field public categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021a
    .end annotation
.end field

.field public class:Lorg/json/JSONObject;

.field public const:Z

.field public dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public final do:[Ljava/lang/String;

.field public else:Ljava/lang/String;

.field public final final:Lcom/apk/r5;

.field public for:I

.field public goto:Ljava/lang/String;

.field public if:Lcom/apk/z2;

.field public mAreaIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027b
    .end annotation
.end field

.field public mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012d
    .end annotation
.end field

.field public new:I

.field public parentCategoryLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090408
    .end annotation
.end field

.field public parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090409
    .end annotation
.end field

.field public ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public final super:Lcom/apk/b40$new;

.field public this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

.field public final throw:Lcom/apk/nt$do;

.field public time_choose:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09055c
    .end annotation
.end field

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "week"

    const-string v1, "month"

    const-string v2, "total"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->while:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/q0;->try()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->do:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    const-string v0, "week"

    .line 4
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->case:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->final:Lcom/apk/r5;

    .line 6
    new-instance v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->super:Lcom/apk/b40$new;

    .line 7
    new-instance v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$this;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$this;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->throw:Lcom/apk/nt$do;

    return-void
.end method

.method public static synthetic a(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->n(Z)V

    return-void
.end method

.method public static f(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;ZLjava/util/List;ZI)V
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static h(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    iget v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->for:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->if:Lcom/apk/z2;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->else:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->case:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->goto:Ljava/lang/String;

    iget v4, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/apk/w;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->if:Lcom/apk/z2;

    iget p0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static synthetic synchronized(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->l(I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00c0

    return v0
.end method

.method public final i(Ljava/lang/String;I)Lcom/apk/ot;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/ot;

    invoke-direct {v0}, Lcom/apk/ot;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/apk/ot;->if:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v1, 0x7f060064

    .line 4
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    .line 5
    invoke-static {p1, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 6
    iput p1, v0, Lcom/apk/ot;->for:I

    .line 7
    iget p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->new:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, v0, Lcom/apk/ot;->new:Z

    return-object v0
.end method

.method public initData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->final:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->if:Lcom/apk/z2;

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/apk/j10;

    invoke-direct {v1, p0}, Lcom/apk/j10;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->k()V

    return-void
.end method

.method public initView()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 4
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->class:Lorg/json/JSONObject;

    .line 5
    iput-boolean v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->const:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f100261

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "all"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f100269

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hot"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f100265

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "over"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f10026f

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "commend"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f10026d

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "new"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f100267

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vote"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v3, Lcom/biquge/ebook/app/bean/RankListBean;

    const v4, 0x7f100262

    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "collect"

    invoke-direct {v3, v5, v4}, Lcom/biquge/ebook/app/bean/RankListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {v0, v2}, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 19
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    new-instance v2, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$do;

    invoke-direct {v2, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 21
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 22
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 24
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 25
    new-instance v2, Lcom/manhua/adapter/ComicParentCategoryAdapter;

    invoke-direct {v2}, Lcom/manhua/adapter/ComicParentCategoryAdapter;-><init>()V

    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    .line 26
    new-instance v3, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$break;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$break;-><init>(Lcom/manhua/adapter/ComicParentCategoryAdapter;Lcom/manhua/ui/fragment/ComicMainCategoryFragment$do;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 27
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    new-instance v2, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;

    invoke-direct {v2, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 31
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->class:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "topweek"

    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    .line 34
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 35
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$for;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$new;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const/high16 v0, 0x42700000    # 60.0f

    .line 38
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    .line 39
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v1

    sget-object v2, Lcom/apk/q0;->break:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v1, v2

    if-le v1, v0, :cond_1

    const/high16 v2, 0x42960000    # 75.0f

    .line 40
    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    if-ge v1, v2, :cond_1

    move v0, v1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 42
    sget-object v1, Lcom/apk/q0;->this:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->else:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v3, Lcom/apk/q0;->goto:[Ljava/lang/String;

    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->super:Lcom/apk/b40$new;

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->m(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 44
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mAreaIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 45
    sget-object v1, Lcom/apk/q0;->catch:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->goto:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mAreaIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v2, Lcom/apk/q0;->break:[Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->super:Lcom/apk/b40$new;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->m(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 47
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public synthetic j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->l(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->if:Lcom/apk/z2;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, v1}, Lcom/apk/z2;->while(ZZ)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final l(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->k()V

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->for:I

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 4
    iput p1, v0, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;->do:I

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->new:I

    .line 7
    sget-object v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->while:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->case:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->do:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->n(Z)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_1
    :goto_0
    iput p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->for:I

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 15
    iput p1, v0, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;->do:I

    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final m(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1, p2, p4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    const/16 p4, 0x19

    const/16 v0, 0xe

    invoke-static {p2, p1, p4, v0}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final n(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$else;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$else;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
