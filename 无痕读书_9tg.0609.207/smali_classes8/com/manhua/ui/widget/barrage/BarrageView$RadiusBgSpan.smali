.class public Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BarrageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/barrage/BarrageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadiusBgSpan"
.end annotation


# instance fields
.field public isAdType:Z

.field public mBgColor:I

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapTop:I

.field public mBitmapWidth:I

.field public final mRadius:I

.field public mSize:I

.field public mStrokeSize:I

.field public mTxtColor:I


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageBean;FI)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    iput p3, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mTxtColor:I

    const/high16 p3, 0x41200000    # 10.0f

    .line 4
    invoke-static {p3}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mRadius:I

    .line 5
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getClickto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x3f19999a    # 0.6f

    .line 6
    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mStrokeSize:I

    .line 7
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getBgcolor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getBgcolor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBgColor:I

    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->isAdType:Z

    .line 10
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getPre_Str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getPre_Ico()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;

    invoke-direct {v3, p0}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;-><init>(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;)V

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr p2, v4

    .line 12
    invoke-static {p2}, Lcom/apk/eg;->catch(F)I

    move-result p2

    const/high16 v6, 0x40400000    # 3.0f

    .line 13
    invoke-static {v6}, Lcom/apk/eg;->catch(F)I

    move-result v6

    int-to-float v7, p2

    mul-float v7, v7, v0

    float-to-int v0, v7

    .line 14
    new-instance v7, Landroid/graphics/Paint;

    const/16 v8, 0x101

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int p1, p1, p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 18
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-direct {p2, v8, v8, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v1, "#F15B50"

    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v6

    .line 21
    invoke-virtual {p1, p2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v1, -0x1

    .line 22
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    .line 23
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 26
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    .line 27
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1, v2, p2, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 29
    new-instance p2, Lcom/apk/b1;

    invoke-direct {p2}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/af;

    invoke-direct {v0, p1, v3}, Lcom/apk/af;-><init>(Ljava/lang/String;Lcom/apk/g1;)V

    invoke-virtual {p2, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 30
    :cond_3
    :goto_0
    iput-object v5, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    const/high16 p1, 0x40200000    # 2.5f

    .line 31
    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapTop:I

    .line 32
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p3}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapWidth:I

    :cond_4
    return-void
.end method

.method public static synthetic access$500(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapTop:I

    return p1
.end method

.method public static synthetic access$702(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapWidth:I

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    move-object/from16 v7, p9

    .line 1
    iget-object v3, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3fc00000    # 1.5f

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Landroid/graphics/RectF;

    add-float v6, p5, v4

    iget v8, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapTop:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v8

    int-to-float v8, v2

    add-float v9, v8, v5

    .line 3
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    const v11, 0x3f99999a    # 1.2f

    mul-float v10, v10, v11

    add-float/2addr v10, v9

    iget v9, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mSize:I

    int-to-float v9, v9

    add-float v9, p5, v9

    .line 4
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v12

    mul-float v12, v12, v11

    add-float/2addr v12, v8

    invoke-direct {v3, v6, v10, v9, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    iget-object v6, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmap:Landroid/graphics/Bitmap;

    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v9, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapTop:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    invoke-virtual {p1, v6, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    :cond_0
    iget-boolean v3, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->isAdType:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 7
    iget v3, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBgColor:I

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget v3, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mStrokeSize:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    new-instance v3, Landroid/graphics/RectF;

    add-float v4, p5, v4

    int-to-float v8, v2

    add-float/2addr v8, v5

    .line 13
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    mul-float v9, v9, v5

    add-float/2addr v9, v8

    iget v5, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mSize:I

    int-to-float v5, v5

    add-float v5, p5, v5

    iget v10, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapWidth:I

    int-to-float v10, v10

    add-float/2addr v5, v10

    .line 14
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v10, v10, v11

    add-float/2addr v10, v8

    invoke-direct {v3, v4, v9, v5, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 15
    iget v4, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mRadius:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v5, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    :cond_1
    iget v3, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mTxtColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget v3, v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mBitmapWidth:I

    int-to-float v3, v3

    add-float v5, p5, v3

    int-to-float v6, v2

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iget p2, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mRadius:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->mSize:I

    add-int/lit8 p1, p1, 0x5

    return p1
.end method
