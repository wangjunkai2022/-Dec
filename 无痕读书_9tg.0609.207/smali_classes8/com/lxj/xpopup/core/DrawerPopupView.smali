.class public abstract Lcom/lxj/xpopup/core/DrawerPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "DrawerPopupView.java"


# instance fields
.field public case:Landroid/animation/ArgbEvaluator;

.field public do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

.field public else:I

.field public for:F

.field public goto:I

.field public if:Landroid/widget/FrameLayout;

.field public new:Landroid/graphics/Paint;

.field public try:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->for:F

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->new:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->case:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->goto:I

    .line 6
    sget v0, Lcom/codelibrary/R$id;->drawerLayout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iput-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    .line 7
    sget v0, Lcom/codelibrary/R$id;->drawerContentContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->if:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->if:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->if:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic if(Lcom/lxj/xpopup/core/DrawerPopupView;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    sget-object v1, Lcom/apk/qv;->new:Lcom/apk/qv;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/apk/ow;->if(Landroid/view/View;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/core/DrawerPopupView;->this(Z)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->close()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->public:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->try:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->try:Landroid/graphics/Rect;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->new:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->case:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->for:F

    iget v3, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->goto:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/apk/zu;->for:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->try:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->new:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public doAfterShow()V
    .locals 0

    return-void
.end method

.method public doDismissAnimation()V
    .locals 0

    return-void
.end method

.method public doShowAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->open()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/core/DrawerPopupView;->this(Z)V

    return-void
.end method

.method public getAnimationDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPopupAnimator()Lcom/apk/cv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_drawer_popup_view:I

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->enableShadow:Z

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->isCanClose:Z

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    new-instance v1, Lcom/lxj/xpopup/core/DrawerPopupView$do;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/DrawerPopupView$do;-><init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->setOnCloseListener(Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->throws:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v1, v1, Lcom/apk/lv;->default:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->native:Lcom/apk/pv;

    if-nez v1, :cond_0

    sget-object v1, Lcom/apk/pv;->do:Lcom/apk/pv;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->setDrawerPosition(Lcom/apk/pv;)V

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->enableDrag:Z

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    new-instance v1, Lcom/lxj/xpopup/core/DrawerPopupView$if;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/DrawerPopupView$if;-><init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public this(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->public:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->case:Landroid/animation/ArgbEvaluator;

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
    new-instance v0, Lcom/lxj/xpopup/core/DrawerPopupView$for;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/core/DrawerPopupView$for;-><init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V

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
