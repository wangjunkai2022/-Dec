.class public Lcom/apk/ls0;
.super Lcom/apk/ks0;
.source "SkinCompatTextHelperV17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# instance fields
.field public goto:I

.field public this:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/ks0;-><init>(Landroid/widget/TextView;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/apk/ls0;->goto:I

    .line 3
    iput p1, p0, Lcom/apk/ls0;->this:I

    return-void
.end method


# virtual methods
.method public goto(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lskin/support/R$styleable;->SkinCompatTextHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v1, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget v1, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/ls0;->goto:I

    .line 5
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    iput v1, p0, Lcom/apk/ls0;->goto:I

    .line 6
    :cond_0
    sget v1, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget v1, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/ls0;->this:I

    .line 8
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    iput v1, p0, Lcom/apk/ls0;->this:I

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-super {p0, p1, p2}, Lcom/apk/ks0;->goto(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public if()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/apk/ks0;->try:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/ks0;->try:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/apk/ks0;->try:I

    invoke-static {v0, v2}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget v2, p0, Lcom/apk/ks0;->else:I

    invoke-static {v2}, Lcom/apk/tr0;->do(I)I

    move-result v2

    iput v2, p0, Lcom/apk/ks0;->else:I

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/apk/ks0;->else:I

    invoke-static {v2, v3}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 5
    :goto_1
    iget v3, p0, Lcom/apk/ks0;->case:I

    invoke-static {v3}, Lcom/apk/tr0;->do(I)I

    move-result v3

    iput v3, p0, Lcom/apk/ks0;->case:I

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/apk/ks0;->case:I

    invoke-static {v3, v4}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 7
    :goto_2
    iget v4, p0, Lcom/apk/ks0;->new:I

    invoke-static {v4}, Lcom/apk/tr0;->do(I)I

    move-result v4

    iput v4, p0, Lcom/apk/ks0;->new:I

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/apk/ks0;->new:I

    invoke-static {v4, v5}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v1

    .line 9
    :goto_3
    iget v5, p0, Lcom/apk/ls0;->goto:I

    if-eqz v5, :cond_4

    .line 10
    iget-object v5, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/apk/ls0;->goto:I

    invoke-static {v5, v6}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v5

    .line 11
    :goto_5
    iget v5, p0, Lcom/apk/ls0;->this:I

    if-eqz v5, :cond_6

    .line 12
    iget-object v1, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/apk/ls0;->this:I

    invoke-static {v1, v5}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, v1

    .line 13
    :goto_6
    iget v1, p0, Lcom/apk/ks0;->try:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/apk/ks0;->else:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/apk/ks0;->case:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/apk/ks0;->new:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/apk/ls0;->goto:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/apk/ls0;->this:I

    if-eqz v1, :cond_9

    .line 14
    :cond_8
    iget-object v1, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public this(IIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/apk/ls0;->goto:I

    .line 2
    iput p2, p0, Lcom/apk/ks0;->else:I

    .line 3
    iput p3, p0, Lcom/apk/ls0;->this:I

    .line 4
    iput p4, p0, Lcom/apk/ks0;->new:I

    .line 5
    invoke-virtual {p0}, Lcom/apk/ls0;->if()V

    return-void
.end method
