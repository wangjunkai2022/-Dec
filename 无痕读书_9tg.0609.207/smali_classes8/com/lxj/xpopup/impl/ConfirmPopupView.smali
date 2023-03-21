.class public Lcom/lxj/xpopup/impl/ConfirmPopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "ConfirmPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public break:Ljava/lang/CharSequence;

.field public case:Landroid/widget/TextView;

.field public catch:Ljava/lang/CharSequence;

.field public class:Landroid/widget/EditText;

.field public const:Z

.field public do:Lcom/apk/sv;

.field public else:Ljava/lang/CharSequence;

.field public for:Landroid/widget/TextView;

.field public goto:Ljava/lang/CharSequence;

.field public if:Lcom/apk/uv;

.field public new:Landroid/widget/TextView;

.field public this:Ljava/lang/CharSequence;

.field public try:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->const:Z

    .line 3
    iput p2, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    .line 4
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->addInnerContent()V

    return-void
.end method


# virtual methods
.method public applyDarkTheme()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyDarkTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->for:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->case:Landroid/widget/TextView;

    .line 6
    sget v1, Lcom/apk/zu;->do:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public applyLightTheme()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyLightTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->for:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_title_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_content_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_cancel_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->case:Landroid/widget/TextView;

    .line 6
    sget v1, Lcom/apk/zu;->do:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getConfirmTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getContentTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getImplLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_center_impl_confirm:I

    :goto_0
    return v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public initPopupContent()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->initPopupContent()V

    .line 2
    sget v0, Lcom/codelibrary/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->for:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/codelibrary/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->new:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/codelibrary/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/codelibrary/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->case:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->new:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 7
    sget v0, Lcom/codelibrary/R$id;->et_input:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->case:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->for:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->new:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->case:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_3
    iget-boolean v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->const:Z

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyTheme()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->try:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->do:Lcom/apk/sv;

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
    iget-object p1, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->if:Lcom/apk/uv;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/apk/uv;->onConfirm()V

    .line 6
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
