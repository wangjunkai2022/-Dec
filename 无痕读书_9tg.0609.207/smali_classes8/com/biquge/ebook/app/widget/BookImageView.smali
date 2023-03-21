.class public Lcom/biquge/ebook/app/widget/BookImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BookImageView.java"


# instance fields
.field public do:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3fa66666    # 1.3f

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/BookImageView;->do:F

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v3, v6, :cond_0

    .line 5
    iget v7, p0, Lcom/biquge/ebook/app/widget/BookImageView;->do:F

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_0

    int-to-float p2, v0

    mul-float p2, p2, v7

    add-float/2addr p2, v4

    float-to-int p2, p2

    .line 6
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_0
    if-eq v1, v6, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v7, p0, Lcom/biquge/ebook/app/widget/BookImageView;->do:F

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    int-to-float p1, v2

    .line 8
    iget v0, p0, Lcom/biquge/ebook/app/widget/BookImageView;->do:F

    div-float/2addr p1, v0

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 9
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/BookImageView;->do:F

    return-void
.end method
