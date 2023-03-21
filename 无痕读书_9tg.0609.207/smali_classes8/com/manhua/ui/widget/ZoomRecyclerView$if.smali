.class public Lcom/manhua/ui/widget/ZoomRecyclerView$if;
.super Ljava/lang/Object;
.source "ZoomRecyclerView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/ZoomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ZoomRecyclerView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ZoomRecyclerView;Lcom/apk/w20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v1, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    .line 2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v2, v2, v1

    iput v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->extends:F

    iget v3, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    iget v4, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->default:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->break:F

    iget v3, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    mul-float v4, v2, v3

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->switch:F

    .line 5
    iget v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->catch:F

    mul-float v3, v3, v2

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throws:F

    .line 6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    iput v2, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->return:F

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->return:F

    iget v2, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    .line 9
    iget v2, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    mul-float v1, v1, v2

    .line 10
    iget v2, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    add-float/2addr v2, v0

    iget v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    add-float/2addr v0, v1

    .line 11
    iput v2, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    .line 12
    iput v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    iget v1, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->finally:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 2
    iget v1, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    neg-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    iput v1, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->return:F

    .line 3
    iget v2, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    neg-float v2, v2

    div-float/2addr v2, v0

    iput v2, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    .line 4
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v0, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->return:F

    :goto_0
    iput v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->return:F

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v1, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    :goto_1
    iput v1, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    iget v1, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->finally:F

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/manhua/ui/widget/ZoomRecyclerView;->case(FF)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView$if;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    return-void
.end method
