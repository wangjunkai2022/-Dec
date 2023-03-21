.class public Lcom/biquge/ebook/app/widget/DrawableTextView;
.super Lcom/apk/ms0;
.source "DrawableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/DrawableTextView$DrawGravity;
    }
.end annotation


# instance fields
.field public for:[Landroid/graphics/drawable/Drawable;

.field public new:[I

.field public try:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v0, 0x1010084

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/ms0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    const/16 v1, 0x11

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    sget-object v1, Lcom/biquge/ebook/app/R$styleable;->DrawableTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, p2, v4

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, p2, v5

    .line 10
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, p2, v1

    .line 11
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, p2, v3

    .line 12
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, p2, v4

    .line 13
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, p2, v5

    .line 14
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, p2, v1

    .line 15
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    aput v0, p2, v3

    .line 16
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    aput v0, p2, v4

    .line 17
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    aput v0, p2, v5

    .line 18
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    aput v0, p2, v1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v3, v1, v2

    aget v1, v1, v4

    sub-int/2addr v3, v1

    div-int/2addr v3, v4

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v1, v1, v2

    add-int/2addr v1, v0

    div-int/lit8 v3, v1, 0x2

    goto :goto_0

    .line 6
    :cond_1
    aget-object v1, v1, v4

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v1, v1, v4

    add-int/2addr v1, v0

    neg-int v1, v1

    div-int/lit8 v3, v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    const/4 v7, 0x3

    if-eqz v6, :cond_3

    aget-object v1, v1, v7

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v6, v1, v5

    aget v1, v1, v7

    sub-int/2addr v6, v1

    div-int/2addr v6, v4

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v1, v1, v5

    add-int/2addr v1, v0

    div-int/lit8 v6, v1, 0x2

    goto :goto_1

    .line 12
    :cond_4
    aget-object v1, v1, v7

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v1, v1, v7

    sub-int/2addr v1, v0

    neg-int v1, v1

    div-int/lit8 v6, v1, 0x2

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    int-to-float v1, v3

    int-to-float v3, v6

    .line 14
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/2addr v3, v4

    int-to-float v1, v3

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v6, v3

    div-int/2addr v6, v4

    int-to-float v3, v6

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 20
    iget v10, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v9

    div-float/2addr v10, v8

    .line 21
    iget-object v8, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v8, v2

    if-eqz v9, :cond_7

    int-to-float v9, v0

    sub-float v9, v1, v9

    sub-float/2addr v9, v6

    .line 22
    iget-object v11, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v12, v11, v2

    int-to-float v12, v12

    sub-float/2addr v9, v12

    float-to-int v9, v9

    .line 23
    iget-object v12, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v13, v12, v2

    div-int/2addr v13, v4

    int-to-float v13, v13

    sub-float v13, v3, v13

    float-to-int v13, v13

    .line 24
    aget-object v8, v8, v2

    aget v11, v11, v2

    add-int/2addr v11, v9

    aget v12, v12, v2

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    iget-object v8, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v8, v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 28
    :cond_7
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v2, v4

    if-eqz v8, :cond_8

    add-float/2addr v6, v1

    int-to-float v8, v0

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 29
    iget-object v8, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v9, v8, v4

    div-int/2addr v9, v4

    int-to-float v9, v9

    sub-float v9, v3, v9

    float-to-int v9, v9

    .line 30
    aget-object v2, v2, v4

    iget-object v11, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v11, v11, v4

    add-int/2addr v11, v6

    aget v8, v8, v4

    add-int/2addr v8, v9

    invoke-virtual {v2, v6, v9, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    :cond_8
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v2, v5

    if-eqz v6, :cond_9

    .line 35
    iget-object v6, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v8, v6, v5

    div-int/2addr v8, v4

    int-to-float v8, v8

    sub-float v8, v1, v8

    float-to-int v8, v8

    sub-float v9, v3, v10

    int-to-float v11, v0

    sub-float/2addr v9, v11

    float-to-int v9, v9

    .line 36
    aget-object v2, v2, v5

    iget-object v11, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v11, v11, v5

    sub-int v11, v9, v11

    aget v6, v6, v5

    add-int/2addr v6, v8

    invoke-virtual {v2, v8, v11, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 40
    :cond_9
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v7

    if-eqz v5, :cond_a

    .line 41
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->new:[I

    aget v6, v5, v7

    div-int/2addr v6, v4

    int-to-float v4, v6

    sub-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr v3, v10

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 42
    aget-object v2, v2, v7

    aget v3, v5, v7

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->try:[I

    aget v4, v4, v7

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/DrawableTextView;->for:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method
