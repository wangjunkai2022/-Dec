.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;
.super Lcom/apk/g6;
.source "BookMainCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;
    }
.end annotation


# static fields
.field public static final throw:[Ljava/lang/String;


# instance fields
.field public break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

.field public case:Ljava/lang/String;

.field public catch:Lorg/json/JSONObject;

.field public categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021a
    .end annotation
.end field

.field public class:Z

.field public final const:Lcom/apk/u5;

.field public dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public final do:[Ljava/lang/String;

.field public else:Ljava/lang/String;

.field public final final:Lcom/apk/b40$new;

.field public for:I

.field public goto:Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

.field public if:Lcom/apk/v3;

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

.field public super:Lcom/apk/nt$do;

.field public this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

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

    sput-object v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->throw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/q0;->try()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->do:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    const-string v0, "week"

    .line 4
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->case:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->const:Lcom/apk/u5;

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$goto;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$goto;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->final:Lcom/apk/b40$new;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$this;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$this;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->super:Lcom/apk/nt$do;

    return-void
.end method

.method public static synthetic a(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->m(Z)V

    return-void
.end method

.method public static f(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;ZLjava/util/List;Z)V
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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 4
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 8
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static h(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->for:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->else:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->case:Ljava/lang/String;

    iget v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    invoke-static {v1, v0, v2, v3}, Lcom/apk/w;->switch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    iget p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
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

.method public static synthetic synchronized(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->l(I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b0

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
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->new:I

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
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->const:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/apk/ga;

    invoke-direct {v1, p0}, Lcom/apk/ga;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->k()V

    return-void
.end method

.method public initView()V
    .locals 6

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
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->catch:Lorg/json/JSONObject;

    .line 5
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->class:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 19
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$do;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    new-instance v0, Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->goto:Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

    .line 25
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->goto:Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$if;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 30
    new-instance v0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->catch:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const-string v4, "topweek"

    .line 31
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 32
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 33
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$do;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$new;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const/high16 v0, 0x42700000    # 60.0f

    .line 37
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    .line 38
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v1

    sget-object v2, Lcom/apk/q0;->break:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v1, v2

    if-le v1, v0, :cond_1

    const/high16 v2, 0x42960000    # 75.0f

    .line 39
    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    if-ge v1, v2, :cond_1

    move v0, v1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 41
    sget-object v1, Lcom/apk/q0;->this:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->else:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v2, Lcom/apk/q0;->goto:[Ljava/lang/String;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->final:Lcom/apk/b40$new;

    if-eqz v2, :cond_2

    .line 43
    array-length v4, v2

    if-lez v4, :cond_2

    .line 44
    new-instance v4, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 45
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const/16 v2, 0x19

    const/16 v4, 0xe

    invoke-static {v0, v1, v2, v4}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 46
    invoke-virtual {v1, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public synthetic j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->l(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->goto:Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    invoke-virtual {v0}, Lcom/apk/v3;->return()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

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
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->k()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->new:I

    .line 3
    sget-object v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->throw:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->case:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->do:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->m(Z)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->for:I

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 11
    iput p1, v0, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;->do:I

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$else;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$else;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public menuClick()V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09055c
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/apk/nt;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f100279

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->i(Ljava/lang/String;I)Lcom/apk/ot;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f100276

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->i(Ljava/lang/String;I)Lcom/apk/ot;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f100260

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->i(Ljava/lang/String;I)Lcom/apk/ot;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->super:Lcom/apk/nt$do;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/apk/nt;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/apk/nt$do;ZZ)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 7
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/apk/nt;->if(I)V

    const v0, 0x800005

    .line 8
    invoke-virtual {v6, v0}, Lcom/apk/nt;->do(I)V

    .line 9
    iput-boolean v7, v6, Lcom/apk/nt;->for:Z

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lcom/apk/nt;->for(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
