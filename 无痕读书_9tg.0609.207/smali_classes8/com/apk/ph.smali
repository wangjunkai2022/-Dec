.class public Lcom/apk/ph;
.super Lcom/apk/ih;
.source "NestedWebView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild2;


# instance fields
.field public final break:[I

.field public case:I

.field public final catch:[I

.field public class:Landroid/widget/OverScroller;

.field public const:I

.field public else:I

.field public final:I

.field public for:I

.field public goto:I

.field public if:Landroidx/core/view/NestedScrollingChildHelper;

.field public new:Landroid/view/VelocityTracker;

.field public super:I

.field public this:I

.field public throw:I

.field public try:Z

.field public while:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/apk/ih;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/ph;->try:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/apk/ph;->case:I

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 4
    iput-object v0, p0, Lcom/apk/ph;->break:[I

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Lcom/apk/ph;->catch:[I

    .line 6
    new-instance p1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apk/ph;->class:Landroid/widget/OverScroller;

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/apk/ph;->else:I

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/apk/ph;->goto:I

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/apk/ph;->this:I

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/apk/ph;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ph;->if:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/apk/ph;->if:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/ph;->if:Landroidx/core/view/NestedScrollingChildHelper;

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    .line 2
    iget-boolean v0, p0, Lcom/apk/ph;->while:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/apk/ph;->final:I

    sub-int v4, v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/apk/ph;->startNestedScroll(II)Z

    .line 6
    iget v0, p0, Lcom/apk/ph;->throw:I

    if-gez v0, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/apk/ph;->dispatchNestedScroll(IIII[II)Z

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/apk/ph;->while:Z

    .line 9
    invoke-virtual {p0, v1}, Lcom/apk/ph;->stopNestedScroll(I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public flingScroll(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    iput v2, p0, Lcom/apk/ph;->const:I

    .line 6
    iput-boolean v2, p0, Lcom/apk/ph;->while:Z

    .line 7
    :cond_1
    iget v3, p0, Lcom/apk/ph;->const:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_14

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v1, v5, :cond_f

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iput v7, p0, Lcom/apk/ph;->case:I

    .line 9
    iput-boolean v2, p0, Lcom/apk/ph;->try:Z

    .line 10
    iget-object v1, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 12
    iput-object v6, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    .line 13
    :cond_3
    invoke-virtual {p0, v2}, Lcom/apk/ph;->stopNestedScroll(I)V

    .line 14
    iget-object v1, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 16
    :cond_4
    invoke-virtual {p0, v2}, Lcom/apk/ph;->stopNestedScroll(I)V

    .line 17
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto/16 :goto_3

    .line 18
    :cond_5
    iget v1, p0, Lcom/apk/ph;->case:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v7, :cond_6

    :goto_0
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 19
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 20
    iget v1, p0, Lcom/apk/ph;->for:I

    sub-int/2addr v1, p1

    const/4 v9, 0x0

    .line 21
    iget-object v11, p0, Lcom/apk/ph;->catch:[I

    iget-object v12, p0, Lcom/apk/ph;->break:[I

    const/4 v13, 0x0

    move-object v8, p0

    move v10, v1

    invoke-virtual/range {v8 .. v13}, Lcom/apk/ph;->dispatchNestedPreScroll(II[I[II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    iget-object v3, p0, Lcom/apk/ph;->catch:[I

    aget v6, v3, v5

    .line 23
    aget v3, v3, v5

    sub-int/2addr v1, v3

    .line 24
    :cond_7
    iput v1, p0, Lcom/apk/ph;->throw:I

    .line 25
    iget-boolean v3, p0, Lcom/apk/ph;->try:Z

    if-nez v3, :cond_9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, p0, Lcom/apk/ph;->else:I

    if-le v3, v6, :cond_9

    .line 26
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 27
    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 28
    :cond_8
    iput-boolean v5, p0, Lcom/apk/ph;->try:Z

    .line 29
    :cond_9
    iget-boolean v3, p0, Lcom/apk/ph;->try:Z

    if-eqz v3, :cond_d

    .line 30
    iget-object v3, p0, Lcom/apk/ph;->break:[I

    aget v3, v3, v5

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/apk/ph;->for:I

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_c

    if-gtz v1, :cond_a

    .line 32
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result p1

    add-int/2addr p1, v1

    if-gez p1, :cond_b

    .line 34
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    .line 35
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v6, v3

    .line 36
    invoke-virtual {v0, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 37
    iget v6, p0, Lcom/apk/ph;->const:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/apk/ph;->const:I

    goto :goto_1

    .line 38
    :cond_a
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 39
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTop()I

    move-result p1

    sub-int p1, v1, p1

    if-lez p1, :cond_b

    .line 40
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTop()I

    move-result p1

    sub-int p1, v1, p1

    .line 41
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTop()I

    move-result v3

    int-to-float v6, v3

    .line 42
    invoke-virtual {v0, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 43
    iget v6, p0, Lcom/apk/ph;->const:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/apk/ph;->const:I

    :goto_1
    move v8, p1

    move v10, v3

    goto :goto_2

    :cond_b
    move v8, v1

    const/4 v10, 0x0

    goto :goto_2

    :cond_c
    move v10, v1

    const/4 v8, 0x0

    :goto_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 44
    iget-object v11, p0, Lcom/apk/ph;->break:[I

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/apk/ph;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 45
    iget p1, p0, Lcom/apk/ph;->for:I

    iget-object v3, p0, Lcom/apk/ph;->break:[I

    aget v6, v3, v5

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/apk/ph;->for:I

    .line 46
    aget p1, v3, v5

    int-to-float p1, p1

    invoke-virtual {v0, v4, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 47
    iget p1, p0, Lcom/apk/ph;->const:I

    iget-object v3, p0, Lcom/apk/ph;->break:[I

    aget v3, v3, v5

    add-int/2addr p1, v3

    iput p1, p0, Lcom/apk/ph;->const:I

    :cond_d
    if-nez v1, :cond_e

    .line 48
    iget-boolean p1, p0, Lcom/apk/ph;->try:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto/16 :goto_3

    .line 49
    :cond_e
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto/16 :goto_3

    .line 50
    :cond_f
    iget-object v1, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_10

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 52
    :cond_10
    iget v1, p0, Lcom/apk/ph;->case:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    iget-object v3, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/apk/ph;->this:I

    int-to-float v4, v4

    const/16 v8, 0x3e8

    invoke-virtual {v3, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 54
    iget-object v3, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 55
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/apk/ph;->goto:I

    if-le v1, v3, :cond_11

    .line 56
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/apk/ph;->final:I

    .line 57
    iput-boolean v5, p0, Lcom/apk/ph;->while:Z

    .line 58
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/apk/ph;->super:I

    .line 59
    iput v7, p0, Lcom/apk/ph;->case:I

    .line 60
    iput-boolean v2, p0, Lcom/apk/ph;->try:Z

    .line 61
    iget-object p1, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_12

    .line 62
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 63
    iput-object v6, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    .line 64
    :cond_12
    invoke-virtual {p0, v2}, Lcom/apk/ph;->stopNestedScroll(I)V

    .line 65
    iget-object p1, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    .line 66
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 67
    :cond_13
    invoke-virtual {p0, v2}, Lcom/apk/ph;->stopNestedScroll(I)V

    .line 68
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move p1, v2

    const/4 v2, 0x1

    goto :goto_3

    .line 69
    :cond_14
    iget-object v1, p0, Lcom/apk/ph;->class:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v5

    iput-boolean v1, p0, Lcom/apk/ph;->try:Z

    if-eqz v1, :cond_15

    .line 70
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 71
    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    :cond_15
    iget-object v1, p0, Lcom/apk/ph;->class:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_16

    .line 73
    iget-object v1, p0, Lcom/apk/ph;->class:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 74
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/apk/ph;->for:I

    .line 75
    iput v1, p0, Lcom/apk/ph;->super:I

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/apk/ph;->case:I

    .line 77
    invoke-virtual {p0, v3, v2}, Lcom/apk/ph;->startNestedScroll(II)Z

    .line 78
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_3
    if-nez v2, :cond_17

    .line 79
    iget-object v1, p0, Lcom/apk/ph;->new:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_17

    .line 80
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 81
    :cond_17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/ph;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
