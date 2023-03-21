.class public Lcom/apk/ks0;
.super Lcom/apk/tr0;
.source "SkinCompatTextHelper.java"


# instance fields
.field public case:I

.field public final do:Landroid/widget/TextView;

.field public else:I

.field public for:I

.field public if:I

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/tr0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/ks0;->if:I

    .line 3
    iput v0, p0, Lcom/apk/ks0;->for:I

    .line 4
    iput v0, p0, Lcom/apk/ks0;->new:I

    .line 5
    iput v0, p0, Lcom/apk/ks0;->try:I

    .line 6
    iput v0, p0, Lcom/apk/ks0;->case:I

    .line 7
    iput v0, p0, Lcom/apk/ks0;->else:I

    .line 8
    iput-object p1, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    return-void
.end method

.method public static else(Landroid/widget/TextView;)Lcom/apk/ks0;
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/ls0;

    invoke-direct {v0, p0}, Lcom/apk/ls0;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method


# virtual methods
.method public break(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lskin/support/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/ks0;->if:I

    .line 4
    :cond_0
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColorHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColorHint:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/ks0;->for:I

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0}, Lcom/apk/ks0;->case()V

    .line 8
    invoke-virtual {p0}, Lcom/apk/ks0;->try()V

    return-void
.end method

.method public final case()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ks0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/ks0;->if:I

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/ks0;->if:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public for()V
    .locals 5

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
    iget-object v1, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/apk/ks0;->new:I

    invoke-static {v1, v4}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 9
    :cond_3
    iget v4, p0, Lcom/apk/ks0;->try:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/apk/ks0;->else:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/apk/ks0;->case:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/apk/ks0;->new:I

    if-eqz v4, :cond_5

    .line 10
    :cond_4
    iget-object v4, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v2, v3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public goto(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lskin/support/R$styleable;->SkinCompatTextHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3
    sget v3, Lskin/support/R$styleable;->SkinCompatTextHelper_android_textAppearance:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 4
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/apk/ks0;->try:I

    .line 6
    :cond_0
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableTop:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableTop:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/apk/ks0;->else:I

    .line 8
    :cond_1
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableRight:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableRight:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/apk/ks0;->case:I

    .line 10
    :cond_2
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    sget v4, Lskin/support/R$styleable;->SkinCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/apk/ks0;->new:I

    .line 12
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_6

    .line 13
    sget-object v1, Lskin/support/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 14
    sget v3, Lskin/support/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    sget v3, Lskin/support/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/apk/ks0;->if:I

    .line 16
    :cond_4
    sget v3, Lskin/support/R$styleable;->SkinTextAppearance_android_textColorHint:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    sget v3, Lskin/support/R$styleable;->SkinTextAppearance_android_textColorHint:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/apk/ks0;->for:I

    .line 18
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    :cond_6
    sget-object v1, Lskin/support/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/ks0;->if:I

    .line 22
    :cond_7
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColorHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 23
    sget p2, Lskin/support/R$styleable;->SkinTextAppearance_android_textColorHint:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/ks0;->for:I

    .line 24
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0}, Lcom/apk/ks0;->new()V

    return-void
.end method

.method public abstract if()V
.end method

.method public new()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/ks0;->if()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/ks0;->case()V

    .line 3
    invoke-virtual {p0}, Lcom/apk/ks0;->try()V

    return-void
.end method

.method public abstract this(IIII)V
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
.end method

.method public final try()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ks0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/ks0;->for:I

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/ks0;->for:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/ks0;->do:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
