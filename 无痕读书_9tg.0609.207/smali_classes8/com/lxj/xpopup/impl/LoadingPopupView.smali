.class public Lcom/lxj/xpopup/impl/LoadingPopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "LoadingPopupView.java"


# instance fields
.field public do:Landroid/widget/TextView;

.field public if:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->addInnerContent()V

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_center_impl_loading:I

    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->if:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->if:Ljava/lang/CharSequence;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/LoadingPopupView;->this()V

    return-object p0
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

    iput-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->do:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 4
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const-string v1, "#dd111111"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v2, v2, Lcom/apk/lv;->final:F

    invoke-static {v1, v2}, Lcom/apk/pw;->case(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/LoadingPopupView;->this()V

    return-void
.end method

.method public this()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->if:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->do:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/lxj/xpopup/impl/LoadingPopupView$do;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/impl/LoadingPopupView$do;-><init>(Lcom/lxj/xpopup/impl/LoadingPopupView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
