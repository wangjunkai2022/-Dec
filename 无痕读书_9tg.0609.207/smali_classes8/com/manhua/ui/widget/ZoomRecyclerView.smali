.class public Lcom/manhua/ui/widget/ZoomRecyclerView;
.super Lcom/manhua/ui/widget/PageRecyclerView;
.source "ZoomRecyclerView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/ZoomRecyclerView$do;,
        Lcom/manhua/ui/widget/ZoomRecyclerView$if;
    }
.end annotation


# instance fields
.field public break:F

.field public catch:F

.field public class:F

.field public const:F

.field public default:F

.field public extends:F

.field public final:F

.field public finally:F

.field public goto:Landroid/view/ScaleGestureDetector;

.field public import:Z

.field public native:Z

.field public package:I

.field public public:Landroid/animation/ValueAnimator;

.field public return:F

.field public static:F

.field public super:I

.field public switch:F

.field public this:Landroidx/core/view/GestureDetectorCompat;

.field public throw:F

.field public throws:F

.field public while:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/manhua/ui/widget/PageRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->super:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    .line 4
    iput-boolean p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->native:Z

    .line 5
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/manhua/ui/widget/ZoomRecyclerView$if;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/manhua/ui/widget/ZoomRecyclerView$if;-><init>(Lcom/manhua/ui/widget/ZoomRecyclerView;Lcom/apk/w20;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->goto:Landroid/view/ScaleGestureDetector;

    .line 6
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/manhua/ui/widget/ZoomRecyclerView$do;

    invoke-direct {v2, p0, v3}, Lcom/manhua/ui/widget/ZoomRecyclerView$do;-><init>(Lcom/manhua/ui/widget/ZoomRecyclerView;Lcom/apk/w20;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->this:Landroidx/core/view/GestureDetectorCompat;

    const/16 v0, 0x12c

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/biquge/ebook/app/R$styleable;->ZoomRecyclerView:[I

    .line 8
    invoke-virtual {v4, p2, v5, p1, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v4, 0x2

    .line 9
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->extends:F

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->default:F

    .line 11
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->finally:F

    .line 12
    iput p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    const/4 p1, 0x3

    .line 13
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->package:I

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 15
    :cond_0
    iput v3, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->default:F

    .line 16
    iput v2, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->extends:F

    .line 17
    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->finally:F

    .line 18
    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    .line 19
    iput v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->package:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final case(FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/apk/w20;

    invoke-direct {v1, p0}, Lcom/apk/w20;-><init>(Lcom/manhua/ui/widget/ZoomRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/apk/x20;

    invoke-direct {v1, p0}, Lcom/apk/x20;-><init>(Lcom/manhua/ui/widget/ZoomRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->break:F

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->switch:F

    .line 8
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->catch:F

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throws:F

    .line 9
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    .line 10
    iget v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    sub-float v2, p2, p1

    .line 11
    iget v3, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->return:F

    mul-float v3, v3, v2

    sub-float v3, v0, v3

    .line 12
    iget v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->static:F

    mul-float v2, v2, v4

    sub-float v2, v1, v2

    .line 13
    invoke-virtual {p0, v3, v2}, Lcom/manhua/ui/widget/ZoomRecyclerView;->try(FF)[F

    move-result-object v2

    const/4 v3, 0x0

    .line 14
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 15
    aget v2, v2, v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput p1, v7, v3

    aput p2, v7, v5

    const-string p1, "scale"

    .line 16
    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, v6, [F

    aput v0, p2, v3

    aput v4, p2, v5

    const-string v0, "tranX"

    .line 17
    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v0, v6, [F

    aput v1, v0, v3

    aput v2, v0, v5

    const-string v1, "tranY"

    .line 18
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 20
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->package:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->public:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    iget v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    iget v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final new()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    iget v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    invoke-virtual {p0, v0, v1}, Lcom/manhua/ui/widget/ZoomRecyclerView;->try(FF)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v1, v0, v1

    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    const/4 v1, 0x1

    .line 3
    aget v0, v0, v1

    iput v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->break:F

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->catch:F

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->native:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->goto:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->this:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v4, 0x6

    if-eq v1, v4, :cond_7

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->super:I

    .line 7
    iput v5, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    .line 8
    iput v5, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F

    goto/16 :goto_3

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    :try_start_0
    iget v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->super:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 10
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 12
    iget-boolean v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    if-nez v7, :cond_5

    iget v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_5

    .line 13
    iget v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    sub-float v7, v6, v7

    .line 14
    iget v8, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F

    sub-float v8, v4, v8

    .line 15
    iget v9, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    add-float/2addr v9, v7

    iget v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    add-float/2addr v7, v8

    .line 16
    iput v9, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    .line 17
    iput v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    .line 18
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ZoomRecyclerView;->new()V

    .line 19
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 20
    iput v6, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    .line 21
    iput v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 24
    iget-boolean v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_6

    sub-float v1, v4, v1

    .line 25
    iget v5, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F

    sub-float v5, v6, v5

    .line 26
    iget v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    add-float/2addr v7, v1

    iget v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    add-float/2addr v1, v5

    .line 27
    iput v7, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    .line 28
    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    .line 29
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ZoomRecyclerView;->new()V

    .line 30
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 31
    iput v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    .line 32
    iput v6, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F

    goto :goto_3

    .line 33
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 35
    iget v5, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->super:I

    if-ne v4, v5, :cond_a

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 36
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->super:I

    goto :goto_3

    .line 39
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 42
    iput v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throw:F

    .line 43
    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->while:F

    .line 44
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->super:I

    .line 45
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_4
    return v2
.end method

.method public setEnableScale(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->native:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->native:Z

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/manhua/ui/widget/ZoomRecyclerView;->case(FF)V

    :cond_1
    return-void
.end method

.method public final try(FF)[F
    .locals 6

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v4, p1, v0

    if-lez v4, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget v4, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->switch:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_2

    move p1, v4

    :cond_2
    :goto_0
    cmpl-float v4, p2, v0

    if-lez v4, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_3
    iget v0, p0, Lcom/manhua/ui/widget/ZoomRecyclerView;->throws:F

    cmpg-float v4, p2, v0

    if-gez v4, :cond_4

    move p2, v0

    :cond_4
    :goto_1
    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0
.end method
