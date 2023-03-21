.class public Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;
.super Ljava/lang/Object;
.source "SwipeItemLayout.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/SwipeItemLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public case:I

.field public do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

.field public else:I

.field public for:F

.field public goto:Z

.field public if:F

.field public new:Landroid/view/VelocityTracker;

.field public this:Z

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->case:I

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->else:I

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->goto:Z

    .line 7
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->this:Z

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->goto:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->new:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    sget-object v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->this:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 3
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_e

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    const/4 p1, 0x3

    if-eq v2, p1, :cond_5

    const/4 p1, 0x5

    if-eq v2, p1, :cond_4

    const/4 p1, 0x6

    if-eq v2, p1, :cond_2

    goto/16 :goto_7

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    if-ne v0, v1, :cond_1b

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    .line 10
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 11
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    goto/16 :goto_7

    .line 12
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    goto/16 :goto_7

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->goto()V

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do()V

    goto/16 :goto_7

    .line 19
    :cond_7
    iget v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    goto/16 :goto_7

    .line 20
    :cond_8
    iget-boolean v5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->goto:Z

    if-eqz v5, :cond_a

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if()V

    :cond_9
    return v3

    .line 23
    :cond_a
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 24
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v5, v5

    .line 25
    iget v6, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    sub-float v6, v5, v6

    float-to-int v6, v6

    int-to-float v2, v2

    .line 26
    iget v7, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    sub-float v7, v2, v7

    float-to-int v7, v7

    .line 27
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 28
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 29
    iget-object v9, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz v9, :cond_1b

    iget-boolean v10, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->goto:Z

    if-nez v10, :cond_1b

    .line 30
    invoke-virtual {v9}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    move-result-object v9

    if-ne v9, v0, :cond_d

    .line 31
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->case:I

    if-le v8, v0, :cond_c

    if-le v8, v7, :cond_c

    .line 32
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p2, v1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 34
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 35
    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->case:I

    if-lez v6, :cond_b

    sub-int/2addr v6, p1

    goto :goto_1

    :cond_b
    add-int/2addr v6, p1

    goto :goto_1

    .line 36
    :cond_c
    iput-boolean v4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->this:Z

    .line 37
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 38
    iput-boolean v3, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->this:Z

    if-eqz p1, :cond_d

    .line 39
    iput-boolean v4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->goto:Z

    .line 40
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if()V

    .line 41
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    move-result-object p1

    if-ne p1, v1, :cond_1b

    .line 42
    iput v5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 43
    iput v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    .line 44
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p1, v6}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this(I)Z

    const/4 v3, 0x1

    goto/16 :goto_7

    .line 45
    :cond_e
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz p1, :cond_f

    .line 46
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    move-result-object p1

    if-ne p1, v1, :cond_f

    .line 47
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    const/16 p2, 0x3e8

    .line 48
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->else:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 49
    iget p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 50
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try(I)V

    const/4 v3, 0x1

    .line 51
    :cond_f
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do()V

    goto/16 :goto_7

    .line 52
    :cond_10
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 55
    iput v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 56
    iput v5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    float-to-int v2, v2

    float-to-int v5, v5

    .line 57
    invoke-static {p1, v2, v5}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_12

    .line 58
    instance-of v6, v2, Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-nez v6, :cond_11

    goto :goto_2

    .line 59
    :cond_11
    check-cast v2, Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    const/4 v6, 0x0

    goto :goto_3

    :cond_12
    :goto_2
    move-object v2, v5

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_14

    .line 60
    iget-object v7, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz v7, :cond_13

    if-eq v7, v2, :cond_14

    :cond_13
    const/4 v6, 0x1

    :cond_14
    if-nez v6, :cond_16

    .line 61
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    move-result-object v2

    .line 62
    sget-object v5, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne v2, v5, :cond_15

    .line 63
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_4

    .line 64
    :cond_15
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    .line 65
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case()Z

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-eqz v0, :cond_19

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 67
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_6

    .line 68
    :cond_16
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 69
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if()V

    .line 70
    iput-object v5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    const/4 v1, 0x1

    goto :goto_5

    :cond_17
    const/4 v1, 0x0

    :goto_5
    if-eqz v2, :cond_18

    .line 71
    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 72
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    goto :goto_6

    .line 73
    :cond_18
    iput-object v5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 74
    :cond_19
    :goto_6
    iput-boolean v4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->this:Z

    .line 75
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->goto:Z

    .line 76
    iput-boolean v3, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->this:Z

    if-eqz p1, :cond_1a

    goto :goto_7

    :cond_1a
    move v3, v1

    :cond_1b
    :goto_7
    return v3
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    const/4 p1, 0x5

    if-eq v0, p1, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 7
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    if-ne p1, v0, :cond_a

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    .line 9
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 10
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 13
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->goto()V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do()V

    goto :goto_1

    .line 17
    :cond_6
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    .line 20
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 21
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    move-result-object v2

    if-ne v2, p1, :cond_a

    .line 22
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->if:F

    .line 23
    iput p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->for:F

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this(I)Z

    goto :goto_1

    .line 25
    :cond_8
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    if-eqz p2, :cond_9

    .line 26
    invoke-virtual {p2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    move-result-object p2

    if-ne p2, p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->new:Landroid/view/VelocityTracker;

    const/16 p2, 0x3e8

    .line 28
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->else:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 29
    iget p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->try:I

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 30
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try(I)V

    .line 31
    :cond_9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;->do()V

    :cond_a
    :goto_1
    return-void
.end method
