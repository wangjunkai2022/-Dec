.class public Lcom/apk/ns0;
.super Landroidx/appcompat/widget/Toolbar;
.source "SkinCompatToolbar.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public new:Lcom/apk/mr0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lskin/support/appcompat/R$attr;->toolbarStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/apk/ns0;->do:I

    .line 4
    iput v1, p0, Lcom/apk/ns0;->if:I

    .line 5
    iput v1, p0, Lcom/apk/ns0;->for:I

    .line 6
    new-instance v2, Lcom/apk/mr0;

    invoke-direct {v2, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/apk/ns0;->new:Lcom/apk/mr0;

    .line 7
    invoke-virtual {v2, p2, v0}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    .line 8
    sget-object v2, Lskin/support/appcompat/R$styleable;->Toolbar:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 9
    sget v3, Lskin/support/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/apk/ns0;->for:I

    .line 10
    sget v3, Lskin/support/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 11
    sget v4, Lskin/support/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 12
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    .line 13
    sget-object v2, Lskin/support/appcompat/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 14
    sget v3, Lskin/support/appcompat/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/apk/ns0;->do:I

    .line 15
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    if-eqz v4, :cond_1

    .line 16
    sget-object v2, Lskin/support/appcompat/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 17
    sget v3, Lskin/support/appcompat/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/apk/ns0;->if:I

    .line 18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    :cond_1
    sget-object v2, Lskin/support/appcompat/R$styleable;->Toolbar:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    sget p2, Lskin/support/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    sget p2, Lskin/support/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/ns0;->do:I

    .line 22
    :cond_2
    sget p2, Lskin/support/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    sget p2, Lskin/support/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/ns0;->if:I

    .line 24
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0}, Lcom/apk/ns0;->new()V

    .line 26
    invoke-virtual {p0}, Lcom/apk/ns0;->for()V

    .line 27
    invoke-virtual {p0}, Lcom/apk/ns0;->if()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ns0;->new:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/ns0;->new()V

    .line 4
    invoke-virtual {p0}, Lcom/apk/ns0;->for()V

    .line 5
    invoke-virtual {p0}, Lcom/apk/ns0;->if()V

    return-void
.end method

.method public final for()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ns0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/ns0;->if:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/ns0;->if:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    :cond_0
    return-void
.end method

.method public final if()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ns0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/ns0;->for:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/ns0;->for:I

    invoke-static {v0, v1}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final new()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ns0;->do:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/ns0;->do:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/ns0;->do:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/ns0;->new:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/apk/mr0;->if:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    :cond_0
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 2
    iput p1, p0, Lcom/apk/ns0;->for:I

    .line 3
    invoke-virtual {p0}, Lcom/apk/ns0;->if()V

    return-void
.end method
