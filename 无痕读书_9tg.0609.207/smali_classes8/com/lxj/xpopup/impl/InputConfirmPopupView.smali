.class public Lcom/lxj/xpopup/impl/InputConfirmPopupView;
.super Lcom/lxj/xpopup/impl/ConfirmPopupView;
.source "InputConfirmPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final:Ljava/lang/CharSequence;

.field public super:Lcom/apk/sv;

.field public throw:Lcom/apk/wv;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lxj/xpopup/impl/ConfirmPopupView;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public applyDarkTheme()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;->applyDarkTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    const-string v1, "#888888"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    const-string v1, "#dddddd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public applyLightTheme()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;->applyLightTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    const-string v1, "#888888"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    return-object v0
.end method

.method public initPopupContent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;->initPopupContent()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    .line 9
    sget v1, Lcom/apk/zu;->do:I

    .line 10
    new-instance v1, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;-><init>(Lcom/lxj/xpopup/impl/InputConfirmPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->super:Lcom/apk/sv;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apk/sv;->onCancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->case:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->throw:Lcom/apk/wv;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apk/wv;->do(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->new:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
