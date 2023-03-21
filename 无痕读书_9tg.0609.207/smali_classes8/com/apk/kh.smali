.class public Lcom/apk/kh;
.super Landroid/view/View;
.source "NumberProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/kh$do;
    }
.end annotation


# instance fields
.field public abstract:Z

.field public break:Ljava/lang/String;

.field public case:F

.field public final catch:I

.field public final class:I

.field public final const:I

.field public default:Landroid/graphics/RectF;

.field public do:I

.field public else:F

.field public extends:Landroid/graphics/RectF;

.field public final final:F

.field public finally:F

.field public for:I

.field public goto:F

.field public if:I

.field public import:F

.field public native:F

.field public new:I

.field public package:Z

.field public private:Z

.field public public:F

.field public return:Ljava/lang/String;

.field public static:Landroid/graphics/Paint;

.field public final super:F

.field public switch:Landroid/graphics/Paint;

.field public this:Ljava/lang/String;

.field public final throw:F

.field public throws:Landroid/graphics/Paint;

.field public try:I

.field public final while:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f1100fb

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/kh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/apk/kh;->do:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/apk/kh;->if:I

    const-string v2, "%"

    .line 5
    iput-object v2, p0, Lcom/apk/kh;->this:Ljava/lang/String;

    const-string v2, ""

    .line 6
    iput-object v2, p0, Lcom/apk/kh;->break:Ljava/lang/String;

    const/16 v2, 0x42

    const/16 v3, 0x91

    const/16 v4, 0xf1

    .line 7
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, p0, Lcom/apk/kh;->catch:I

    .line 8
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/apk/kh;->class:I

    const/16 v2, 0xcc

    .line 9
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/apk/kh;->const:I

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/apk/kh;->package:Z

    .line 13
    iput-boolean v2, p0, Lcom/apk/kh;->private:Z

    .line 14
    iput-boolean v2, p0, Lcom/apk/kh;->abstract:Z

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 15
    invoke-virtual {p0, v3}, Lcom/apk/kh;->do(F)F

    move-result v3

    iput v3, p0, Lcom/apk/kh;->throw:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {p0, v3}, Lcom/apk/kh;->do(F)F

    move-result v3

    iput v3, p0, Lcom/apk/kh;->while:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v3

    .line 18
    iput v4, p0, Lcom/apk/kh;->super:F

    const/high16 v3, 0x40400000    # 3.0f

    .line 19
    invoke-virtual {p0, v3}, Lcom/apk/kh;->do(F)F

    move-result v3

    iput v3, p0, Lcom/apk/kh;->final:F

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/biquge/ebook/app/R$styleable;->NumberProgressBar:[I

    .line 21
    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 22
    iget p3, p0, Lcom/apk/kh;->class:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/apk/kh;->for:I

    const/16 p2, 0x9

    .line 23
    iget p3, p0, Lcom/apk/kh;->const:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/apk/kh;->new:I

    const/4 p2, 0x4

    .line 24
    iget p3, p0, Lcom/apk/kh;->catch:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/apk/kh;->try:I

    const/4 p2, 0x6

    .line 25
    iget p3, p0, Lcom/apk/kh;->super:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apk/kh;->case:F

    const/4 p2, 0x2

    .line 26
    iget p3, p0, Lcom/apk/kh;->throw:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apk/kh;->else:F

    const/16 p2, 0x8

    .line 27
    iget p3, p0, Lcom/apk/kh;->while:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apk/kh;->goto:F

    const/4 p2, 0x5

    .line 28
    iget p3, p0, Lcom/apk/kh;->final:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apk/kh;->finally:F

    const/4 p2, 0x7

    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    iput-boolean v1, p0, Lcom/apk/kh;->abstract:Z

    .line 31
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 32
    invoke-virtual {p0, p2}, Lcom/apk/kh;->setProgress(I)V

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/apk/kh;->setMax(I)V

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {p0}, Lcom/apk/kh;->if()V

    return-void
.end method


# virtual methods
.method public do(F)F
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

    return p1
.end method

.method public final for(IZ)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    :goto_0
    add-int/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/apk/kh;->getSuggestedMinimumWidth()I

    move-result v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/apk/kh;->getSuggestedMinimumHeight()I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    if-eqz p2, :cond_3

    .line 7
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    return p1
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->do:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kh;->break:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->if:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->case:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/kh;->abstract:Z

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->for:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->else:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kh;->this:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/kh;->case:F

    float-to-int v0, v0

    iget v1, p0, Lcom/apk/kh;->else:F

    float-to-int v1, v1

    iget v2, p0, Lcom/apk/kh;->goto:F

    float-to-int v2, v2

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->case:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->try:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->new:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/kh;->goto:F

    return v0
.end method

.method public final if()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apk/kh;->static:Landroid/graphics/Paint;

    .line 2
    iget v2, p0, Lcom/apk/kh;->for:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apk/kh;->switch:Landroid/graphics/Paint;

    .line 4
    iget v2, p0, Lcom/apk/kh;->new:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    .line 6
    iget v1, p0, Lcom/apk/kh;->try:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apk/kh;->case:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/apk/kh;->abstract:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/apk/kh;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p0}, Lcom/apk/kh;->getMax()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apk/kh;->return:Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/apk/kh;->break:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/kh;->return:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/kh;->this:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apk/kh;->return:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/apk/kh;->import:F

    .line 5
    invoke-virtual {p0}, Lcom/apk/kh;->getProgress()I

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iput-boolean v5, p0, Lcom/apk/kh;->private:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apk/kh;->native:F

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/apk/kh;->private:Z

    .line 9
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 10
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/apk/kh;->else:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 11
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 12
    invoke-virtual {p0}, Lcom/apk/kh;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v3, v4

    .line 13
    invoke-virtual {p0}, Lcom/apk/kh;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v1

    iget v1, p0, Lcom/apk/kh;->finally:F

    sub-float/2addr v3, v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 15
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apk/kh;->else:F

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 16
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/apk/kh;->finally:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/apk/kh;->native:F

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v3, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v3, v1

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apk/kh;->public:F

    .line 19
    iget v0, p0, Lcom/apk/kh;->native:F

    iget v1, p0, Lcom/apk/kh;->import:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/apk/kh;->import:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apk/kh;->native:F

    .line 21
    iget-object v1, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    iget v3, p0, Lcom/apk/kh;->finally:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 22
    :cond_1
    iget v0, p0, Lcom/apk/kh;->native:F

    iget v1, p0, Lcom/apk/kh;->import:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/apk/kh;->finally:F

    add-float/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 24
    iput-boolean v5, p0, Lcom/apk/kh;->package:Z

    goto/16 :goto_1

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 27
    iget-object v0, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apk/kh;->goto:F

    neg-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 28
    iget-object v0, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apk/kh;->goto:F

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 30
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/apk/kh;->else:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 31
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 32
    invoke-virtual {p0}, Lcom/apk/kh;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/apk/kh;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 33
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apk/kh;->else:F

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 34
    iget-object v0, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 36
    iget-object v0, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apk/kh;->goto:F

    neg-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 37
    iget-object v0, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apk/kh;->goto:F

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 38
    :goto_1
    iget-boolean v0, p0, Lcom/apk/kh;->private:Z

    if-eqz v0, :cond_4

    .line 39
    iget-object v0, p0, Lcom/apk/kh;->extends:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/apk/kh;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 40
    :cond_4
    iget-boolean v0, p0, Lcom/apk/kh;->package:Z

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lcom/apk/kh;->default:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/apk/kh;->switch:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 42
    :cond_5
    iget-boolean v0, p0, Lcom/apk/kh;->abstract:Z

    if-eqz v0, :cond_6

    .line 43
    iget-object v0, p0, Lcom/apk/kh;->return:Ljava/lang/String;

    iget v1, p0, Lcom/apk/kh;->native:F

    iget v2, p0, Lcom/apk/kh;->public:F

    iget-object v3, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/kh;->for(IZ)I

    move-result p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/apk/kh;->for(IZ)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "text_color"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apk/kh;->try:I

    const-string v0, "text_size"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/apk/kh;->case:F

    const-string v0, "reached_bar_height"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/apk/kh;->else:F

    const-string v0, "unreached_bar_height"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/apk/kh;->goto:F

    const-string v0, "reached_bar_color"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apk/kh;->for:I

    const-string v0, "unreached_bar_color"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apk/kh;->new:I

    .line 9
    invoke-virtual {p0}, Lcom/apk/kh;->if()V

    const-string v0, "max"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/kh;->setMax(I)V

    const-string v0, "progress"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/kh;->setProgress(I)V

    const-string v0, "prefix"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kh;->setPrefix(Ljava/lang/String;)V

    const-string v0, "suffix"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kh;->setSuffix(Ljava/lang/String;)V

    const-string v0, "text_visibility"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apk/kh$do;->do:Lcom/apk/kh$do;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/apk/kh$do;->if:Lcom/apk/kh$do;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/kh;->setProgressTextVisibility(Lcom/apk/kh$do;)V

    const-string v0, "saved_instance"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 16
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "saved_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/kh;->getTextColor()I

    move-result v1

    const-string v2, "text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/kh;->getProgressTextSize()F

    move-result v1

    const-string v2, "text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    invoke-virtual {p0}, Lcom/apk/kh;->getReachedBarHeight()F

    move-result v1

    const-string v2, "reached_bar_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/kh;->getUnreachedBarHeight()F

    move-result v1

    const-string v2, "unreached_bar_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    invoke-virtual {p0}, Lcom/apk/kh;->getReachedBarColor()I

    move-result v1

    const-string v2, "reached_bar_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p0}, Lcom/apk/kh;->getUnreachedBarColor()I

    move-result v1

    const-string v2, "unreached_bar_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p0}, Lcom/apk/kh;->getMax()I

    move-result v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0}, Lcom/apk/kh;->getProgress()I

    move-result v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Lcom/apk/kh;->getSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/apk/kh;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/apk/kh;->getProgressTextVisibility()Z

    move-result v1

    const-string v2, "text_visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/apk/kh;->do:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    iput-object p1, p0, Lcom/apk/kh;->break:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/apk/kh;->break:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/kh;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/apk/kh;->if:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/kh;->try:I

    .line 2
    iget-object v0, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/kh;->case:F

    .line 2
    iget-object v0, p0, Lcom/apk/kh;->throws:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressTextVisibility(Lcom/apk/kh$do;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/kh$do;->do:Lcom/apk/kh$do;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/apk/kh;->abstract:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReachedBarColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/kh;->for:I

    .line 2
    iget-object v0, p0, Lcom/apk/kh;->static:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReachedBarHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/kh;->else:F

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    iput-object p1, p0, Lcom/apk/kh;->this:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/apk/kh;->this:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setUnreachedBarColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/kh;->new:I

    .line 2
    iget-object v0, p0, Lcom/apk/kh;->switch:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnreachedBarDrawStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/kh;->package:Z

    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/kh;->goto:F

    return-void
.end method
