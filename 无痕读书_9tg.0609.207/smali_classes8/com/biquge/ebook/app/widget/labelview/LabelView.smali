.class public Lcom/biquge/ebook/app/widget/labelview/LabelView;
.super Landroid/view/View;
.source "LabelView.java"


# instance fields
.field public break:I

.field public case:Z

.field public catch:Landroid/graphics/Paint;

.field public class:Landroid/graphics/Paint;

.field public const:Landroid/graphics/Path;

.field public do:Ljava/lang/String;

.field public else:I

.field public for:F

.field public goto:F

.field public if:I

.field public new:Z

.field public this:F

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    .line 5
    sget-object v0, Lcom/biquge/ebook/app/R$styleable;->LabelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    const-string p2, "#ffffff"

    .line 7
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x41300000    # 11.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    const/16 v0, 0x9

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for:F

    const/4 p2, 0x7

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->new:Z

    const/4 p2, 0x6

    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->case:Z

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->try:Z

    const-string v0, "#FF4081"

    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->else:I

    const/4 p2, 0x3

    .line 14
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->try:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x420c0000    # 35.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->goto:F

    const/4 p2, 0x4

    const/high16 v0, 0x40600000    # 3.5f

    .line 15
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->this:F

    const/4 p2, 0x2

    const/16 v0, 0x33

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->break:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public do(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final for(IFLandroid/graphics/Canvas;Z)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p3, p2, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz p4, :cond_0

    neg-int p2, p1

    .line 3
    div-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    div-int/lit8 p2, p1, 0x4

    :goto_0
    int-to-float p2, p2

    .line 4
    div-int/lit8 p4, p1, 0x2

    int-to-float p4, p4

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v2, v0

    div-float/2addr v2, v1

    sub-float/2addr p4, v2

    add-float/2addr p4, p2

    .line 5
    iget-boolean p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->case:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p3, p2, p1, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBgColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->else:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->break:I

    return v0
.end method

.method public getMinSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->goto:F

    return v0
.end method

.method public getPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->this:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for:F

    return v0
.end method

.method public final if(IFLandroid/graphics/Canvas;FZ)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p3, p2, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    iget p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->this:F

    mul-float p2, p2, v1

    add-float/2addr p2, p4

    if-eqz p5, :cond_0

    neg-float p2, p2

    :cond_0
    div-float/2addr p2, v1

    .line 4
    div-int/lit8 p4, p1, 0x2

    int-to-float p4, p4

    iget-object p5, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result p5

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    add-float/2addr v0, p5

    div-float/2addr v0, v1

    sub-float/2addr p4, v0

    add-float/2addr p4, p2

    .line 5
    iget-boolean p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->case:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p5

    int-to-float p1, p1

    iget-object p5, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->new:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->else:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float v4, v0, v2

    .line 7
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->try:Z

    const/16 v2, 0x55

    const/16 v3, 0x53

    const/16 v5, 0x35

    const/16 v6, 0x33

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->break:I

    const/4 v4, 0x1

    const/high16 v8, -0x3dcc0000    # -45.0f

    if-ne v0, v6, :cond_0

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v2, v1

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0, v1, v8, p1, v4}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for(IFLandroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    :cond_0
    const/high16 v6, 0x42340000    # 45.0f

    if-ne v0, v5, :cond_1

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v2, v1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0, v1, v6, p1, v4}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for(IFLandroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v2, v1

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    invoke-virtual {p0, v1, v6, p1, v4}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for(IFLandroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v2, :cond_7

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 31
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p0, v1, v8, p1, v4}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for(IFLandroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 37
    :cond_3
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->this:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v0, v0, v8

    add-float/2addr v0, v4

    float-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    .line 38
    iget v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->break:I

    if-ne v0, v6, :cond_4

    .line 39
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 40
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-double v2, v1

    sub-double/2addr v2, v10

    double-to-float v2, v2

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v3, v1

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 45
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, -0x3dcc0000    # -45.0f

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if(IFLandroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    .line 47
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 48
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    double-to-float v2, v10

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v2, v1

    int-to-double v5, v1

    sub-double/2addr v5, v10

    double-to-float v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 53
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x42340000    # 45.0f

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if(IFLandroid/graphics/Canvas;FZ)V

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_6

    .line 55
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 56
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    double-to-float v2, v10

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-double v2, v1

    sub-double/2addr v2, v10

    double-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 61
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x42340000    # 45.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if(IFLandroid/graphics/Canvas;FZ)V

    goto :goto_0

    :cond_6
    if-ne v0, v2, :cond_7

    .line 63
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 64
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    int-to-float v2, v1

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 65
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    double-to-float v3, v10

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 69
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->const:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->class:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, -0x3dcc0000    # -45.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if(IFLandroid/graphics/Canvas;FZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->catch:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    int-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-int v0, v2

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_1

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9
    :cond_1
    iget p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->goto:F

    float-to-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10
    :goto_0
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->else:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFillTriangle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->try:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->break:I

    return-void
.end method

.method public setMinSize(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->goto:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->this:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->do:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->case:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBold(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->new:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->if:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/labelview/LabelView;->for:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
