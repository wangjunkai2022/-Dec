.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;
.super Lcom/apk/g6;
.source "BookStoreCategoryFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# static fields
.field public static final const:[Ljava/lang/String;


# instance fields
.field public break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;"
        }
    .end annotation
.end field

.field public case:Lcom/apk/v3;

.field public final catch:Lcom/apk/u5;

.field public final class:Lcom/apk/b40$new;

.field public do:[Ljava/lang/String;

.field public else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

.field public for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

.field public goto:I

.field public if:[Ljava/lang/String;

.field public mHeaderTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016c
    .end annotation
.end field

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09043a
    .end annotation
.end field

.field public mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012c
    .end annotation
.end field

.field public new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public this:Z

.field public try:Lcom/shizhefei/view/indicator/ScrollIndicatorView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "hot"

    const-string v1, "new"

    const-string v2, "vote"

    const-string v3, "over"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->const:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->catch:Lcom/apk/u5;

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$case;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$case;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->class:Lcom/apk/b40$new;

    return-void
.end method

.method public static a(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Lcom/apk/pv;->if:Lcom/apk/pv;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->native:Lcom/apk/pv;

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/view/NovelCategoryThemePopupView;

    .line 6
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 7
    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->break:Ljava/util/List;

    new-instance v5, Lcom/apk/hb;

    invoke-direct {v5, p0}, Lcom/apk/hb;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/biquge/ebook/app/ui/view/NovelCategoryThemePopupView;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/apk/g1;)V

    .line 8
    instance-of p0, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p0, :cond_0

    .line 9
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 11
    :cond_0
    instance-of p0, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p0, :cond_1

    .line 12
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 14
    :cond_1
    instance-of p0, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p0, :cond_2

    .line 15
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 16
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 17
    :cond_2
    instance-of p0, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p0, :cond_3

    .line 18
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 20
    :cond_3
    instance-of p0, v1, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz p0, :cond_4

    .line 21
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 22
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    .line 23
    :cond_4
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 24
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public static f(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->if:[Ljava/lang/String;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 2
    sget-object v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->const:[Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->try:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    invoke-static {v0, v0, v1}, Lcom/apk/w;->for(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->case:Lcom/apk/v3;

    iget p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static h(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/apk/ib;

    invoke-direct {v0, p0}, Lcom/apk/ib;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;ZLjava/util/List;Z)V
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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 4
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 8
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0031

    return v0
.end method

.method public final i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V
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

    const/16 p4, 0x1e

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

.method public initData()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->catch:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->case:Lcom/apk/v3;

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->public()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->this:Z

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 6
    :goto_0
    new-instance v3, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    const-string v5, "categorylist"

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const v1, 0x7f0c0066

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->case:Lcom/apk/v3;

    invoke-virtual {v0}, Lcom/apk/v3;->return()V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$new;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v1}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$do;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$if;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    invoke-virtual {v1, v2}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;

    invoke-direct {v2, p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public menuClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09016c
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->if(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    const-string v1, "\u7cbe\u9009|\u5206\u7c7b\u9875\u9762|"

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr p3, v0

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
