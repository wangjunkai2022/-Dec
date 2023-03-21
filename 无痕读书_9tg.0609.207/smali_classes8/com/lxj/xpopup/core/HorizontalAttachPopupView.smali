.class public Lcom/lxj/xpopup/core/HorizontalAttachPopupView;
.super Lcom/lxj/xpopup/core/AttachPopupView;
.source "HorizontalAttachPopupView.java"


# virtual methods
.method public final break()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->native:Lcom/apk/pv;

    sget-object v1, Lcom/apk/pv;->do:Lcom/apk/pv;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->native:Lcom/apk/pv;

    sget-object v1, Lcom/apk/pv;->if:Lcom/apk/pv;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPopupAnimator()Lcom/apk/cv;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/ev;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/apk/ov;->import:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/ev;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/ev;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/apk/ov;->final:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/ev;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    :goto_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/apk/ev;->goto:Z

    return-object v0
.end method

.method public if()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->throw(Landroid/content/Context;)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v4, v3, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_4

    .line 5
    iget v3, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v0, :cond_2

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_1
    neg-float v0, v0

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->break()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 9
    :goto_2
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto/16 :goto_7

    :cond_4
    new-array v4, v7, [I

    .line 10
    iget-object v3, v3, Lcom/apk/lv;->else:Landroid/view/View;

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    aget v8, v4, v6

    aget v9, v4, v5

    aget v10, v4, v6

    iget-object v11, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 13
    iget-object v11, v11, Lcom/apk/lv;->else:Landroid/view/View;

    .line 14
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v10

    aget v4, v4, v5

    iget-object v10, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 15
    iget-object v10, v10, Lcom/apk/lv;->else:Landroid/view/View;

    .line 16
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v4

    invoke-direct {v3, v8, v9, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v8

    div-int/2addr v4, v7

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v8

    div-int/2addr v8, v7

    if-le v4, v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v0, :cond_7

    if-eqz v5, :cond_6

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    iget v1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    add-int/2addr v0, v1

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    sub-int/2addr v0, v1

    :goto_4
    neg-int v0, v0

    :goto_5
    int-to-float v0, v0

    goto :goto_6

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->break()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    sub-int/2addr v0, v1

    goto :goto_5

    :cond_8
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    add-int/2addr v0, v1

    goto :goto_5

    .line 22
    :goto_6
    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v7

    add-int/2addr v3, v1

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    .line 23
    :goto_7
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 24
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public initPopupContent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->initPopupContent()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v0, Lcom/apk/lv;->default:I

    iput v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    .line 3
    iget v0, v0, Lcom/apk/lv;->throws:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/apk/pw;->goto(Landroid/content/Context;F)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    return-void
.end method
