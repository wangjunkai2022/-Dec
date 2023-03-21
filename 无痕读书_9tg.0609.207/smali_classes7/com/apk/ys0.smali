.class public Lcom/apk/ys0;
.super Landroid/view/View;
.source "ColorWheelSelector.java"


# instance fields
.field public do:Landroid/graphics/Paint;

.field public for:Landroid/graphics/PointF;

.field public if:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41d80000    # 27.0f

    .line 2
    iput p1, p0, Lcom/apk/ys0;->if:F

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/ys0;->for:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apk/ys0;->do:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/apk/ys0;->do:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Lcom/apk/ys0;->do:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/ys0;->for:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/apk/ys0;->if:F

    sub-float v4, v1, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float v6, v1, v2

    iget-object v8, p0, Lcom/apk/ys0;->do:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/apk/ys0;->for:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/apk/ys0;->if:F

    sub-float v3, v0, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/apk/ys0;->do:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/apk/ys0;->for:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/apk/ys0;->if:F

    const v3, 0x3f28f5c3    # 0.66f

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/apk/ys0;->do:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCurrentPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ys0;->for:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectorRadiusPx(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/ys0;->if:F

    return-void
.end method
