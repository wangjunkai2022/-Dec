.class public Lcom/biquge/ebook/app/widget/BookPageTextView;
.super Landroid/view/View;
.source "BookPageTextView.java"


# instance fields
.field public break:I

.field public case:I

.field public catch:Ljava/lang/String;

.field public do:I

.field public else:I

.field public for:I

.field public goto:Landroid/graphics/Rect;

.field public if:I

.field public new:I

.field public this:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->this:I

    .line 3
    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->break:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 4
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->for:I

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 6
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    const/high16 p1, 0x41100000    # 9.0f

    .line 7
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->else:I

    return-void
.end method


# virtual methods
.method public final do(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->else:I

    sub-int v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    .line 4
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->else:I

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 11
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 12
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/lit8 v2, v2, -0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->else:I

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 18
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 19
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/lit8 v2, v2, -0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 31
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    add-int/lit8 v2, v1, 0x3

    iget v3, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->else:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x3

    .line 32
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 37
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->try:I

    iget v3, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/lit8 v3, v3, -0x4

    mul-int v3, v3, v2

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 38
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->goto:Landroid/graphics/Rect;

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    add-int/lit8 v2, v1, 0x3

    iget v3, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->else:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x2

    .line 39
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 40
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43
    invoke-static {}, Lcom/apk/kg;->new()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->case:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    int-to-float v2, v2

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    .line 44
    iget-object v3, v3, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public if(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->this:I

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->break:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const p1, 0x7f100088

    invoke-static {p1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->catch:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->catch:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "battery_broadcast_value_action"

    .line 1
    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->this:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->break:I

    if-eq v1, v2, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->if:I

    int-to-float v1, v1

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    .line 5
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->catch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->catch:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->do:I

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->for:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    int-to-float v1, v4

    iget v3, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->new:I

    int-to-float v3, v3

    .line 9
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v4

    .line 10
    iget-object v4, v4, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {v0}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->try:I

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/BookPageTextView;->do(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->do:I

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->if:I

    .line 4
    iget p2, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->do:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    iget p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->do:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->do:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 6
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookPageTextView;->if:I

    return-void
.end method
