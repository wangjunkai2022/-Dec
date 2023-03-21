.class public Lcom/biquge/ebook/app/widget/StarBarView;
.super Landroid/view/View;
.source "StarBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/StarBarView$do;
    }
.end annotation


# instance fields
.field public break:Z

.field public case:Landroid/graphics/Bitmap;

.field public do:Z

.field public else:Landroid/graphics/drawable/Drawable;

.field public for:I

.field public goto:Lcom/biquge/ebook/app/widget/StarBarView$do;

.field public if:I

.field public new:I

.field public this:Landroid/graphics/Paint;

.field public try:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->do:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    const/4 v2, 0x5

    .line 4
    iput v2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->for:I

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    .line 6
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->break:Z

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 8
    sget-object v4, Lcom/biquge/ebook/app/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    const/4 p2, 0x4

    const/high16 v3, 0x41a00000    # 20.0f

    .line 10
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->for:I

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->else:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x3

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 14
    :cond_0
    iget v2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    iget v4, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    invoke-virtual {p2, v1, v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p2, v2

    .line 18
    :goto_0
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->case:Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->case:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public getStarMark()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->case:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->else:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->for:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->else:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    iget v4, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    add-int v5, v3, v4

    mul-int v5, v5, v1

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->else:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v6

    if-lez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    cmpl-float v0, v0, v7

    if-nez v0, :cond_2

    const/4 v6, 0x1

    :goto_1
    int-to-float v0, v6

    .line 9
    iget v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 10
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_2
    int-to-float v0, v8

    .line 12
    iget v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    sub-float/2addr v1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 13
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 15
    :cond_3
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    int-to-float v0, v0

    iget v3, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    float-to-int v4, v3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    div-float/2addr v3, v4

    mul-float v3, v3, v0

    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    iget v3, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    int-to-float v4, v3

    mul-float v4, v4, v0

    int-to-float v5, v3

    iget-object v6, p0, Lcom/biquge/ebook/app/widget/StarBarView;->this:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->new:I

    iget p2, p0, Lcom/biquge/ebook/app/widget/StarBarView;->for:I

    mul-int v0, p1, p2

    iget v1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->if:I

    add-int/lit8 p2, p2, -0x1

    mul-int p2, p2, v1

    add-int/2addr p2, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->do:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget v4, p0, Lcom/biquge/ebook/app/widget/StarBarView;->for:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    mul-float v0, v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    .line 6
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/StarBarView;->setStarMark(F)V

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget v4, p0, Lcom/biquge/ebook/app/widget/StarBarView;->for:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    mul-float v0, v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    .line 8
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/StarBarView;->setStarMark(F)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIntegerMark(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->break:Z

    return-void
.end method

.method public setOnStarChangeListener(Lcom/biquge/ebook/app/widget/StarBarView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->goto:Lcom/biquge/ebook/app/widget/StarBarView$do;

    return-void
.end method

.method public setOpenStar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->do:Z

    return-void
.end method

.method public setStarMark(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->break:Z

    if-eqz v0, :cond_0

    float-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StarBarView;->goto:Lcom/biquge/ebook/app/widget/StarBarView$do;

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/biquge/ebook/app/widget/StarBarView;->try:F

    check-cast p1, Lcom/biquge/ebook/app/ui/view/StarPopupView$do;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/StarPopupView$do;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/StarPopupView;->if:Landroid/widget/TextView;

    const v1, 0x7f100067

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
