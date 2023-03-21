.class public Lcom/apk/ur0;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "SkinCompatImageButton.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:Lcom/apk/mr0;

.field public if:Lcom/apk/vr0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->imageButtonStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/apk/mr0;

    invoke-direct {p1, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apk/ur0;->do:Lcom/apk/mr0;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/apk/vr0;

    invoke-direct {p1, p0}, Lcom/apk/vr0;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/apk/ur0;->if:Lcom/apk/vr0;

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/apk/vr0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ur0;->do:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/ur0;->if:Lcom/apk/vr0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/vr0;->if()V

    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/ur0;->do:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/apk/mr0;->if:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/ur0;->if:Lcom/apk/vr0;

    if-eqz v0, :cond_0

    .line 2
    iput p1, v0, Lcom/apk/vr0;->if:I

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/apk/vr0;->for:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/vr0;->if()V

    :cond_0
    return-void
.end method
