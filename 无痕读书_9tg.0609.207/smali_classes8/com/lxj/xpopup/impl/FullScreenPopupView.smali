.class public Lcom/lxj/xpopup/impl/FullScreenPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "FullScreenPopupView.java"


# instance fields
.field public case:I

.field public do:Landroid/animation/ArgbEvaluator;

.field public for:Landroid/widget/FrameLayout;

.field public if:Landroid/view/View;

.field public new:Landroid/graphics/Paint;

.field public try:Landroid/graphics/Rect;


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
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->do:Landroid/animation/ArgbEvaluator;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->new:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->case:I

    .line 5
    sget p1, Lcom/codelibrary/R$id;->fullPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->for:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->public:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->new:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->case:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->try:Landroid/graphics/Rect;

    .line 5
    iget-object v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->new:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public doDismissAnimation()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doDismissAnimation()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/impl/FullScreenPopupView;->if(Z)V

    return-void
.end method

.method public doShowAnimation()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/impl/FullScreenPopupView;->if(Z)V

    return-void
.end method

.method public getPopupAnimator()Lcom/apk/cv;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/hv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/apk/ov;->const:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/hv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_fullscreen_popup_view:I

    return v0
.end method

.method public if(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->public:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->do:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    sget v3, Lcom/apk/zu;->for:I

    .line 3
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    sget v2, Lcom/apk/zu;->for:I

    .line 4
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 5
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/lxj/xpopup/impl/FullScreenPopupView$do;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/impl/FullScreenPopupView$do;-><init>(Lcom/lxj/xpopup/impl/FullScreenPopupView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    sget v0, Lcom/apk/zu;->if:I

    int-to-long v0, v0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public initPopupContent()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->for:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->for:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->if:Landroid/view/View;

    .line 4
    iget-object v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->for:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->throws:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->default:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->new:Landroid/graphics/Paint;

    return-void
.end method
