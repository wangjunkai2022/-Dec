.class public Lcom/biquge/ebook/app/widget/ExampleFontTextView;
.super Lcom/apk/os0;
.source "ExampleFontTextView.java"


# instance fields
.field public for:Landroid/graphics/Paint;

.field public if:I

.field public new:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/os0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->if:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    const/high16 p2, 0x41900000    # 18.0f

    .line 4
    invoke-static {p2}, Lcom/apk/eg;->break(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    const p2, 0x7f060068

    invoke-static {p2}, Lcom/apk/ze;->p(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x7f100086

    .line 6
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "#"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->new:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 3
    iget v1, v1, Lcom/apk/ca;->try:F

    .line 4
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/apk/ca;->if(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->new:[Ljava/lang/String;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 6
    iget-object v6, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 7
    iget v7, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->if:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v0, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v6

    .line 9
    iget v6, v6, Lcom/apk/ca;->try:F

    .line 10
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/apk/ca;->if(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v6, v5

    add-float/2addr v6, v0

    float-to-int v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->for:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
