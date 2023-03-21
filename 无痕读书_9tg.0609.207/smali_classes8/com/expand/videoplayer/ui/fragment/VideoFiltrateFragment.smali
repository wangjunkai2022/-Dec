.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;
.super Lcom/apk/g6;
.source "VideoFiltrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;
    }
.end annotation


# static fields
.field public static final native:[Ljava/lang/String;

.field public static final public:[Ljava/lang/String;


# instance fields
.field public break:[Ljava/lang/String;

.field public case:[Ljava/lang/String;

.field public catch:[Ljava/lang/String;

.field public class:Lcom/apk/q3;

.field public const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

.field public do:I

.field public else:[Ljava/lang/String;

.field public final:I

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/CategoryArea;",
            ">;"
        }
    .end annotation
.end field

.field public goto:[Ljava/lang/String;

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/RankCategory;",
            ">;"
        }
    .end annotation
.end field

.field public import:I

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012b
    .end annotation
.end field

.field public mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field

.field public mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field

.field public mHeaderTitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090246
    .end annotation
.end field

.field public mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090247
    .end annotation
.end field

.field public mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027d
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090248
    .end annotation
.end field

.field public mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090280
    .end annotation
.end field

.field public mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090281
    .end annotation
.end field

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/CategoryYear;",
            ">;"
        }
    .end annotation
.end field

.field public ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public super:Z

.field public this:[Ljava/lang/String;

.field public throw:Ljava/lang/String;

.field public try:[Ljava/lang/String;

.field public final while:Lcom/apk/t5;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10027e

    .line 1
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f10027d

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f10027f

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f10027b

    .line 4
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f10027c

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->native:[Ljava/lang/String;

    const-string v0, "hits"

    const-string v1, "score"

    const-string v2, "addtime"

    const-string v3, "collect"

    const-string v4, "commend"

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->public:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    .line 3
    new-instance v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;

    invoke-direct {v0, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    iput-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->while:Lcom/apk/t5;

    return-void
.end method

.method public static synthetic synchronized(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->i(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/videoplayer/bean/RankCategory;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/RankCategory;->getLists()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;

    .line 7
    invoke-virtual {v3}, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public final f()Ljava/lang/String;
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->this:[Ljava/lang/String;

    iget v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->do:I

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    .line 5
    iget-object v5, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v1, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    move v6, v1

    .line 7
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    iget v5, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->do:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/expand/videoplayer/bean/RankCategory;

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Lcom/expand/videoplayer/bean/RankCategory;->getLists()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;

    invoke-virtual {v1}, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    move-object v9, v0

    .line 12
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->this:[Ljava/lang/String;

    iget v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->do:I

    aget-object v7, v0, v1

    sget-object v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->public:[Ljava/lang/String;

    aget-object v8, v0, v2

    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->break:[Ljava/lang/String;

    aget-object v10, v0, v4

    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->catch:[Ljava/lang/String;

    aget-object v11, v0, v6

    iget v12, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    invoke-static/range {v7 .. v12}, Lcom/apk/eg;->while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00cc

    return v0
.end method

.method public final h(ZLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 5
    iget p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    if-eqz p3, :cond_4

    .line 9
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 10
    iget p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final i(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$else;

    invoke-direct {v0, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$else;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    new-instance v0, Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    invoke-direct {v0}, Lcom/expand/videoplayer/adapter/VideoGridAdapter;-><init>()V

    iput-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    .line 3
    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    new-instance v1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$new;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$new;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    iget-object v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    new-instance v1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->do()V

    .line 7
    new-instance v0, Lcom/apk/q3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->while:Lcom/apk/t5;

    invoke-direct {v0, v1, v2}, Lcom/apk/q3;-><init>(Landroid/app/Activity;Lcom/apk/t5;)V

    iput-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->class:Lcom/apk/q3;

    .line 8
    invoke-virtual {v0}, Lcom/apk/q3;->new()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SOURCE_TYPE_KEY"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->throw:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 3
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 4
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 5
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 6
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 7
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 8
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 9
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 10
    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$for;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$for;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    return-void
.end method

.method public final j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->import:I

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    .line 5
    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    div-int v3, v2, v3

    .line 6
    div-int/2addr v2, v3

    iput v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->import:I

    .line 7
    :cond_0
    iget v2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->import:I

    .line 8
    invoke-direct {v0, v1, p2, v2}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 9
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/apk/ef;

    sget-object v1, Lcom/apk/h40$do;->case:Lcom/apk/h40$do;

    const v2, 0x7f080231

    invoke-direct {v0, p2, v2, v1}, Lcom/apk/ef;-><init>(Landroid/content/Context;ILcom/apk/h40$do;)V

    invoke-interface {p1, v0}, Lcom/apk/b40;->setScrollBar(Lcom/apk/h40;)V

    .line 11
    new-instance p2, Lcom/apk/i40;

    invoke-direct {p2}, Lcom/apk/i40;-><init>()V

    const v0, 0x7f0600d8

    const v1, 0x7f060064

    .line 12
    invoke-virtual {p2, v0, v1}, Lcom/apk/i40;->for(II)Lcom/apk/i40;

    const/high16 v0, 0x41680000    # 14.5f

    const/high16 v1, 0x41600000    # 14.0f

    .line 13
    invoke-virtual {p2, v0, v1}, Lcom/apk/i40;->new(FF)Lcom/apk/i40;

    .line 14
    invoke-interface {p1, p2}, Lcom/apk/b40;->setOnTransitionListener(Lcom/apk/b40$try;)V

    .line 15
    invoke-virtual {p1, p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public menuClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090246
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
