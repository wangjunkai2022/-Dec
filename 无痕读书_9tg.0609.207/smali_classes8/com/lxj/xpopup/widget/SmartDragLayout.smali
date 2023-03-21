.class public Lcom/lxj/xpopup/widget/SmartDragLayout;
.super Landroid/widget/FrameLayout;
.source "SmartDragLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SmartDragLayout"


# instance fields
.field public bgAnimator:Lcom/apk/fv;

.field public child:Landroid/view/View;

.field public dismissOnTouchOutside:Z

.field public enableDrag:Z

.field public hasShadowBg:Z

.field public isScrollUp:Z

.field public isThreeDrag:Z

.field public isUserClose:Z

.field public lastHeight:I

.field public listener:Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;

.field public maxY:I

.field public minY:I

.field public scroller:Landroid/widget/OverScroller;

.field public status:Lcom/apk/nv;

.field public touchX:F

.field public touchY:F

.field public tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/apk/fv;

    invoke-direct {p2}, Lcom/apk/fv;-><init>()V

    iput-object p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->bgAnimator:Lcom/apk/fv;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    .line 6
    iput-boolean p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    .line 7
    iput-boolean p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->hasShadowBg:Z

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isUserClose:Z

    .line 9
    iput-boolean p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag:Z

    .line 10
    sget-object p2, Lcom/apk/nv;->if:Lcom/apk/nv;

    iput-object p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    .line 11
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private finishScroll()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    iget v1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    iget v1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    div-int/lit8 v0, v0, 0x3

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_1

    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    iget-boolean v1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag:Z

    if-eqz v1, :cond_5

    .line 5
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    div-int/lit8 v0, v0, 0x3

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v3, v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 7
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x2

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    goto :goto_2

    .line 12
    :cond_4
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    goto :goto_2

    :cond_5
    :goto_3
    move v5, v0

    .line 13
    iget-object v1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    .line 14
    sget v6, Lcom/apk/zu;->if:I

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 16
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isUserClose:Z

    .line 2
    new-instance v0, Lcom/lxj/xpopup/widget/SmartDragLayout$2;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/widget/SmartDragLayout$2;-><init>(Lcom/lxj/xpopup/widget/SmartDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    .line 4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dismissOnTouchOutside(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isUserClose:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableDrag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasShadowBg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->hasShadowBg:Z

    return-void
.end method

.method public isThreeDrag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    .line 3
    iput-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isUserClose:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 4
    iget-boolean p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    add-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 6
    iget-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    sget-object p2, Lcom/apk/nv;->do:Lcom/apk/nv;

    if-ne p1, p2, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->lastHeight:I

    iget p4, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/lxj/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->lastHeight:I

    iget p4, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/lxj/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 11
    :cond_2
    :goto_0
    iget p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->lastHeight:I

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    const/4 p4, 0x0

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p1, -0x3b448000    # -1500.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag:Z

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V

    :cond_1
    return p4
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    add-int/2addr p1, p3

    .line 2
    iget p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    if-ge p1, p2, :cond_0

    const/4 p2, 0x1

    .line 3
    aput p3, p4, p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p0, p1, p2}, Lcom/lxj/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->finishScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchX:F

    .line 3
    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchY:F

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/lxj/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchY:F

    goto/16 :goto_1

    .line 11
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/apk/pw;->super(FFLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchX:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchY:F

    sub-float/2addr p1, v0

    float-to-double v6, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 17
    :cond_3
    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const v0, 0x44bb8000    # 1500.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 19
    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag:Z

    if-nez p1, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_0

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->finishScroll()V

    :goto_0
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 23
    :cond_5
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 25
    :cond_6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    .line 26
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchX:F

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->touchY:F

    :cond_8
    :goto_1
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    return-void
.end method

.method public open()V
    .locals 1

    .line 1
    new-instance v0, Lcom/lxj/xpopup/widget/SmartDragLayout$1;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/widget/SmartDragLayout$1;-><init>(Lcom/lxj/xpopup/widget/SmartDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    if-le p2, v0, :cond_0

    move p2, v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    if-ge p2, v0, :cond_1

    move p2, v0

    .line 3
    :cond_1
    iget v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    sub-int v1, p2, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->maxY:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-le p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    .line 5
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->hasShadowBg:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->bgAnimator:Lcom/apk/fv;

    invoke-virtual {v0, v1}, Lcom/apk/fv;->new(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->listener:Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;

    if-eqz v0, :cond_6

    .line 8
    iget-boolean v3, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isUserClose:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    sget-object v4, Lcom/apk/nv;->if:Lcom/apk/nv;

    if-eq v3, v4, :cond_4

    .line 9
    iput-object v4, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    .line 10
    invoke-interface {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;->onClose()V

    goto :goto_1

    :cond_4
    cmpl-float v0, v1, v2

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    sget-object v2, Lcom/apk/nv;->do:Lcom/apk/nv;

    if-eq v0, v2, :cond_5

    .line 12
    iput-object v2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    .line 13
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->listener:Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;

    invoke-interface {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;->onOpen()V

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->listener:Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;

    iget-boolean v2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    invoke-interface {v0, p2, v1, v2}, Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;->onDrag(IFZ)V

    .line 15
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method public setOnCloseListener(Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout;->listener:Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;

    return-void
.end method

.method public smoothScroll(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/lxj/xpopup/widget/SmartDragLayout$3;-><init>(Lcom/lxj/xpopup/widget/SmartDragLayout;IZ)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
