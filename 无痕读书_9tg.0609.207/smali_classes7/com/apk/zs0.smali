.class public Lcom/apk/zs0;
.super Landroid/widget/FrameLayout;
.source "ColorWheelView.java"

# interfaces
.implements Lcom/apk/ts0;
.implements Lcom/apk/bt0;


# instance fields
.field public break:Lcom/apk/at0;

.field public case:I

.field public do:F

.field public else:Z

.field public for:F

.field public goto:Lcom/apk/ys0;

.field public if:F

.field public new:F

.field public this:Lcom/apk/us0;

.field public try:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41d80000    # 27.0f

    .line 2
    iput v0, p0, Lcom/apk/zs0;->new:F

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/apk/zs0;->try:Landroid/graphics/PointF;

    const v0, -0xff01

    .line 4
    iput v0, p0, Lcom/apk/zs0;->case:I

    .line 5
    new-instance v0, Lcom/apk/us0;

    invoke-direct {v0}, Lcom/apk/us0;-><init>()V

    iput-object v0, p0, Lcom/apk/zs0;->this:Lcom/apk/us0;

    .line 6
    new-instance v0, Lcom/apk/at0;

    invoke-direct {v0, p0}, Lcom/apk/at0;-><init>(Lcom/apk/bt0;)V

    iput-object v0, p0, Lcom/apk/zs0;->break:Lcom/apk/at0;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/apk/zs0;->new:F

    .line 8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    new-instance v2, Lcom/apk/xs0;

    invoke-direct {v2, p1}, Lcom/apk/xs0;-><init>(Landroid/content/Context;)V

    .line 10
    iget v3, p0, Lcom/apk/zs0;->new:F

    float-to-int v3, v3

    .line 11
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    new-instance v1, Lcom/apk/ys0;

    invoke-direct {v1, p1}, Lcom/apk/ys0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apk/zs0;->goto:Lcom/apk/ys0;

    .line 15
    iget p1, p0, Lcom/apk/zs0;->new:F

    invoke-virtual {v1, p1}, Lcom/apk/ys0;->setSelectorRadiusPx(F)V

    .line 16
    iget-object p1, p0, Lcom/apk/zs0;->goto:Lcom/apk/ys0;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/vs0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zs0;->this:Lcom/apk/us0;

    invoke-virtual {v0, p1}, Lcom/apk/us0;->do(Lcom/apk/vs0;)V

    return-void
.end method

.method public for(IZ)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    .line 2
    aget v1, v0, v1

    iget v2, p0, Lcom/apk/zs0;->do:F

    mul-float v1, v1, v2

    const/4 v2, 0x0

    .line 3
    aget v0, v0, v2

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    double-to-float v0, v3

    float-to-double v3, v1

    float-to-double v5, v0

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    iget v0, p0, Lcom/apk/zs0;->if:F

    float-to-double v3, v0

    add-double/2addr v7, v3

    double-to-float v0, v7

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    iget v1, p0, Lcom/apk/zs0;->for:F

    float-to-double v3, v1

    add-double/2addr v5, v3

    double-to-float v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/apk/zs0;->new(FF)V

    .line 5
    iput p1, p0, Lcom/apk/zs0;->case:I

    .line 6
    iget-boolean v0, p0, Lcom/apk/zs0;->else:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/apk/zs0;->this:Lcom/apk/us0;

    invoke-virtual {v0, p1, v2, p2}, Lcom/apk/us0;->for(IZZ)V

    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zs0;->this:Lcom/apk/us0;

    .line 2
    iget v0, v0, Lcom/apk/us0;->if:I

    return v0
.end method

.method public if(Lcom/apk/vs0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zs0;->this:Lcom/apk/us0;

    invoke-virtual {v0, p1}, Lcom/apk/us0;->if(Lcom/apk/vs0;)V

    return-void
.end method

.method public final new(FF)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/apk/zs0;->if:F

    sub-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/apk/zs0;->for:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 4
    iget v2, p0, Lcom/apk/zs0;->do:F

    float-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    float-to-double v3, p1

    float-to-double v5, v2

    div-double/2addr v5, v0

    mul-double v5, v5, v3

    double-to-float p1, v5

    float-to-double v3, p2

    float-to-double v5, v2

    div-double/2addr v5, v0

    mul-double v5, v5, v3

    double-to-float p2, v5

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/zs0;->try:Landroid/graphics/PointF;

    iget v1, p0, Lcom/apk/zs0;->if:F

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 6
    iget p1, p0, Lcom/apk/zs0;->for:F

    add-float/2addr p2, p1

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 7
    iget-object p1, p0, Lcom/apk/zs0;->goto:Lcom/apk/ys0;

    invoke-virtual {p1, v0}, Lcom/apk/ys0;->setCurrentPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 4
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 6
    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p3, p3, p4

    iget v0, p0, Lcom/apk/zs0;->new:F

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/apk/zs0;->do:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    .line 4
    iput p1, p0, Lcom/apk/zs0;->if:F

    int-to-float p1, p2

    mul-float p1, p1, p4

    .line 5
    iput p1, p0, Lcom/apk/zs0;->for:F

    .line 6
    iget p1, p0, Lcom/apk/zs0;->case:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/apk/zs0;->for(IZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apk/zs0;->update(Landroid/view/MotionEvent;)V

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/zs0;->break:Lcom/apk/at0;

    invoke-virtual {v0, p1}, Lcom/apk/at0;->do(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public setOnlyUpdateOnTouchEventUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/zs0;->else:Z

    return-void
.end method

.method public update(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-boolean v4, p0, Lcom/apk/zs0;->else:Z

    if-eqz v4, :cond_1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/apk/zs0;->this:Lcom/apk/us0;

    .line 6
    iget v5, p0, Lcom/apk/zs0;->if:F

    sub-float v5, v0, v5

    .line 7
    iget v6, p0, Lcom/apk/zs0;->for:F

    sub-float v6, v1, v6

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v8, v7

    float-to-double v7, v8

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const/4 v9, 0x3

    new-array v9, v9, [F

    .line 9
    fill-array-data v9, :array_0

    float-to-double v10, v6

    neg-float v5, v5

    float-to-double v5, v5

    .line 10
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double v5, v5, v10

    double-to-float v5, v5

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v5, v6

    aput v5, v9, v2

    .line 11
    iget v2, p0, Lcom/apk/zs0;->do:F

    float-to-double v5, v2

    div-double/2addr v7, v5

    double-to-float v2, v7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v9, v3

    .line 12
    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    .line 13
    invoke-virtual {v4, v2, v3, p1}, Lcom/apk/us0;->for(IZZ)V

    .line 14
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/apk/zs0;->new(FF)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
