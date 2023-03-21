.class public Lcom/biquge/ebook/app/ui/book/simulation/PageView;
.super Landroid/widget/FrameLayout;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;
    }
.end annotation


# instance fields
.field public break:Z

.field public final case:Lcom/apk/y9$if;

.field public catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

.field public class:Z

.field public final const:Landroid/view/GestureDetector;

.field public do:I

.field public else:Z

.field public final:I

.field public for:Z

.field public goto:Z

.field public if:I

.field public new:Lcom/apk/h2;

.field public super:I

.field public this:Z

.field public try:Lcom/apk/y9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->for:Z

    .line 3
    new-instance p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;-><init>(Lcom/biquge/ebook/app/ui/book/simulation/PageView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->case:Lcom/apk/y9$if;

    .line 4
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 5
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do:I

    .line 6
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->if:I

    .line 7
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/apk/z9;

    invoke-direct {v0, p0}, Lcom/apk/z9;-><init>(Lcom/biquge/ebook/app/ui/book/simulation/PageView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->const:Landroid/view/GestureDetector;

    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/apk/x9;

    .line 3
    iget-object v1, v0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 5
    iget-object v2, v0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    int-to-float v3, v1

    int-to-float v4, v2

    .line 6
    invoke-virtual {v0, v3, v4}, Lcom/apk/y9;->new(FF)V

    .line 7
    iget-object v3, v0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v1, v0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/apk/x9;->finally:Z

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/apk/y9;->do:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 10
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    return-void
.end method

.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    instance-of v1, v0, Lcom/apk/x9;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/apk/x9;

    .line 3
    iget-object v1, v0, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    .line 4
    iget-object v2, v0, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->new:Lcom/apk/h2;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apk/h2;->r(Landroid/view/ViewGroup;Z)V

    :cond_1
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    const/4 p4, 0x1

    if-eqz p3, :cond_6

    .line 2
    check-cast p3, Lcom/apk/x9;

    .line 3
    iget-boolean v0, p3, Lcom/apk/x9;->finally:Z

    const-string v1, "CurView"

    if-eqz v0, :cond_3

    .line 4
    check-cast p3, Lcom/apk/aa;

    .line 5
    iget v0, p3, Lcom/apk/y9;->throw:I

    if-eqz v0, :cond_0

    .line 6
    iget v2, p3, Lcom/apk/aa;->m:I

    if-eq v0, v2, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    iget v0, p3, Lcom/apk/y9;->throw:I

    .line 9
    iput v0, p3, Lcom/apk/aa;->m:I

    .line 10
    :cond_0
    iget-object v0, p3, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    sget-object v2, Lcom/apk/y9$do;->if:Lcom/apk/y9$do;

    if-ne v0, v2, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p3}, Lcom/apk/aa;->case()V

    .line 13
    iget-object p2, p3, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1, p2}, Lcom/apk/aa;->goto(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 14
    iget-object p2, p3, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1, p2}, Lcom/apk/aa;->catch(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 15
    invoke-virtual {p3, p1}, Lcom/apk/aa;->this(Landroid/graphics/Canvas;)V

    .line 16
    iget-object p2, p3, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1, p2}, Lcom/apk/aa;->else(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p3}, Lcom/apk/aa;->case()V

    .line 18
    iget-object p2, p3, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1, p2}, Lcom/apk/aa;->goto(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 19
    iget-object p2, p3, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1, p2}, Lcom/apk/aa;->catch(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 20
    invoke-virtual {p3, p1}, Lcom/apk/aa;->this(Landroid/graphics/Canvas;)V

    .line 21
    iget-object p2, p3, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1, p2}, Lcom/apk/aa;->else(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {p3, p4}, Lcom/apk/aa;->const(Z)V

    goto :goto_2

    .line 23
    :cond_3
    check-cast p3, Lcom/apk/aa;

    .line 24
    iget-boolean v0, p3, Lcom/apk/x9;->return:Z

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p2, p3, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 27
    iget-object p1, p3, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    if-eqz p1, :cond_5

    const/16 p2, 0x44d

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    iget-object p1, p3, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "NextView"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 31
    iget-object p2, p3, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 32
    iget-object p1, p3, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    if-eqz p1, :cond_5

    const/16 p2, 0x44e

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    iget-object p1, p3, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    const-wide/16 v0, 0x14

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p3, p1}, Lcom/apk/aa;->const(Z)V

    :cond_6
    :goto_2
    return p4
.end method

.method public for()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do:I

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->if:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    .line 5
    new-instance v2, Lcom/apk/aa;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->case:Lcom/apk/y9$if;

    invoke-direct {v2, v1, v0, p0, v3}, Lcom/apk/aa;-><init>(IILandroid/view/ViewGroup;Lcom/apk/y9$if;)V

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    return-void
.end method

.method public getCurPage()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/apk/x9;

    .line 3
    iget-object v0, v0, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNextPage()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/apk/x9;

    .line 3
    iget-object v0, v0, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public if()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const v0, 0x7f090110

    const v1, 0x7f090313

    const v2, 0x7f0900e0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/widget/BookTitleTextView;

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/widget/BookContentTextView;

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/widget/BookPageTextView;

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 7
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/BookTitleTextView;

    .line 12
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/widget/BookContentTextView;

    .line 13
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/BookPageTextView;

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 15
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

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
    iget v3, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->final:I

    sub-int/2addr v0, v3

    .line 5
    iget v3, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->super:I

    sub-int/2addr p1, v3

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le v0, p1, :cond_8

    return v1

    .line 7
    :cond_1
    iput-boolean v2, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->break:Z

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->final:I

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->super:I

    .line 10
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->this:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    .line 11
    iget-boolean v0, v0, Lcom/apk/y9;->super:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 12
    :goto_0
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->break:Z

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

    if-eqz v0, :cond_7

    .line 14
    check-cast v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;

    .line 15
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v3

    .line 16
    iget-boolean v3, v3, Lcom/apk/n0;->extends:Z

    if-eqz v3, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 18
    iget-object v4, v3, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 19
    iget-boolean v4, v4, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->break:Z

    if-eqz v4, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 21
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 22
    :cond_6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 23
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 24
    iget-object v0, v0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 25
    iget-boolean v0, v0, Lcom/manhua/ui/widget/ComicReaderViewpager;->do:Z

    xor-int/2addr v0, v1

    xor-int/2addr v1, v0

    .line 26
    :goto_2
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->for:Z

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v0, p1}, Lcom/apk/y9;->if(Landroid/view/MotionEvent;)Z

    :cond_8
    :goto_3
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->for:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->break:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->const:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->class:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Lcom/apk/y9;->if(Landroid/view/MotionEvent;)Z

    :cond_3
    return v1
.end method

.method public setBgColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    .line 2
    iput p1, v0, Lcom/apk/y9;->throw:I

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBgImage(Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->setBgColor(I)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080223

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getCurPage()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apk/u;->static(Ljava/io/File;Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apk/u;->static(Ljava/io/File;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBookReadPresenter(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->new:Lcom/apk/h2;

    return-void
.end method

.method public setOnDrawMoveListener(Lcom/apk/i1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/apk/y9;->while:Lcom/apk/i1;

    :cond_0
    return-void
.end method

.method public setTouchListener(Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

    return-void
.end method
