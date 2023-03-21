.class public Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ScrollSpeedLinearLayoutManger.java"


# instance fields
.field public do:F

.field public if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const v0, 0x3cf5c28f    # 0.03f

    .line 2
    iput v0, p0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;->do:F

    .line 3
    iput-object p1, p0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;->if:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x3da3d70a    # 0.08f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;->do:F

    return-void
.end method


# virtual methods
.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger$do;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger$do;-><init>(Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
