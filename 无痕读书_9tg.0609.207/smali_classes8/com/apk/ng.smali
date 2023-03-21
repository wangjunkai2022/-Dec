.class public Lcom/apk/ng;
.super Landroid/view/View;
.source "BookTextView.java"


# instance fields
.field public break:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public case:I

.field public catch:F

.field public class:F

.field public const:F

.field public do:I

.field public else:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public goto:Ljava/lang/String;

.field public if:F

.field public new:I

.field public this:Ljava/lang/String;

.field public try:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final do(Landroid/graphics/Canvas;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/apk/ng;->try:Ljava/util/Vector;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/apk/ng;->try:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "LOAD_AD_CHAPTER_CONTENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0xa

    return p1

    :cond_1
    :goto_0
    return v0

    .line 3
    :cond_2
    iget v1, p0, Lcom/apk/ng;->catch:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 4
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/apk/ng;->catch:F

    .line 7
    :cond_3
    iget v1, p0, Lcom/apk/ng;->class:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 8
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    iget-object v3, p0, Lcom/apk/ng;->this:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/apk/ca;->if(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/apk/ng;->class:F

    .line 9
    :cond_4
    iget v1, p0, Lcom/apk/ng;->new:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 10
    :try_start_0
    iget v1, p0, Lcom/apk/ng;->const:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 11
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/apk/ng;->const:F

    .line 14
    :cond_5
    iget v1, p0, Lcom/apk/ng;->const:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v1, v1, v4

    add-float/2addr v1, v2

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/apk/ng;->for:Ljava/lang/String;

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 17
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 18
    iget v5, p0, Lcom/apk/ng;->const:F

    add-float/2addr v1, v5

    .line 19
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v5

    .line 20
    iget-object v5, v5, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    .line 21
    iget v6, p0, Lcom/apk/ng;->if:F

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/apk/ng;->case:I

    int-to-float v7, v7

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v8

    .line 23
    iget-object v8, v8, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 25
    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    .line 27
    :cond_7
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v5

    .line 28
    iget v5, v5, Lcom/apk/ca;->try:F

    add-float/2addr v1, v5

    goto :goto_1

    .line 29
    :cond_8
    :goto_2
    iget v2, p0, Lcom/apk/ng;->catch:F

    add-float/2addr v1, v2

    .line 30
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v2

    .line 31
    iget v2, v2, Lcom/apk/ca;->try:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    mul-float v2, v2, v4

    add-float/2addr v2, v1

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_3

    :catch_1
    move-exception v1

    .line 32
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/apk/ng;->try:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_c

    .line 34
    :try_start_2
    iget-object v3, p0, Lcom/apk/ng;->try:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "LOAD_FAILED"

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    .line 36
    :cond_a
    iget v4, p0, Lcom/apk/ng;->catch:F

    add-float/2addr v2, v4

    if-eqz p1, :cond_b

    .line 37
    iget v4, p0, Lcom/apk/ng;->case:I

    int-to-float v4, v4

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v5

    .line 38
    iget-object v5, v5, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 40
    :cond_b
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    .line 41
    iget v3, v3, Lcom/apk/ca;->try:F

    add-float/2addr v2, v3

    .line 42
    iget v3, p0, Lcom/apk/ng;->class:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-float/2addr v2, v3

    goto :goto_6

    :catch_2
    move-exception v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    float-to-int p1, v2

    return p1
.end method

.method public getContentHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/ng;->do:I

    return v0
.end method

.method public if(Lcom/biquge/ebook/app/bean/BookChapter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "_"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getNovelid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/ng;->else:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/ng;->goto:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/ng;->try:Ljava/util/Vector;

    .line 4
    iput-object p2, p0, Lcom/apk/ng;->for:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result p1

    iput p1, p0, Lcom/apk/ng;->new:I

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/apk/ng;->else:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/apk/ng;->goto:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/apk/ng;->new:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ng;->this:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/apk/ng;->break:Lcom/apk/gg;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/apk/ng;->break:Lcom/apk/gg;

    invoke-virtual {p1}, Lcom/apk/gg;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/apk/ng;->catch:F

    .line 10
    iput p1, p0, Lcom/apk/ng;->const:F

    .line 11
    iput p1, p0, Lcom/apk/ng;->class:F

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/apk/ng;->do(Landroid/graphics/Canvas;)I

    move-result p1

    iput p1, p0, Lcom/apk/ng;->do:I

    if-lez p1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 15
    iget p2, p0, Lcom/apk/ng;->do:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ng;->try:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/ng;->do(Landroid/graphics/Canvas;)I

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ng;->do:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    :cond_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
