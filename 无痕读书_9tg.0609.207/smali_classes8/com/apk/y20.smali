.class public Lcom/apk/y20;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"


# instance fields
.field public break:Lcom/apk/z20;

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
.method public constructor <init>(Landroid/content/Context;Lcom/apk/z20;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/y20;->do:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/apk/y20;->if:I

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/y20;->this:F

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apk/y20;->goto:F

    .line 7
    iput-object p2, p0, Lcom/apk/y20;->break:Lcom/apk/z20;

    .line 8
    new-instance p2, Lcom/apk/y20$do;

    invoke-direct {p2, p0}, Lcom/apk/y20$do;-><init>(Lcom/apk/y20;)V

    .line 9
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/apk/y20;->for:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final do(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/apk/y20;->if:I

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
    iget-object v0, p0, Lcom/apk/y20;->for:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public final if(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/apk/y20;->if:I

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

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_15

    const/4 v6, 0x0

    if-eq v2, v4, :cond_e

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    const/4 v6, 0x6

    if-eq v2, v6, :cond_0

    goto/16 :goto_6

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
    iget v7, v0, Lcom/apk/y20;->do:I

    if-ne v6, v7, :cond_17

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/apk/y20;->do:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v0, Lcom/apk/y20;->case:F

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lcom/apk/y20;->else:F

    goto/16 :goto_6

    .line 8
    :cond_2
    iput v3, v0, Lcom/apk/y20;->do:I

    .line 9
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_17

    .line 10
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    iput-object v6, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    goto/16 :goto_6

    .line 12
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/apk/y20;->do(Landroid/view/MotionEvent;)F

    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/apk/y20;->if(Landroid/view/MotionEvent;)F

    move-result v6

    .line 14
    iget v8, v0, Lcom/apk/y20;->case:F

    sub-float v8, v2, v8

    iget v9, v0, Lcom/apk/y20;->else:F

    sub-float v9, v6, v9

    .line 15
    iget-boolean v10, v0, Lcom/apk/y20;->try:Z

    if-nez v10, :cond_5

    mul-float v10, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v11, v10

    float-to-double v10, v11

    .line 16
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget v12, v0, Lcom/apk/y20;->goto:F

    float-to-double v12, v12

    cmpl-double v14, v10, v12

    if-ltz v14, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v0, Lcom/apk/y20;->try:Z

    .line 17
    :cond_5
    iget-boolean v10, v0, Lcom/apk/y20;->try:Z

    if-eqz v10, :cond_17

    .line 18
    iget-object v10, v0, Lcom/apk/y20;->break:Lcom/apk/z20;

    check-cast v10, Lcom/apk/h30$do;

    .line 19
    iget-object v11, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 20
    iget-object v11, v11, Lcom/apk/h30;->break:Lcom/apk/y20;

    .line 21
    invoke-virtual {v11}, Lcom/apk/y20;->for()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    iget-object v11, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 23
    iget-object v11, v11, Lcom/apk/h30;->throws:Lcom/apk/f30;

    if-eqz v11, :cond_7

    .line 24
    invoke-interface {v11, v8, v9}, Lcom/apk/f30;->do(FF)V

    .line 25
    :cond_7
    iget-object v11, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 26
    iget-object v11, v11, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    .line 27
    invoke-virtual {v11, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 28
    iget-object v11, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 29
    invoke-virtual {v11}, Lcom/apk/h30;->do()V

    .line 30
    iget-object v11, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 31
    iget-object v11, v11, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v11}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 33
    iget-object v12, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 34
    iget-boolean v13, v12, Lcom/apk/h30;->case:Z

    if-eqz v13, :cond_c

    .line 35
    iget-object v12, v12, Lcom/apk/h30;->break:Lcom/apk/y20;

    .line 36
    invoke-virtual {v12}, Lcom/apk/y20;->for()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 37
    iget-boolean v13, v12, Lcom/apk/h30;->else:Z

    if-nez v13, :cond_c

    .line 38
    iget v12, v12, Lcom/apk/h30;->extends:I

    if-eq v12, v7, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v12, :cond_8

    cmpl-float v12, v8, v7

    if-gez v12, :cond_b

    .line 39
    :cond_8
    iget-object v12, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 40
    iget v12, v12, Lcom/apk/h30;->extends:I

    const/high16 v13, -0x40800000    # -1.0f

    if-ne v12, v4, :cond_9

    cmpg-float v8, v8, v13

    if-lez v8, :cond_b

    .line 41
    :cond_9
    iget-object v8, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 42
    iget v8, v8, Lcom/apk/h30;->finally:I

    if-nez v8, :cond_a

    cmpl-float v7, v9, v7

    if-gez v7, :cond_b

    .line 43
    :cond_a
    iget-object v7, v10, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 44
    iget v7, v7, Lcom/apk/h30;->finally:I

    if-ne v7, v4, :cond_d

    cmpg-float v7, v9, v13

    if-gtz v7, :cond_d

    :cond_b
    if-eqz v11, :cond_d

    .line 45
    invoke-interface {v11, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_c
    if-eqz v11, :cond_d

    .line 46
    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 47
    :cond_d
    :goto_2
    iput v2, v0, Lcom/apk/y20;->case:F

    .line 48
    iput v6, v0, Lcom/apk/y20;->else:F

    .line 49
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_17

    .line 50
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 51
    :cond_e
    iput v3, v0, Lcom/apk/y20;->do:I

    .line 52
    iget-boolean v2, v0, Lcom/apk/y20;->try:Z

    if-eqz v2, :cond_14

    .line 53
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_14

    .line 54
    invoke-virtual/range {p0 .. p1}, Lcom/apk/y20;->do(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/y20;->case:F

    .line 55
    invoke-virtual/range {p0 .. p1}, Lcom/apk/y20;->if(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/y20;->else:F

    .line 56
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 57
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 58
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v7, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    .line 59
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 60
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, v0, Lcom/apk/y20;->this:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_14

    .line 61
    iget-object v8, v0, Lcom/apk/y20;->break:Lcom/apk/z20;

    neg-float v2, v2

    neg-float v7, v7

    check-cast v8, Lcom/apk/h30$do;

    .line 62
    iget-object v9, v8, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    new-instance v10, Lcom/apk/h30$case;

    .line 63
    iget-object v11, v9, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/apk/h30$case;-><init>(Lcom/apk/h30;Landroid/content/Context;)V

    .line 65
    iput-object v10, v9, Lcom/apk/h30;->default:Lcom/apk/h30$case;

    .line 66
    iget-object v9, v8, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 67
    iget-object v10, v9, Lcom/apk/h30;->default:Lcom/apk/h30$case;

    .line 68
    iget-object v11, v9, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v9, v11}, Lcom/apk/h30;->else(Landroid/widget/ImageView;)I

    move-result v9

    .line 70
    iget-object v11, v8, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 71
    iget-object v12, v11, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v11, v12}, Lcom/apk/h30;->case(Landroid/widget/ImageView;)I

    move-result v11

    float-to-int v15, v2

    float-to-int v2, v7

    .line 73
    iget-object v7, v10, Lcom/apk/h30$case;->new:Lcom/apk/h30;

    invoke-virtual {v7}, Lcom/apk/h30;->for()Landroid/graphics/RectF;

    move-result-object v7

    if-nez v7, :cond_f

    goto :goto_5

    .line 74
    :cond_f
    iget v12, v7, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v9, v9

    .line 75
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    cmpg-float v12, v9, v12

    if-gez v12, :cond_10

    .line 76
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/16 v17, 0x0

    goto :goto_3

    :cond_10
    move v9, v13

    move/from16 v17, v9

    .line 77
    :goto_3
    iget v12, v7, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v11, v11

    .line 78
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    cmpg-float v12, v11, v12

    if-gez v12, :cond_11

    .line 79
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v19, 0x0

    goto :goto_4

    :cond_11
    move v7, v14

    move/from16 v19, v7

    .line 80
    :goto_4
    iput v13, v10, Lcom/apk/h30$case;->if:I

    .line 81
    iput v14, v10, Lcom/apk/h30$case;->for:I

    if-ne v13, v9, :cond_12

    if-eq v14, v7, :cond_13

    .line 82
    :cond_12
    iget-object v12, v10, Lcom/apk/h30$case;->do:Landroid/widget/OverScroller;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, v2

    move/from16 v18, v9

    move/from16 v20, v7

    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 83
    :cond_13
    :goto_5
    iget-object v2, v8, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 84
    iget-object v7, v2, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 85
    iget-object v2, v2, Lcom/apk/h30;->default:Lcom/apk/h30$case;

    .line 86
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_14
    iget-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_17

    .line 88
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 89
    iput-object v6, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    goto :goto_6

    .line 90
    :cond_15
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/apk/y20;->do:I

    .line 91
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/y20;->new:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_16

    .line 92
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 93
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/apk/y20;->do(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/y20;->case:F

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/apk/y20;->if(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/apk/y20;->else:F

    .line 95
    iput-boolean v5, v0, Lcom/apk/y20;->try:Z

    .line 96
    :cond_17
    :goto_6
    iget v2, v0, Lcom/apk/y20;->do:I

    if-eq v2, v3, :cond_18

    move v5, v2

    .line 97
    :cond_18
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    iput v1, v0, Lcom/apk/y20;->if:I

    return v4
.end method
