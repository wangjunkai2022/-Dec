.class public abstract Lcom/apk/x9;
.super Lcom/apk/y9;
.source "HorizonPageAnim.java"


# instance fields
.field public default:Z

.field public extends:Z

.field public finally:Z

.field public final import:I

.field public native:Landroid/view/ViewGroup;

.field public package:Z

.field public public:Landroid/view/ViewGroup;

.field public return:Z

.field public static:I

.field public switch:I

.field public throws:Z


# direct methods
.method public constructor <init>(IILandroid/view/ViewGroup;Lcom/apk/y9$if;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/apk/y9;-><init>(IIIILandroid/view/ViewGroup;Lcom/apk/y9$if;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/x9;->return:Z

    .line 3
    iput p1, p0, Lcom/apk/x9;->static:I

    .line 4
    iput p1, p0, Lcom/apk/x9;->switch:I

    .line 5
    iput-boolean p1, p0, Lcom/apk/x9;->throws:Z

    .line 6
    iput-boolean p1, p0, Lcom/apk/x9;->default:Z

    .line 7
    iput-boolean p1, p0, Lcom/apk/x9;->extends:Z

    .line 8
    iput-boolean p1, p0, Lcom/apk/x9;->finally:Z

    .line 9
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/apk/x9;->import:I

    .line 10
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    const-string p2, "CurView"

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    const-string p2, "NextView"

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 15
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public if(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/apk/y9$do;->if:Lcom/apk/y9$do;

    iget-boolean v1, p0, Lcom/apk/y9;->super:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v1

    int-to-float v5, v3

    .line 4
    invoke-virtual {p0, v4, v5}, Lcom/apk/y9;->new(FF)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_15

    if-eq p1, v2, :cond_b

    const/4 v7, 0x2

    if-eq p1, v7, :cond_1

    goto/16 :goto_a

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/apk/x9;->throws:Z

    if-nez p1, :cond_4

    .line 7
    iget p1, p0, Lcom/apk/y9;->catch:F

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v7, p0, Lcom/apk/x9;->import:I

    int-to-float v7, v7

    cmpl-float p1, p1, v7

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/apk/y9;->class:F

    sub-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/apk/x9;->import:I

    int-to-float v5, v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/apk/x9;->throws:Z

    .line 8
    :cond_4
    iget-boolean p1, p0, Lcom/apk/x9;->throws:Z

    if-eqz p1, :cond_16

    .line 9
    iget p1, p0, Lcom/apk/x9;->static:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/apk/x9;->switch:I

    if-nez p1, :cond_6

    .line 10
    iget p1, p0, Lcom/apk/y9;->catch:F

    sub-float/2addr v4, p1

    const/4 p1, 0x0

    cmpl-float p1, v4, p1

    if-lez p1, :cond_5

    .line 11
    iput-boolean v6, p0, Lcom/apk/x9;->default:Z

    .line 12
    iget-object p1, p0, Lcom/apk/y9;->for:Lcom/apk/y9$if;

    iget-boolean v0, p0, Lcom/apk/x9;->package:Z

    check-cast p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->if(Z)Z

    move-result p1

    .line 13
    iput-boolean v6, p0, Lcom/apk/x9;->package:Z

    .line 14
    sget-object v0, Lcom/apk/y9$do;->for:Lcom/apk/y9$do;

    invoke-virtual {p0, v0}, Lcom/apk/y9;->for(Lcom/apk/y9$do;)V

    if-nez p1, :cond_a

    .line 15
    iput-boolean v2, p0, Lcom/apk/x9;->extends:Z

    return v2

    .line 16
    :cond_5
    iput-boolean v2, p0, Lcom/apk/x9;->default:Z

    .line 17
    iget-object p1, p0, Lcom/apk/y9;->for:Lcom/apk/y9$if;

    iget-boolean v4, p0, Lcom/apk/x9;->package:Z

    check-cast p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    invoke-virtual {p1, v4}, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do(Z)Z

    move-result p1

    .line 18
    iput-boolean v6, p0, Lcom/apk/x9;->package:Z

    .line 19
    invoke-virtual {p0, v0}, Lcom/apk/y9;->for(Lcom/apk/y9$do;)V

    if-nez p1, :cond_a

    .line 20
    iput-boolean v2, p0, Lcom/apk/x9;->extends:Z

    return v2

    .line 21
    :cond_6
    iget-boolean p1, p0, Lcom/apk/x9;->default:Z

    if-eqz p1, :cond_8

    .line 22
    iget p1, p0, Lcom/apk/x9;->static:I

    sub-int p1, v1, p1

    if-lez p1, :cond_7

    const/4 v6, 0x1

    :cond_7
    iput-boolean v6, p0, Lcom/apk/x9;->return:Z

    goto :goto_2

    .line 23
    :cond_8
    iget p1, p0, Lcom/apk/x9;->static:I

    sub-int p1, v1, p1

    if-gez p1, :cond_9

    const/4 v6, 0x1

    :cond_9
    iput-boolean v6, p0, Lcom/apk/x9;->return:Z

    .line 24
    :goto_2
    iget-object p1, p0, Lcom/apk/y9;->do:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 25
    :cond_a
    iput v1, p0, Lcom/apk/x9;->static:I

    .line 26
    iput v3, p0, Lcom/apk/x9;->switch:I

    .line 27
    iput-boolean v2, p0, Lcom/apk/x9;->finally:Z

    goto/16 :goto_a

    .line 28
    :cond_b
    iget-boolean p1, p0, Lcom/apk/x9;->return:Z

    if-eqz p1, :cond_e

    .line 29
    iget-object p1, p0, Lcom/apk/y9;->for:Lcom/apk/y9$if;

    check-cast p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 31
    iput-boolean v2, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->this:Z

    .line 32
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

    .line 33
    check-cast v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;

    if-eqz v1, :cond_d

    .line 34
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->new:Lcom/apk/h2;

    if-eqz p1, :cond_e

    .line 35
    iget-object v1, p1, Lcom/apk/h2;->q:Lcom/biquge/ebook/app/bean/BookChapter;

    iput-object v1, p1, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 36
    iget-object v1, p1, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 37
    iget-boolean v3, p1, Lcom/apk/h2;->u:Z

    if-eqz v3, :cond_c

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_c
    add-int/2addr v1, v2

    .line 38
    :goto_3
    iget-object p1, p1, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v1, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    .line 39
    throw p1

    .line 40
    :cond_e
    :goto_4
    iget-boolean p1, p0, Lcom/apk/x9;->extends:Z

    if-nez p1, :cond_16

    .line 41
    iput-boolean v2, p0, Lcom/apk/x9;->finally:Z

    .line 42
    move-object p1, p0

    check-cast p1, Lcom/apk/aa;

    .line 43
    iget-boolean v1, p1, Lcom/apk/x9;->return:Z

    if-eqz v1, :cond_12

    .line 44
    iget v1, p1, Lcom/apk/aa;->abstract:I

    if-lez v1, :cond_f

    iget-object v1, p1, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 45
    iget v1, p1, Lcom/apk/y9;->try:I

    int-to-float v1, v1

    iget v3, p1, Lcom/apk/y9;->const:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_5

    .line 46
    :cond_f
    iget v1, p1, Lcom/apk/y9;->const:F

    float-to-int v1, v1

    neg-int v1, v1

    .line 47
    :goto_5
    iget-object v3, p1, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 48
    iget v0, p1, Lcom/apk/y9;->try:I

    int-to-float v0, v0

    iget v1, p1, Lcom/apk/y9;->const:F

    add-float/2addr v0, v1

    neg-float v0, v0

    float-to-int v1, v0

    .line 49
    :cond_10
    iget v0, p1, Lcom/apk/aa;->continue:I

    if-lez v0, :cond_11

    .line 50
    iget v0, p1, Lcom/apk/y9;->case:I

    int-to-float v0, v0

    iget v3, p1, Lcom/apk/y9;->final:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_6

    .line 51
    :cond_11
    iget v0, p1, Lcom/apk/y9;->final:F

    float-to-int v0, v0

    neg-int v0, v0

    .line 52
    :goto_6
    iput-boolean v2, p1, Lcom/apk/y9;->super:Z

    goto :goto_9

    .line 53
    :cond_12
    iget v1, p1, Lcom/apk/aa;->abstract:I

    if-lez v1, :cond_13

    iget-object v1, p1, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 54
    iget v0, p1, Lcom/apk/y9;->try:I

    int-to-float v0, v0

    iget v1, p1, Lcom/apk/y9;->const:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_7

    .line 55
    :cond_13
    iget v0, p1, Lcom/apk/y9;->try:I

    int-to-float v0, v0

    iget v1, p1, Lcom/apk/y9;->const:F

    sub-float v1, v0, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    :goto_7
    move v1, v0

    .line 56
    iget v0, p1, Lcom/apk/aa;->continue:I

    if-lez v0, :cond_14

    .line 57
    iget v0, p1, Lcom/apk/y9;->case:I

    int-to-float v0, v0

    iget v3, p1, Lcom/apk/y9;->final:F

    goto :goto_8

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    iget v3, p1, Lcom/apk/y9;->final:F

    :goto_8
    sub-float/2addr v0, v3

    float-to-int v0, v0

    :goto_9
    move v7, v0

    move v6, v1

    .line 59
    iget-object v3, p1, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    iget v0, p1, Lcom/apk/y9;->const:F

    float-to-int v4, v0

    iget v0, p1, Lcom/apk/y9;->final:F

    float-to-int v5, v0

    const/16 v8, 0xfa

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 60
    iget-object v0, p1, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    const/16 v1, 0x44f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object p1, p1, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    iget-object p1, p0, Lcom/apk/y9;->do:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_a

    .line 63
    :cond_15
    iput v6, p0, Lcom/apk/x9;->static:I

    .line 64
    iput v6, p0, Lcom/apk/x9;->switch:I

    .line 65
    iput-boolean v6, p0, Lcom/apk/x9;->throws:Z

    .line 66
    iput-boolean v6, p0, Lcom/apk/x9;->extends:Z

    .line 67
    iput-boolean v6, p0, Lcom/apk/x9;->default:Z

    .line 68
    iput-boolean v6, p0, Lcom/apk/x9;->finally:Z

    .line 69
    iput-boolean v6, p0, Lcom/apk/x9;->return:Z

    .line 70
    iput-boolean v2, p0, Lcom/apk/x9;->package:Z

    .line 71
    move-object p1, p0

    check-cast p1, Lcom/apk/aa;

    .line 72
    iput v4, p1, Lcom/apk/y9;->catch:F

    .line 73
    iput v5, p1, Lcom/apk/y9;->class:F

    .line 74
    invoke-virtual {p1, v4}, Lcom/apk/aa;->try(F)V

    .line 75
    iget-object p1, p0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_16

    .line 76
    iget-object p1, p0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 77
    iput-boolean v6, p0, Lcom/apk/x9;->finally:Z

    .line 78
    iget-object p1, p0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/apk/y9;->new(FF)V

    :cond_16
    :goto_a
    return v2
.end method
