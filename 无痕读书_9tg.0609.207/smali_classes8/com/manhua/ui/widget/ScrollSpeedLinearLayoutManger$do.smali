.class public Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger$do;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ScrollSpeedLinearLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger$do;->do:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger$do;->do:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

    .line 2
    iget v0, v0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;->do:F

    .line 3
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger$do;->do:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
