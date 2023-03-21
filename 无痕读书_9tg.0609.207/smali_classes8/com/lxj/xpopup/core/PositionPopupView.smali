.class public Lcom/lxj/xpopup/core/PositionPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "PositionPopupView.java"


# instance fields
.field public do:Lcom/lxj/xpopup/widget/PartShadowContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/codelibrary/R$id;->attachPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/widget/PartShadowContainer;

    iput-object p1, p0, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopupAnimator()Lcom/apk/cv;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/dv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/apk/ov;->do:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/dv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_attach_popup_view:I

    return v0
.end method

.method public initPopupContent()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    new-instance v3, Lcom/lxj/xpopup/core/PositionPopupView$do;

    invoke-direct {v3, p0}, Lcom/lxj/xpopup/core/PositionPopupView$do;-><init>(Lcom/lxj/xpopup/core/PositionPopupView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/apk/pw;->for(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    return-void
.end method
