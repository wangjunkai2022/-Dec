.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;
.super Ljava/lang/Object;
.source "VideoFiltrateFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 3
    const-class v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const v1, 0x7f09046d

    const-string v2, "field \'ptrClassicFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09012b

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090248

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090246

    const-string v1, "field \'mHeaderTitleTv\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mHeaderTitleTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding$do;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Lcom/manhua/ui/widget/PublicLoadingView;

    const v1, 0x7f090247

    const-string v2, "field \'mLoadingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 11
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f090280

    const-string v2, "field \'mTypeIc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 12
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f09027d

    const-string v2, "field \'mRankIc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 13
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f09027f

    const-string v2, "field \'mCategoryIc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 14
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f09027c

    const-string v2, "field \'mAreaIc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 15
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f090281

    const-string v2, "field \'mYearIc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object p2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 3
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 8
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 9
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 10
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 11
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 12
    iput-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 13
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
