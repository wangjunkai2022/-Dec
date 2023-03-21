.class public Lcom/apk/bs0;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "SkinCompatRadioButton.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:Lcom/apk/ks0;

.field public for:Lcom/apk/mr0;

.field public if:Lcom/apk/qr0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lskin/support/appcompat/R$attr;->radioButtonStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/apk/qr0;

    invoke-direct {p1, p0}, Lcom/apk/qr0;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lcom/apk/bs0;->if:Lcom/apk/qr0;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/apk/qr0;->for(Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p0}, Lcom/apk/ks0;->else(Landroid/widget/TextView;)Lcom/apk/ks0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/bs0;->do:Lcom/apk/ks0;

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/apk/ks0;->goto(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Lcom/apk/mr0;

    invoke-direct {p1, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apk/bs0;->for:Lcom/apk/mr0;

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/bs0;->for:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/bs0;->if:Lcom/apk/qr0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/qr0;->if()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/bs0;->do:Lcom/apk/ks0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/apk/ks0;->new()V

    :cond_2
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/bs0;->for:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/apk/mr0;->if:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/bs0;->if:Lcom/apk/qr0;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/apk/qr0;->if:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/qr0;->if()V

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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/apk/bs0;->do:Lcom/apk/ks0;

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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/apk/bs0;->do:Lcom/apk/ks0;

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

.method public setTextAppearance(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/apk/bs0;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/RadioButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/apk/bs0;->do:Lcom/apk/ks0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/apk/ks0;->break(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
