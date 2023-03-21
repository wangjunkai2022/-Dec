.class public Lcom/apk/q50;
.super Landroid/widget/FrameLayout;
.source "TrSplashZoomOutLayout.java"


# instance fields
.field public case:F

.field public do:F

.field public else:F

.field public for:I

.field public final goto:I

.field public if:F

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41200000    # 10.0f

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 6
    iput p2, p0, Lcom/apk/q50;->for:I

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/apk/q50;->goto:I

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Lcom/apk/q50$do;

    invoke-direct {v0, p0}, Lcom/apk/q50$do;-><init>(Lcom/apk/q50;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/apk/q50;->do:F

    add-float/2addr v0, v3

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/apk/q50;->if:F

    add-float/2addr v3, v4

    .line 4
    iget v4, p0, Lcom/apk/q50;->case:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v4

    iput v5, p0, Lcom/apk/q50;->case:F

    .line 5
    iget v4, p0, Lcom/apk/q50;->else:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v4

    iput v5, p0, Lcom/apk/q50;->else:F

    .line 6
    iget v4, p0, Lcom/apk/q50;->for:I

    int-to-float v5, v4

    cmpg-float v6, v0, v5

    if-gez v6, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/apk/q50;->new:I

    int-to-float v6, v6

    cmpl-float v7, v0, v6

    if-lez v7, :cond_2

    move v0, v6

    :cond_2
    :goto_0
    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget v4, p0, Lcom/apk/q50;->try:I

    int-to-float v5, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    :goto_1
    int-to-float v3, v4

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/apk/q50;->do:F

    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v0, v4

    .line 14
    iget v4, p0, Lcom/apk/q50;->new:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    iget v0, p0, Lcom/apk/q50;->for:I

    int-to-float v4, v0

    .line 16
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    iget v0, p0, Lcom/apk/q50;->case:F

    iget v1, p0, Lcom/apk/q50;->goto:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_7

    iget v0, p0, Lcom/apk/q50;->else:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    :cond_7
    return v3

    .line 21
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apk/q50;->do:F

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apk/q50;->if:F

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/apk/q50;->case:F

    .line 24
    iput v0, p0, Lcom/apk/q50;->else:F

    .line 25
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
