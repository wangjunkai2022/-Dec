.class public Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;
.super Ljava/lang/Object;
.source "SwipeItemLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/SwipeItemLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public do:Landroid/widget/Scroller;

.field public for:I

.field public if:Z

.field public new:Z

.field public final synthetic try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/SwipeItemLayout;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/widget/Scroller;

    .line 3
    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->break:Landroid/view/animation/Interpolator;

    .line 4
    invoke-direct {p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if:Z

    .line 6
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->new:Z

    .line 7
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->for:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if:Z

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public if(II)V
    .locals 7

    if-eq p1, p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    sget-object v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if:Z

    if-ge p2, p1, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->new:Z

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    const/4 v3, 0x0

    sub-int v4, p2, p1

    const/4 v5, 0x0

    const/16 v6, 0x190

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 2
    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->if:Z

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 6
    iget v4, v3, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    sub-int/2addr v2, v4

    .line 7
    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->this(I)Z

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->do:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    :cond_2
    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->setTouchMode(Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 15
    iget v0, v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    if-eqz v0, :cond_4

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    .line 17
    iget v2, v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->else:I

    .line 18
    div-int/lit8 v3, v2, 0x2

    if-le v0, v3, :cond_3

    neg-int v0, v2

    .line 19
    iput v0, v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 20
    iput v0, v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout;->case:I

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$new;->try:Lcom/biquge/ebook/app/widget/SwipeItemLayout;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
