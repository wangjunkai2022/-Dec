.class public Lcom/biquge/ebook/app/widget/BookTitleTextView;
.super Landroid/view/View;
.source "BookTitleTextView.java"


# instance fields
.field public do:Ljava/lang/String;

.field public if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42080000    # 34.0f

    .line 2
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->if:I

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->do:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->do:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->if:I

    int-to-float v2, v2

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    .line 3
    iget-object v3, v3, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->do:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->do:Ljava/lang/String;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookTitleTextView;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
