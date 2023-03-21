.class public abstract Lcom/lxj/xpopup/core/AttachPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "AttachPopupView.java"


# instance fields
.field public break:I

.field public case:I

.field public catch:F

.field public do:I

.field public else:F

.field public for:Lcom/lxj/xpopup/widget/PartShadowContainer;

.field public goto:F

.field public if:I

.field public new:Z

.field public this:F

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    .line 3
    iput p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->case:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    iput p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->goto:F

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->this:F

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    .line 8
    iput p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->catch:F

    .line 9
    sget p1, Lcom/codelibrary/R$id;->attachPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/widget/PartShadowContainer;

    iput-object p1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

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

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getPopupAnimator()Lcom/apk/cv;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->this()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/apk/ev;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/apk/ov;->return:Lcom/apk/ov;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/apk/ov;->native:Lcom/apk/ov;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/apk/ev;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    goto :goto_2

    .line 3
    :cond_1
    new-instance v0, Lcom/apk/ev;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/apk/ov;->super:Lcom/apk/ov;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/apk/ov;->while:Lcom/apk/ov;

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/apk/ev;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    :goto_2
    return-object v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_attach_popup_view:I

    return v0
.end method

.method public if()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/apk/pw;->goto(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->throw(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v2, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    .line 4
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->catch:F

    .line 5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->this:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->new:Z

    goto :goto_2

    .line 7
    :cond_2
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->new:Z

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    .line 9
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->this()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v2, v2, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v3, v3, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    :goto_4
    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 12
    iget-boolean v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v4, v4, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v3, v3, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    :goto_5
    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 13
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 14
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v3, :cond_7

    .line 16
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/lxj/xpopup/core/AttachPopupView$if;

    invoke-direct {v2, p0, v0}, Lcom/lxj/xpopup/core/AttachPopupView$if;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_8
    new-array v2, v3, [I

    .line 19
    iget-object v1, v1, Lcom/apk/lv;->else:Landroid/view/View;

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 21
    new-instance v1, Landroid/graphics/Rect;

    aget v6, v2, v5

    aget v7, v2, v4

    aget v8, v2, v5

    iget-object v9, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 22
    iget-object v9, v9, Lcom/apk/lv;->else:Landroid/view/View;

    .line 23
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v2, v2, v4

    iget-object v8, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 24
    iget-object v8, v8, Lcom/apk/lv;->else:Landroid/view/View;

    .line 25
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v1, v6, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 26
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v6

    div-int/2addr v2, v3

    .line 27
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    iget v7, p0, Lcom/lxj/xpopup/core/AttachPopupView;->this:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    .line 28
    :goto_6
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/2addr v7, v3

    int-to-float v7, v7

    iput v7, p0, Lcom/lxj/xpopup/core/AttachPopupView;->catch:F

    if-eqz v6, :cond_b

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    iput-boolean v6, p0, Lcom/lxj/xpopup/core/AttachPopupView;->new:Z

    goto :goto_8

    .line 30
    :cond_b
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->new:Z

    .line 31
    :goto_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v6

    div-int/2addr v6, v3

    if-ge v2, v6, :cond_c

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    .line 32
    iget-boolean v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v2, :cond_11

    .line 33
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->this()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    goto :goto_a

    .line 35
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    :goto_a
    sub-int/2addr v3, v4

    .line 36
    iget-boolean v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    goto :goto_b

    :cond_e
    iget v4, v1, Landroid/graphics/Rect;->right:I

    :goto_b
    iget v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->break:I

    sub-int/2addr v4, v5

    .line 37
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v3, :cond_f

    .line 38
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    :cond_f
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v3, v4, :cond_10

    .line 40
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    :cond_10
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_11
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lxj/xpopup/core/AttachPopupView$for;

    invoke-direct {v3, p0, v0, v1}, Lcom/lxj/xpopup/core/AttachPopupView$for;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;ZLandroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_c
    return-void
.end method

.method public initPopupContent()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->addInnerContent()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 4
    iget-object v1, v0, Lcom/apk/lv;->else:Landroid/view/View;

    if-nez v1, :cond_2

    .line 5
    iget-object v0, v0, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView() or touchPoint must not be null for AttachPopupView \uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v0, v0, Lcom/apk/lv;->default:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/apk/pw;->goto(Landroid/content/Context;F)I

    move-result v0

    :cond_3
    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v0, v0, Lcom/apk/lv;->throws:I

    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    .line 9
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 10
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->default:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 11
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v2, Lcom/apk/lv;->continue:Z

    if-eqz v2, :cond_5

    sget v2, Lcom/codelibrary/R$color;->_xpopup_dark_color:I

    goto :goto_1

    :cond_5
    sget v2, Lcom/codelibrary/R$color;->_xpopup_light_color:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v2, v2, Lcom/apk/lv;->final:F

    invoke-static {v1, v2}, Lcom/apk/pw;->case(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->for:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/apk/pw;->goto(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    new-instance v3, Lcom/lxj/xpopup/core/AttachPopupView$do;

    invoke-direct {v3, p0}, Lcom/lxj/xpopup/core/AttachPopupView$do;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/apk/pw;->for(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    return-void
.end method

.method public this()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v1, v0, Lcom/apk/lv;->protected:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->catch:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->new:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/apk/lv;->native:Lcom/apk/pv;

    sget-object v1, Lcom/apk/pv;->for:Lcom/apk/pv;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->native:Lcom/apk/pv;

    sget-object v1, Lcom/apk/pv;->new:Lcom/apk/pv;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
