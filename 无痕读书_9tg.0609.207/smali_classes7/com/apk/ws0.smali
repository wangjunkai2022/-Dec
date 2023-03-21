.class public abstract Lcom/apk/ws0;
.super Landroid/view/View;
.source "ColorSliderView.java"

# interfaces
.implements Lcom/apk/ts0;
.implements Lcom/apk/bt0;


# instance fields
.field public break:Lcom/apk/us0;

.field public case:Landroid/graphics/Path;

.field public catch:Lcom/apk/at0;

.field public class:Lcom/apk/vs0;

.field public const:Lcom/apk/ts0;

.field public do:I

.field public else:F

.field public for:Landroid/graphics/Paint;

.field public goto:F

.field public if:Landroid/graphics/Paint;

.field public new:Landroid/graphics/Paint;

.field public this:Z

.field public try:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/apk/ws0;->do:I

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/apk/ws0;->case:Landroid/graphics/Path;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/apk/ws0;->goto:F

    .line 5
    new-instance p1, Lcom/apk/us0;

    invoke-direct {p1}, Lcom/apk/us0;-><init>()V

    iput-object p1, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    .line 6
    new-instance p1, Lcom/apk/at0;

    invoke-direct {p1, p0}, Lcom/apk/at0;-><init>(Lcom/apk/bt0;)V

    iput-object p1, p0, Lcom/apk/ws0;->catch:Lcom/apk/at0;

    .line 7
    new-instance p1, Lcom/apk/ws0$do;

    invoke-direct {p1, p0}, Lcom/apk/ws0$do;-><init>(Lcom/apk/ws0;)V

    iput-object p1, p0, Lcom/apk/ws0;->class:Lcom/apk/vs0;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apk/ws0;->if:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apk/ws0;->for:Landroid/graphics/Paint;

    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p1, p0, Lcom/apk/ws0;->for:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-object p1, p0, Lcom/apk/ws0;->for:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apk/ws0;->new:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    .line 16
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method


# virtual methods
.method public case(IZZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/ws0;->do:I

    .line 2
    iget-object v0, p0, Lcom/apk/ws0;->if:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/apk/ws0;->new(Landroid/graphics/Paint;)V

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/ws0;->try(I)F

    move-result v0

    iput v0, p0, Lcom/apk/ws0;->goto:F

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/apk/ws0;->for()I

    move-result p1

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/apk/ws0;->this:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/us0;->for(IZZ)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    iget-object p3, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lcom/apk/us0;->for(IZZ)V

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public do(Lcom/apk/vs0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    invoke-virtual {v0, p1}, Lcom/apk/us0;->do(Lcom/apk/vs0;)V

    return-void
.end method

.method public abstract for()I
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    .line 2
    iget v0, v0, Lcom/apk/us0;->if:I

    return v0
.end method

.method public if(Lcom/apk/vs0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    invoke-virtual {v0, p1}, Lcom/apk/us0;->if(Lcom/apk/vs0;)V

    return-void
.end method

.method public abstract new(Landroid/graphics/Paint;)V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget v4, p0, Lcom/apk/ws0;->else:F

    sub-float v5, v0, v4

    iget-object v7, p0, Lcom/apk/ws0;->if:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4
    iget v4, p0, Lcom/apk/ws0;->else:F

    sub-float v5, v0, v4

    iget-object v7, p0, Lcom/apk/ws0;->for:Landroid/graphics/Paint;

    move v3, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    iget v2, p0, Lcom/apk/ws0;->goto:F

    iget v3, p0, Lcom/apk/ws0;->else:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/apk/ws0;->case:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->offset(FFLandroid/graphics/Path;)V

    .line 6
    iget-object v0, p0, Lcom/apk/ws0;->case:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/ws0;->new:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/ws0;->if:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/apk/ws0;->new(Landroid/graphics/Paint;)V

    .line 2
    iget-object p1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    int-to-float p1, p2

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p1, p1, p2

    .line 3
    iput p1, p0, Lcom/apk/ws0;->else:F

    .line 4
    iget-object p1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget-object p1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    iget p3, p0, Lcom/apk/ws0;->else:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float p3, p3, p4

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object p1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    iget p2, p0, Lcom/apk/ws0;->else:F

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object p1, p0, Lcom/apk/ws0;->try:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

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
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apk/ws0;->update(Landroid/view/MotionEvent;)V

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/ws0;->catch:Lcom/apk/at0;

    invoke-virtual {v0, p1}, Lcom/apk/at0;->do(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public setOnlyUpdateOnTouchEventUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/ws0;->this:Z

    return-void
.end method

.method public abstract try(I)F
.end method

.method public update(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/apk/ws0;->else:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/apk/ws0;->else:F

    sub-float/2addr v2, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    :cond_0
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 4
    iput v0, p0, Lcom/apk/ws0;->goto:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-boolean v1, p0, Lcom/apk/ws0;->this:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/apk/ws0;->break:Lcom/apk/us0;

    invoke-virtual {p0}, Lcom/apk/ws0;->for()I

    move-result v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/apk/us0;->for(IZZ)V

    :cond_4
    return-void
.end method
