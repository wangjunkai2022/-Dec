.class public Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;
.super Landroid/widget/ViewFlipper;
.source "ShelfMarqueeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView$do;
    }
.end annotation


# instance fields
.field public break:Landroid/view/LayoutInflater;

.field public case:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end field

.field public do:I

.field public else:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end field

.field public for:I

.field public goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public if:Z

.field public new:I

.field public this:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView$do;

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->do:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->if:Z

    const/16 v1, 0x3e8

    .line 4
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->for:I

    const/16 v1, 0xe

    .line 5
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->new:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->try:I

    const v1, 0x7f01000c

    .line 7
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->case:I

    const v2, 0x7f01000e

    .line 8
    iput v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->else:I

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->goto:Ljava/util/List;

    .line 10
    sget-object v3, Lcom/biquge/ebook/app/R$styleable;->MarqueeViewStyle:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    iget v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->do:I

    const/4 v4, 0x2

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->do:I

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->if:Z

    .line 13
    iget v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->for:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->for:I

    const/4 v0, 0x5

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    iget v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->new:I

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->new:I

    int-to-float v0, v0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 17
    iput p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->new:I

    :cond_0
    const/4 p1, 0x4

    .line 18
    iget v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->try:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->try:I

    .line 19
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->case:I

    .line 20
    iput v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->else:I

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    iget p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->do:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->clearAnimation()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->goto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->goto:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->break:Landroid/view/LayoutInflater;

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->break:Landroid/view/LayoutInflater;

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->break:Landroid/view/LayoutInflater;

    const v3, 0x7f0c00ef

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09028f

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    .line 10
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v1, Lcom/apk/ai;

    invoke-direct {v1, p0, v0}, Lcom/apk/ai;-><init>(Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->goto:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 15
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->if:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->for:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 18
    iget-boolean p2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->if:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->for:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    :cond_5
    return-void
.end method


# virtual methods
.method public getNotices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->goto:Ljava/util/List;

    return-object v0
.end method

.method public setNotices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->goto:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->this:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView$do;

    return-void
.end method
