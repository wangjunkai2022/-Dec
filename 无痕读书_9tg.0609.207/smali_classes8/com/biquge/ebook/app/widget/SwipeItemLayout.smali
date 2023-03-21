.class public Lcom/biquge/ebook/app/widget/SwipeItemLayout;
.super Lcom/apk/ps0;
.source "SwipeItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;,
        Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;,
        Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;
    }
.end annotation


# static fields
.field public static final break:Landroid/view/animation/Interpolator;


# instance fields
.field public case:I

.field public else:I

.field public for:Landroid/view/ViewGroup;

.field public goto:Z

.field public if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

.field public new:Landroid/view/ViewGroup;

.field public this:Z

.field public try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$do;

    invoke-direct {v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$do;-><init>()V

    sput-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->break:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/ps0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p2, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    .line 4
    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this:Z

    .line 5
    new-instance p2, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    invoke-direct {p2, p0, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;-><init>(Lcom/biquge/ebook/app/widget/SwipeItemLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    return-void
.end method

.method public static new(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public else(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public final for()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    return v1

    .line 7
    :cond_2
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getTouchMode()Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    return-object v0
.end method

.method public goto()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2

    .line 2
    sget-object v2, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    neg-int v1, v1

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    .line 4
    iget-boolean v0, v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->new:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if(II)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if()V

    :cond_3
    :goto_0
    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    .line 3
    iget-boolean v1, v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->new:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if(II)V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this:Z

    if-eqz v2, :cond_0

    neg-int v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else(I)V

    .line 4
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this:Z

    if-eqz v2, :cond_0

    neg-int v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else(I)V

    .line 4
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 4
    invoke-static {p0, v0, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->new:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz p1, :cond_2

    return v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 8
    invoke-static {p0, v0, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->goto:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p5

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    .line 10
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p3

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, v4

    sub-int/2addr v3, p4

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p5

    sub-int/2addr p4, v0

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, v2, v3, p4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 14
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    .line 15
    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    add-int/2addr p2, v3

    .line 16
    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, p4

    iget-object p4, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p5

    sub-int/2addr p2, v0

    .line 18
    iget-object p5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    invoke-virtual {p5, v3, p3, p4, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 19
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p3

    iget p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    .line 20
    iget p3, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    neg-int p4, p2

    div-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-ge p3, p4, :cond_0

    neg-int p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    .line 21
    invoke-virtual {p0, p2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else(I)V

    .line 22
    iput-boolean p5, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->goto:Z

    .line 23
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this:Z

    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SwipeItemLayout\u7684\u5b50\u89c6\u56fe\u4e0d\u7b26\u5408\u89c4\u5b9a"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMeasure(II)V
    .locals 15

    move-object v6, p0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int v11, v1, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int v12, v1, v0

    .line 8
    iget-object v0, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v13, v1, v2

    .line 10
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v1, v0

    .line 11
    iget-object v1, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    add-int v3, v13, v11

    add-int v5, v14, v12

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_0

    .line 12
    iget-object v1, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v13

    add-int/2addr v1, v11

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_0

    :cond_0
    if-nez v7, :cond_1

    .line 13
    iget-object v1, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v13

    add-int v8, v1, v11

    :cond_1
    :goto_0
    if-ne v9, v0, :cond_2

    .line 14
    iget-object v0, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v14

    add-int/2addr v0, v12

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    :cond_2
    if-nez v9, :cond_3

    .line 15
    iget-object v0, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v14

    add-int v10, v0, v12

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0, v8, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 17
    iget-object v0, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    .line 19
    iget-object v0, v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v12

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    return-void

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SwipeItemLayout\u7684\u5b50\u89c6\u56fe\u4e0d\u7b26\u5408\u89c4\u5b9a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 4
    invoke-static {p0, v0, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->new:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if()V

    return v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 9
    invoke-static {p0, v0, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->new(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->for:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->goto:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do()V

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    return-void
.end method

.method public this(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    add-int/2addr v1, p1

    if-lez p1, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    if-gez p1, :cond_3

    .line 2
    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    neg-int p1, p1

    if-ge v1, p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x1

    .line 5
    :cond_3
    iget p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    sub-int p1, v1, p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else(I)V

    .line 6
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    return v0
.end method

.method public try(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    .line 2
    iget v2, v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->for:I

    const/4 v3, 0x0

    if-le p1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1, v3}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if(II)V

    goto :goto_1

    .line 4
    :cond_0
    iget v2, v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->for:I

    neg-int v2, v2

    if-ge p1, v2, :cond_1

    iget-object p1, v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 5
    iget p1, p1, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    neg-int p1, p1

    if-eq v1, p1, :cond_1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if(II)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 8
    iget p1, p1, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    neg-int p1, p1

    .line 9
    div-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if(II)V

    :goto_1
    return-void
.end method
