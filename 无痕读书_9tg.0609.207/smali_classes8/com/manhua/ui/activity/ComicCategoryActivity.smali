.class public Lcom/manhua/ui/activity/ComicCategoryActivity;
.super Lcom/apk/f6;
.source "ComicCategoryActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# static fields
.field public static final final:I

.field public static super:[Ljava/lang/String;

.field public static throw:[Ljava/lang/String;


# instance fields
.field public break:Z

.field public case:Lcom/manhua/adapter/ComicRankListAdapter;

.field public final catch:Lcom/apk/r5;

.field public final class:Lcom/apk/b40$new;

.field public final const:Lcom/apk/b40$new;

.field public do:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

.field public else:Lcom/apk/z2;

.field public for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCategory;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

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
        value = 0x7f09016d
    .end annotation
.end field

.field public new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public this:Z

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x425c0000    # 55.0f

    .line 1
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    sput v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->final:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    .line 3
    new-instance v0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$case;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->catch:Lcom/apk/r5;

    .line 4
    new-instance v0, Lcom/manhua/ui/activity/ComicCategoryActivity$else;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$else;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->class:Lcom/apk/b40$new;

    .line 5
    new-instance v0, Lcom/manhua/ui/activity/ComicCategoryActivity$goto;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$goto;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->const:Lcom/apk/b40$new;

    return-void
.end method

.method public static i(Lcom/manhua/ui/activity/ComicCategoryActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->throw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 3
    sget-object v1, Lcom/apk/q0;->try:[Ljava/lang/String;

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    .line 5
    invoke-static {v0, v1, v2}, Lcom/apk/w;->new(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    iget p0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static j(Lcom/manhua/ui/activity/ComicCategoryActivity;)V
    .locals 5

    if-eqz p0, :cond_5

    .line 1
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    sget-object v1, Lcom/apk/pv;->if:Lcom/apk/pv;

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->native:Lcom/apk/pv;

    .line 4
    new-instance v1, Lcom/manhua/ui/view/ComicCategoryThemePopupView;

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->goto:Ljava/util/List;

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 5
    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    new-instance v4, Lcom/apk/y00;

    invoke-direct {v4, p0}, Lcom/apk/y00;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/manhua/ui/view/ComicCategoryThemePopupView;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/apk/g1;)V

    .line 6
    instance-of p0, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p0, :cond_0

    .line 7
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 8
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 9
    :cond_0
    instance-of p0, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p0, :cond_1

    .line 10
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 11
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 12
    :cond_1
    instance-of p0, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p0, :cond_2

    .line 13
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 14
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 15
    :cond_2
    instance-of p0, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p0, :cond_3

    .line 16
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 17
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 18
    :cond_3
    instance-of p0, v1, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz p0, :cond_4

    .line 19
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 20
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    .line 21
    :cond_4
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 22
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void

    :cond_5
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public static k(Lcom/manhua/ui/activity/ComicCategoryActivity;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/apk/x00;

    invoke-direct {v0, p0}, Lcom/apk/x00;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c006f

    return v0
.end method

.method public initData()V
    .locals 9

    .line 1
    new-instance v0, Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->catch:Lcom/apk/r5;

    invoke-direct {v0, p0, v1}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->public()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->break:Z

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 6
    :goto_0
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v6, "categorylist"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 7
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0c0077

    .line 8
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->do:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 9
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->do:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f09027d

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const v2, 0x7f09027f

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 14
    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const v2, 0x7f09027c

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 16
    invoke-virtual {v0, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 17
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v2, Lcom/apk/q0;->goto:[Ljava/lang/String;

    iget-object v4, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->class:Lcom/apk/b40$new;

    sget v5, Lcom/manhua/ui/activity/ComicCategoryActivity;->final:I

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/manhua/ui/activity/ComicCategoryActivity;->l(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 18
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v2, Lcom/apk/q0;->new:[Ljava/lang/String;

    iget-object v4, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->const:Lcom/apk/b40$new;

    sget v5, Lcom/manhua/ui/activity/ComicCategoryActivity;->final:I

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/manhua/ui/activity/ComicCategoryActivity;->l(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    if-eqz v0, :cond_2

    .line 20
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/apk/z2;->while(ZZ)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->do:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v1, 0x7f09027e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/manhua/ui/activity/ComicCategoryActivity$new;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$new;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/activity/ComicCategoryActivity$try;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$try;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f09016b

    const v1, 0x7f1001da

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/manhua/ui/activity/ComicCategoryActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$do;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v1}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {p0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 8
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v2, Lcom/manhua/ui/activity/ComicCategoryActivity$if;

    invoke-direct {v2, p0}, Lcom/manhua/ui/activity/ComicCategoryActivity$if;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    new-instance v2, Lcom/manhua/ui/activity/ComicCategoryActivity$for;

    invoke-direct {v2, p0, v0}, Lcom/manhua/ui/activity/ComicCategoryActivity$for;-><init>(Lcom/manhua/ui/activity/ComicCategoryActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final l(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/nz;

    invoke-direct {v0, p0, p2, p4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    const/16 p2, 0x1e

    const/16 p4, 0xe

    .line 3
    invoke-static {p0, p1, p2, p4}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

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

.method public final m(ZLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

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

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 5
    iget p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_4
    if-nez p2, :cond_5

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 10
    iget p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    goto :goto_1

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->if(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "book"

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
