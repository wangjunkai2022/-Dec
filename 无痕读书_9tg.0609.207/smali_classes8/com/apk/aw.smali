.class public Lcom/apk/aw;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"


# instance fields
.field public break:Lcom/apk/bw;

.field public case:F

.field public do:I

.field public else:F

.field public final for:Landroid/view/ScaleGestureDetector;

.field public final goto:F

.field public if:I

.field public new:Landroid/view/VelocityTracker;

.field public final this:F

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/bw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/aw;->do:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/apk/aw;->if:I

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/aw;->this:F

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apk/aw;->goto:F

    .line 7
    iput-object p2, p0, Lcom/apk/aw;->break:Lcom/apk/bw;

    .line 8
    new-instance p2, Lcom/apk/aw$do;

    invoke-direct {p2, p0}, Lcom/apk/aw$do;-><init>(Lcom/apk/aw;)V

    .line 9
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/apk/aw;->for:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final do(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/apk/aw;->if:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/aw;->for:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public final if(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/apk/aw;->if:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public final new(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_21

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1a

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    const/4 v6, 0x6

    if-eq v2, v6, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v6, 0xff00

    and-int/2addr v2, v6

    shr-int/lit8 v2, v2, 0x8

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 4
    iget v7, v0, Lcom/apk/aw;->do:I

    if-ne v6, v7, :cond_23

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/apk/aw;->do:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v0, Lcom/apk/aw;->case:F

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lcom/apk/aw;->else:F

    goto/16 :goto_8

    .line 8
    :cond_2
    iput v5, v0, Lcom/apk/aw;->do:I

    .line 9
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_23

    .line 10
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    iput-object v6, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    goto/16 :goto_8

    .line 12
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/apk/aw;->do(Landroid/view/MotionEvent;)F

    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/apk/aw;->if(Landroid/view/MotionEvent;)F

    move-result v6

    .line 14
    iget v8, v0, Lcom/apk/aw;->case:F

    sub-float v8, v2, v8

    iget v9, v0, Lcom/apk/aw;->else:F

    sub-float v9, v6, v9

    .line 15
    iget-boolean v10, v0, Lcom/apk/aw;->try:Z

    if-nez v10, :cond_5

    mul-float v10, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v11, v10

    float-to-double v10, v11

    .line 16
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget v12, v0, Lcom/apk/aw;->goto:F

    float-to-double v12, v12

    cmpl-double v14, v10, v12

    if-ltz v14, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v0, Lcom/apk/aw;->try:Z

    .line 17
    :cond_5
    iget-boolean v10, v0, Lcom/apk/aw;->try:Z

    if-eqz v10, :cond_23

    .line 18
    iget-object v10, v0, Lcom/apk/aw;->break:Lcom/apk/bw;

    check-cast v10, Lcom/apk/kw$do;

    .line 19
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 20
    iget-object v11, v11, Lcom/apk/kw;->break:Lcom/apk/aw;

    .line 21
    invoke-virtual {v11}, Lcom/apk/aw;->for()Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_4

    .line 22
    :cond_6
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 23
    iget-object v11, v11, Lcom/apk/kw;->throws:Lcom/apk/hw;

    if-eqz v11, :cond_7

    .line 24
    invoke-interface {v11, v8, v9}, Lcom/apk/hw;->do(FF)V

    .line 25
    :cond_7
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 26
    iget-object v11, v11, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    .line 27
    invoke-virtual {v11, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 28
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 29
    invoke-virtual {v11}, Lcom/apk/kw;->do()V

    .line 30
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 31
    iget v12, v11, Lcom/apk/kw;->finally:I

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v12, :cond_8

    .line 32
    invoke-virtual {v11}, Lcom/apk/kw;->goto()F

    move-result v12

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    :goto_2
    iput-boolean v12, v11, Lcom/apk/kw;->private:Z

    .line 33
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 34
    iget v12, v11, Lcom/apk/kw;->finally:I

    if-ne v12, v3, :cond_9

    .line 35
    invoke-virtual {v11}, Lcom/apk/kw;->goto()F

    move-result v12

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    iput-boolean v12, v11, Lcom/apk/kw;->abstract:Z

    .line 36
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 37
    iget v12, v11, Lcom/apk/kw;->extends:I

    if-nez v12, :cond_a

    .line 38
    invoke-virtual {v11}, Lcom/apk/kw;->goto()F

    .line 39
    :cond_a
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 40
    iget v12, v11, Lcom/apk/kw;->extends:I

    if-ne v12, v3, :cond_b

    .line 41
    invoke-virtual {v11}, Lcom/apk/kw;->goto()F

    .line 42
    :cond_b
    iget-object v11, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 43
    iget-object v11, v11, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v11}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_c

    goto/16 :goto_4

    .line 45
    :cond_c
    iget-object v12, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 46
    iget-boolean v13, v12, Lcom/apk/kw;->case:Z

    if-eqz v13, :cond_17

    .line 47
    iget-object v12, v12, Lcom/apk/kw;->break:Lcom/apk/aw;

    .line 48
    invoke-virtual {v12}, Lcom/apk/aw;->for()Z

    move-result v12

    if-nez v12, :cond_17

    iget-object v12, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 49
    iget-boolean v13, v12, Lcom/apk/kw;->else:Z

    if-nez v13, :cond_17

    .line 50
    iget v13, v12, Lcom/apk/kw;->extends:I

    if-ne v13, v7, :cond_d

    .line 51
    iget-boolean v12, v12, Lcom/apk/kw;->interface:Z

    if-eqz v12, :cond_f

    .line 52
    :cond_d
    iget-object v12, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 53
    iget v13, v12, Lcom/apk/kw;->extends:I

    const/4 v14, 0x0

    if-nez v13, :cond_e

    cmpl-float v13, v8, v14

    if-ltz v13, :cond_e

    .line 54
    iget-boolean v12, v12, Lcom/apk/kw;->strictfp:Z

    if-nez v12, :cond_f

    :cond_e
    iget-object v12, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 55
    iget v13, v12, Lcom/apk/kw;->extends:I

    if-ne v13, v3, :cond_10

    const/high16 v13, -0x80000000

    cmpg-float v8, v8, v13

    if-gtz v8, :cond_10

    .line 56
    iget-boolean v8, v12, Lcom/apk/kw;->strictfp:Z

    if-eqz v8, :cond_10

    .line 57
    :cond_f
    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 58
    :cond_10
    iget-object v8, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 59
    iget v12, v8, Lcom/apk/kw;->finally:I

    if-ne v12, v7, :cond_11

    .line 60
    iget-boolean v7, v8, Lcom/apk/kw;->continue:Z

    if-nez v7, :cond_13

    :cond_11
    iget-object v7, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    iget-boolean v8, v7, Lcom/apk/kw;->private:Z

    if-eqz v8, :cond_12

    cmpl-float v8, v9, v14

    if-lez v8, :cond_12

    iget-boolean v7, v7, Lcom/apk/kw;->continue:Z

    if-nez v7, :cond_13

    :cond_12
    iget-object v7, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    iget-boolean v8, v7, Lcom/apk/kw;->abstract:Z

    if-eqz v8, :cond_14

    cmpg-float v8, v9, v14

    if-gez v8, :cond_14

    iget-boolean v7, v7, Lcom/apk/kw;->continue:Z

    if-eqz v7, :cond_14

    .line 61
    :cond_13
    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 62
    :cond_14
    iget-object v7, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 63
    iget-boolean v8, v7, Lcom/apk/kw;->interface:Z

    if-eqz v8, :cond_19

    .line 64
    iget v8, v7, Lcom/apk/kw;->finally:I

    if-nez v8, :cond_15

    cmpl-float v8, v9, v14

    if-lez v8, :cond_15

    .line 65
    iget-boolean v7, v7, Lcom/apk/kw;->continue:Z

    if-nez v7, :cond_16

    :cond_15
    iget-object v7, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 66
    iget v8, v7, Lcom/apk/kw;->finally:I

    if-ne v8, v3, :cond_19

    cmpg-float v8, v9, v14

    if-gez v8, :cond_19

    .line 67
    iget-boolean v7, v7, Lcom/apk/kw;->continue:Z

    if-eqz v7, :cond_19

    .line 68
    :cond_16
    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 69
    :cond_17
    iget-object v8, v10, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 70
    iget v9, v8, Lcom/apk/kw;->extends:I

    if-ne v9, v7, :cond_18

    .line 71
    iget-boolean v7, v8, Lcom/apk/kw;->interface:Z

    if-eqz v7, :cond_18

    .line 72
    iget-boolean v7, v8, Lcom/apk/kw;->strictfp:Z

    if-eqz v7, :cond_18

    .line 73
    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 74
    :cond_18
    invoke-interface {v11, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 75
    :cond_19
    :goto_4
    iput v2, v0, Lcom/apk/aw;->case:F

    .line 76
    iput v6, v0, Lcom/apk/aw;->else:F

    .line 77
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_23

    .line 78
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 79
    :cond_1a
    iput v5, v0, Lcom/apk/aw;->do:I

    .line 80
    iget-boolean v2, v0, Lcom/apk/aw;->try:Z

    if-eqz v2, :cond_20

    .line 81
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_20

    .line 82
    invoke-virtual/range {p0 .. p1}, Lcom/apk/aw;->do(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/aw;->case:F

    .line 83
    invoke-virtual/range {p0 .. p1}, Lcom/apk/aw;->if(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/aw;->else:F

    .line 84
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 85
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 86
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v7, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    .line 87
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 88
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, v0, Lcom/apk/aw;->this:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_20

    .line 89
    iget-object v8, v0, Lcom/apk/aw;->break:Lcom/apk/bw;

    neg-float v2, v2

    neg-float v7, v7

    check-cast v8, Lcom/apk/kw$do;

    .line 90
    iget-object v9, v8, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    new-instance v10, Lcom/apk/kw$case;

    .line 91
    iget-object v11, v9, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/apk/kw$case;-><init>(Lcom/apk/kw;Landroid/content/Context;)V

    .line 93
    iput-object v10, v9, Lcom/apk/kw;->default:Lcom/apk/kw$case;

    .line 94
    iget-object v9, v8, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 95
    iget-object v10, v9, Lcom/apk/kw;->default:Lcom/apk/kw$case;

    .line 96
    iget-object v11, v9, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v9, v11}, Lcom/apk/kw;->else(Landroid/widget/ImageView;)I

    move-result v9

    .line 98
    iget-object v11, v8, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 99
    iget-object v12, v11, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {v11, v12}, Lcom/apk/kw;->case(Landroid/widget/ImageView;)I

    move-result v11

    float-to-int v15, v2

    float-to-int v2, v7

    .line 101
    iget-object v7, v10, Lcom/apk/kw$case;->new:Lcom/apk/kw;

    invoke-virtual {v7}, Lcom/apk/kw;->for()Landroid/graphics/RectF;

    move-result-object v7

    if-nez v7, :cond_1b

    goto :goto_7

    .line 102
    :cond_1b
    iget v12, v7, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v9, v9

    .line 103
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    cmpg-float v12, v9, v12

    if-gez v12, :cond_1c

    .line 104
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/16 v17, 0x0

    goto :goto_5

    :cond_1c
    move v9, v13

    move/from16 v17, v9

    .line 105
    :goto_5
    iget v12, v7, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v11, v11

    .line 106
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    cmpg-float v12, v11, v12

    if-gez v12, :cond_1d

    .line 107
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v19, 0x0

    goto :goto_6

    :cond_1d
    move v7, v14

    move/from16 v19, v7

    .line 108
    :goto_6
    iput v13, v10, Lcom/apk/kw$case;->if:I

    .line 109
    iput v14, v10, Lcom/apk/kw$case;->for:I

    if-ne v13, v9, :cond_1e

    if-eq v14, v7, :cond_1f

    .line 110
    :cond_1e
    iget-object v12, v10, Lcom/apk/kw$case;->do:Landroid/widget/OverScroller;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, v2

    move/from16 v18, v9

    move/from16 v20, v7

    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 111
    :cond_1f
    :goto_7
    iget-object v2, v8, Lcom/apk/kw$do;->do:Lcom/apk/kw;

    .line 112
    iget-object v7, v2, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 113
    iget-object v2, v2, Lcom/apk/kw;->default:Lcom/apk/kw$case;

    .line 114
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_20
    iget-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_23

    .line 116
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 117
    iput-object v6, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    goto :goto_8

    .line 118
    :cond_21
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/apk/aw;->do:I

    .line 119
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/aw;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_22

    .line 120
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 121
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/apk/aw;->do(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/aw;->case:F

    .line 122
    invoke-virtual/range {p0 .. p1}, Lcom/apk/aw;->if(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/aw;->else:F

    .line 123
    iput-boolean v4, v0, Lcom/apk/aw;->try:Z

    .line 124
    :cond_23
    :goto_8
    iget v2, v0, Lcom/apk/aw;->do:I

    if-eq v2, v5, :cond_24

    move v4, v2

    .line 125
    :cond_24
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    iput v1, v0, Lcom/apk/aw;->if:I

    return v3
.end method
