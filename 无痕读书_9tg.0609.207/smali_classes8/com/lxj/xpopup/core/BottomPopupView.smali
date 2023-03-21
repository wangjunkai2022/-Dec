.class public Lcom/lxj/xpopup/core/BottomPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "BottomPopupView.java"


# instance fields
.field public bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/codelibrary/R$id;->bottomPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/widget/SmartDragLayout;

    iput-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    return-void
.end method

.method public static synthetic access$001(Lcom/lxj/xpopup/core/BottomPopupView;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method public addInnerContent()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    sget-object v1, Lcom/apk/qv;->new:Lcom/apk/qv;

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/apk/ow;->if(Landroid/view/View;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :goto_0
    return-void
.end method

.method public doAfterShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    :goto_0
    return-void
.end method

.method public doDismissAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doDismissAnimation()V

    :goto_0
    return-void
.end method

.method public doShowAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->open()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    :goto_0
    return-void
.end method

.method public getAnimationDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getImplLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v0, v0, Lcom/apk/lv;->class:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getPopupAnimator()Lcom/apk/cv;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apk/hv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/apk/ov;->const:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/hv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    :goto_0
    return-object v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_bottom_popup_view:I

    return v0
.end method

.method public getTargetSizeView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initPopupContent()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->addInnerContent()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag(Z)V

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside(Z)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->hasShadowBg(Z)V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v1, v1, Lcom/apk/lv;->volatile:Z

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->throws:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->default:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    .line 11
    new-instance v3, Lcom/apk/pw$do;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/apk/pw$do;-><init>(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    new-instance v1, Lcom/lxj/xpopup/core/BottomPopupView$do;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BottomPopupView$do;-><init>(Lcom/lxj/xpopup/core/BottomPopupView;)V

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->setOnCloseListener(Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;)V

    .line 13
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    new-instance v1, Lcom/lxj/xpopup/core/BottomPopupView$if;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BottomPopupView$if;-><init>(Lcom/lxj/xpopup/core/BottomPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
