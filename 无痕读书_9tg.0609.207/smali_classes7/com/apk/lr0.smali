.class public Lcom/apk/lr0;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SkinCompatAutoCompleteTextView.java"

# interfaces
.implements Lcom/apk/js0;


# static fields
.field public static final new:[I


# instance fields
.field public do:I

.field public for:Lcom/apk/mr0;

.field public if:Lcom/apk/ks0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/apk/lr0;->new:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    sget v0, Lskin/support/appcompat/R$attr;->autoCompleteTextViewStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/apk/lr0;->do:I

    .line 4
    sget-object v2, Lcom/apk/lr0;->new:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/lr0;->do:I

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-virtual {p0}, Lcom/apk/lr0;->if()V

    .line 9
    new-instance p1, Lcom/apk/mr0;

    invoke-direct {p1, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apk/lr0;->for:Lcom/apk/mr0;

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    .line 11
    invoke-static {p0}, Lcom/apk/ks0;->else(Landroid/widget/TextView;)Lcom/apk/ks0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/lr0;->if:Lcom/apk/ks0;

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/apk/ks0;->goto(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/lr0;->for:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/lr0;->if:Lcom/apk/ks0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/ks0;->new()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/apk/lr0;->if()V

    return-void
.end method

.method public final if()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/lr0;->do:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/lr0;->do:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/lr0;->do:I

    invoke-static {v0, v1}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/lr0;->for:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/apk/mr0;->if:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/apk/lr0;->if:Lcom/apk/ks0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apk/ks0;->this(IIII)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/apk/lr0;->if:Lcom/apk/ks0;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/apk/ks0;->try:I

    .line 4
    iput p2, v0, Lcom/apk/ks0;->else:I

    .line 5
    iput p3, v0, Lcom/apk/ks0;->case:I

    .line 6
    iput p4, v0, Lcom/apk/ks0;->new:I

    .line 7
    invoke-virtual {v0}, Lcom/apk/ks0;->for()V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 2
    iput p1, p0, Lcom/apk/lr0;->do:I

    .line 3
    invoke-virtual {p0}, Lcom/apk/lr0;->if()V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/apk/lr0;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/apk/lr0;->if:Lcom/apk/ks0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/apk/ks0;->break(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
