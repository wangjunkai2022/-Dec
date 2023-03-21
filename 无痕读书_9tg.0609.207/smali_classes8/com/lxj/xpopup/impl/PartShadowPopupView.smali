.class public abstract Lcom/lxj/xpopup/impl/PartShadowPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "PartShadowPopupView.java"


# instance fields
.field public do:Z


# virtual methods
.method public getPopupAnimator()Lcom/apk/cv;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/hv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->do:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/apk/ov;->const:Lcom/apk/ov;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/apk/ov;->class:Lcom/apk/ov;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/apk/hv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_partshadow_popup_view:I

    return v0
.end method

.method public if()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 2
    iget-object v0, v0, Lcom/apk/lv;->else:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 6
    iget-object v3, v3, Lcom/apk/lv;->else:Landroid/view/View;

    .line 7
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v2, v4

    iget-object v9, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 9
    iget-object v9, v9, Lcom/apk/lv;->else:Landroid/view/View;

    .line 10
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v2, v2, v6

    iget-object v8, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 11
    iget-object v8, v8, Lcom/apk/lv;->else:Landroid/view/View;

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v3, v5, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v2, Lcom/apk/lv;->finally:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    div-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v1

    sub-int/2addr v2, v5

    .line 15
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v5

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 16
    :cond_0
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v5, v5, Lcom/apk/lv;->throws:I

    add-int/2addr v2, v5

    .line 17
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v7

    if-le v5, v7, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v7

    sub-int/2addr v5, v7

    sub-int/2addr v2, v5

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v5

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    :goto_0
    iget v2, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v1

    add-int/2addr v5, v2

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v1

    if-gt v5, v2, :cond_2

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->native:Lcom/apk/pv;

    sget-object v2, Lcom/apk/pv;->for:Lcom/apk/pv;

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->native:Lcom/apk/pv;

    sget-object v2, Lcom/apk/pv;->new:Lcom/apk/pv;

    if-eq v1, v2, :cond_4

    .line 22
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    iput-boolean v6, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->do:Z

    .line 24
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x50

    .line 26
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 29
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 31
    iput-boolean v4, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->do:Z

    .line 32
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 33
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    .line 35
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    if-eqz v3, :cond_5

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 38
    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :goto_1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->default:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 41
    throw v0

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView must not be null for PartShadowPopupView\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initPopupContent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    new-instance p1, Lcom/lxj/xpopup/impl/PartShadowPopupView$do;

    invoke-direct {p1, p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView$do;-><init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v1, v1, Lcom/apk/lv;->abstract:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/apk/iv;->if(Landroid/view/MotionEvent;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean p1, p1, Lcom/apk/lv;->abstract:Z

    return p1
.end method
