.class public Lcom/biquge/ebook/app/widget/ScrollPaintView;
.super Landroid/widget/RelativeLayout;
.source "ScrollPaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/ScrollPaintView$do;
    }
.end annotation


# instance fields
.field public break:I

.field public case:Landroid/widget/RelativeLayout$LayoutParams;

.field public catch:I

.field public class:F

.field public const:I

.field public default:Z

.field public do:Landroid/widget/ImageView;

.field public else:I

.field public final:I

.field public for:Landroid/widget/RelativeLayout;

.field public goto:I

.field public if:Landroid/widget/RelativeLayout$LayoutParams;

.field public import:I

.field public native:I

.field public new:Landroid/widget/RelativeLayout$LayoutParams;

.field public public:I

.field public return:I

.field public static:Landroid/animation/ObjectAnimator;

.field public super:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

.field public switch:Z

.field public this:I

.field public throw:I

.field public throws:Z

.field public try:Landroid/view/View;

.field public while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x7530

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->const:I

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->new()V

    return-void
.end method

.method public static synthetic do(Lcom/biquge/ebook/app/widget/ScrollPaintView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setWidth(I)V

    return-void
.end method

.method public static synthetic if(Lcom/biquge/ebook/app/widget/ScrollPaintView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScroll(I)V

    return-void
.end method

.method private setScroll(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->switch:Z

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throws:Z

    const/4 p1, 0x0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->new:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->new:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->if:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr p1, v1

    .line 8
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->do:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setWidth(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->default:Z

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->goto:I

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    invoke-direct {p0, v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScroll(I)V

    .line 4
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->catch:I

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public new()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 2
    iget v0, v0, Lcom/apk/ca;->else:F

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->break:I

    .line 4
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 5
    iget v0, v0, Lcom/apk/ca;->goto:F

    float-to-int v0, v0

    .line 6
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    .line 7
    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->break:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float v1, v1, v2

    iput v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->class:F

    .line 8
    invoke-static {}, Lcom/apk/da;->if()I

    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScrollSpeed(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const v0, 0x7f090484

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case:Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f090485

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for:Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->new:Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f090486

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->do:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->if:Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->do:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    if-eq v1, v3, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->return:I

    if-nez p1, :cond_8

    .line 5
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->switch:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throws:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    .line 7
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->public:I

    if-eqz p1, :cond_2

    .line 8
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    .line 9
    :cond_2
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throw:I

    if-le p1, v0, :cond_5

    .line 10
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throws:Z

    if-eqz v0, :cond_3

    .line 11
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->public:I

    .line 12
    :cond_3
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throw:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->import:I

    if-gt p1, v3, :cond_4

    .line 13
    iput v3, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->import:I

    .line 14
    :cond_4
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->import:I

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScroll(I)V

    goto :goto_1

    .line 15
    :cond_5
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->switch:Z

    if-eqz v0, :cond_6

    .line 16
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->public:I

    .line 17
    :cond_6
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throw:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->import:I

    .line 18
    invoke-direct {p0, v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScroll(I)V

    goto :goto_1

    :cond_7
    :goto_0
    return v3

    .line 19
    :cond_8
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    .line 20
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throw:I

    if-le v0, p1, :cond_9

    .line 21
    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->catch:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->class:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    .line 22
    invoke-direct {p0, v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setWidth(I)V

    goto :goto_1

    .line 23
    :cond_9
    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->catch:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->class:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    .line 24
    invoke-direct {p0, v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setWidth(I)V

    :goto_1
    return v3

    .line 25
    :cond_a
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throw:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->const:I

    if-le p1, v0, :cond_11

    .line 27
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->import:I

    if-eqz p1, :cond_c

    .line 28
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    .line 29
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    if-le p1, v0, :cond_b

    .line 30
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    goto :goto_2

    :cond_b
    if-gez p1, :cond_c

    .line 31
    iput v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    .line 32
    :cond_c
    :goto_2
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    if-eqz p1, :cond_f

    if-gez p1, :cond_d

    .line 33
    iput v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    goto :goto_3

    .line 34
    :cond_d
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->break:I

    if-le p1, v0, :cond_e

    .line 35
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    .line 36
    :cond_e
    :goto_3
    iget p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->catch:I

    .line 37
    :cond_f
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->super:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

    if-eqz p1, :cond_10

    .line 38
    check-cast p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do(Z)V

    .line 39
    :cond_10
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V

    goto :goto_4

    .line 40
    :cond_11
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->super:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

    if-eqz p1, :cond_12

    .line 41
    check-cast p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;

    invoke-virtual {p1, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do(Z)V

    .line 42
    :cond_12
    :goto_4
    iput-boolean v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->switch:Z

    .line 43
    iput-boolean v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throws:Z

    return v3

    .line 44
    :cond_13
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    iput v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->import:I

    .line 46
    iput v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->native:I

    .line 47
    iput v2, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->public:I

    .line 48
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->throw:I

    .line 49
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->while:I

    .line 50
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case()V

    return v3
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->do:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setScrollPaintCompleteListener(Lcom/biquge/ebook/app/widget/ScrollPaintView$do;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->super:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

    :cond_0
    return-void
.end method

.method public setScrollSpeed(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x1388

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x2710

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x3a98

    .line 3
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x4e20

    .line 4
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x61a8

    .line 5
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x7530

    .line 6
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_6
    const p1, 0x88b8

    .line 7
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_7
    const p1, 0x9c40

    .line 8
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_8
    const p1, 0xafc8

    .line 9
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_9
    const p1, 0xc350

    .line 10
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_a
    const p1, 0xd6d8

    .line 11
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    goto :goto_0

    :pswitch_b
    const p1, 0xea60

    .line 12
    iput p1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public try()V
    .locals 9

    const-string v0, "auto_read_type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->return:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->goto:I

    if-nez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->goto:I

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    iput v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->goto:I

    .line 8
    :goto_0
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    int-to-long v4, v0

    .line 9
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->goto:I

    if-eqz v0, :cond_1

    .line 10
    iget v6, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->else:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    int-to-long v6, v0

    mul-long v4, v4, v6

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for:Landroid/widget/RelativeLayout;

    new-array v3, v3, [I

    iget v6, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->goto:I

    aput v6, v3, v1

    aput v1, v3, v2

    const-string v2, "translationY"

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    .line 14
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/apk/wg;

    invoke-direct {v1, p0}, Lcom/apk/wg;-><init>(Lcom/biquge/ebook/app/widget/ScrollPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/apk/xg;

    invoke-direct {v1, p0}, Lcom/apk/xg;-><init>(Lcom/biquge/ebook/app/widget/ScrollPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->final:I

    int-to-long v4, v0

    .line 23
    iget v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->catch:I

    if-eqz v0, :cond_4

    .line 24
    iget v6, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->break:I

    int-to-long v7, v6

    div-long/2addr v4, v7

    sub-int/2addr v6, v0

    int-to-long v6, v6

    mul-long v4, v4, v6

    :cond_4
    new-array v0, v3, [I

    .line 25
    iget v3, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->catch:I

    aput v3, v0, v1

    iget v1, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->break:I

    aput v1, v0, v2

    const-string v1, "width"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    .line 26
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/apk/ug;

    invoke-direct {v1, p0}, Lcom/apk/ug;-><init>(Lcom/biquge/ebook/app/widget/ScrollPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/apk/vg;

    invoke-direct {v1, p0}, Lcom/apk/vg;-><init>(Lcom/biquge/ebook/app/widget/ScrollPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    return-void
.end method
