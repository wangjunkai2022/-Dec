.class public Lcom/manhua/ui/widget/barrage/BarrageItem;
.super Ljava/lang/Object;
.source "BarrageItem.java"

# interfaces
.implements Lcom/manhua/ui/widget/barrage/IBarrageItem;


# static fields
.field public static final sBaseSpeed:I = 0x3


# instance fields
.field public final mBarrageBean:Lcom/manhua/ui/widget/barrage/BarrageBean;

.field public mContainerHeight:I

.field public mContainerWidth:I

.field public final mContent:Landroid/text/SpannableStringBuilder;

.field public mContentHeight:I

.field public mContentWidth:I

.field public mCurrX:I

.field public mCurrY:I

.field public mFactor:F

.field public mTextAlpha:I

.field public mTextColor:I

.field public mTextSize:I

.field public staticLayout:Landroid/text/StaticLayout;

.field public strokeColor:I

.field public strokePaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/text/SpannableStringBuilder;Lcom/manhua/ui/widget/barrage/BarrageBean;IIFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextColor:I

    const/high16 v0, -0x1000000

    .line 3
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokeColor:I

    .line 4
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContent:Landroid/text/SpannableStringBuilder;

    .line 5
    iput-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mBarrageBean:Lcom/manhua/ui/widget/barrage/BarrageBean;

    .line 6
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageItem;->initPaint()V

    .line 7
    iput p3, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextColor:I

    .line 8
    iput p4, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextAlpha:I

    .line 9
    invoke-static {p5}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextSize:I

    .line 10
    iput p6, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mFactor:F

    .line 11
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageItem;->measure()V

    return-void
.end method

.method public static getFontHeight(Landroid/text/TextPaint;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 2
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private initPaint()V
    .locals 4

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mBarrageBean:Lcom/manhua/ui/widget/barrage/BarrageBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getClickto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    const-string v2, "#666666"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method private measure()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextAlpha:I

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokeColor:I

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageItem;->getFontHeight(Landroid/text/TextPaint;)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentHeight:I

    .line 5
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContent:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    .line 6
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v4, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->strokePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->staticLayout:Landroid/text/StaticLayout;

    .line 7
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentWidth:I

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContainerWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContainerHeight:I

    if-eq v1, v2, :cond_1

    .line 4
    :cond_0
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContainerWidth:I

    .line 5
    iput v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContainerHeight:I

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    iget p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mFactor:F

    mul-float v1, v1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    return-void
.end method

.method public getBarrageBean()Lcom/manhua/ui/widget/barrage/BarrageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mBarrageBean:Lcom/manhua/ui/widget/barrage/BarrageBean;

    return-object v0
.end method

.method public getCurrX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentHeight:I

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    int-to-float v2, v1

    iget v3, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrY:I

    int-to-float v4, v3

    iget v5, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentWidth:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentHeight:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getSpeedFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mFactor:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentWidth:I

    return v0
.end method

.method public isOut()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    if-gez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContentWidth:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setSpeedFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mFactor:F

    return-void
.end method

.method public setStartPosition(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrX:I

    .line 2
    iput p2, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mCurrY:I

    return-void
.end method

.method public setStrokeAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextAlpha:I

    .line 2
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageItem;->measure()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextColor:I

    .line 2
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageItem;->measure()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextSize:I

    .line 2
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageItem;->measure()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41600000    # 14.0f

    .line 3
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mTextSize:I

    :goto_0
    return-void
.end method

.method public willHit(Lcom/manhua/ui/widget/barrage/IBarrageItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getCurrX()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mContainerWidth:I

    const/4 v2, 0x1

    if-le v1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getSpeedFactor()F

    move-result v0

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mFactor:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getCurrX()I

    move-result v0

    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 4
    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getSpeedFactor()F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    div-float p1, v0, p1

    .line 5
    iget v4, p0, Lcom/manhua/ui/widget/barrage/BarrageItem;->mFactor:F

    mul-float p1, p1, v4

    mul-float p1, p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    return v2

    :cond_2
    return v3
.end method
