.class public Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;
.super Landroid/widget/ViewFlipper;
.source "MarqueeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$if;
    }
.end annotation


# instance fields
.field public break:I

.field public case:Z

.field public catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public class:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$if;

.field public const:Z

.field public do:I

.field public else:I

.field public for:I

.field public goto:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end field

.field public if:Z

.field public new:I

.field public this:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end field

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->do:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if:Z

    const/16 v1, 0x3e8

    .line 4
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->for:I

    const/16 v1, 0xe

    .line 5
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->new:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->try:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->case:Z

    const/16 v2, 0x13

    .line 8
    iput v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->else:I

    const v3, 0x7f01000c

    .line 9
    iput v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->goto:I

    const v4, 0x7f01000e

    .line 10
    iput v4, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->this:I

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    .line 12
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->const:Z

    .line 13
    sget-object v5, Lcom/biquge/ebook/app/R$styleable;->MarqueeViewStyle:[I

    invoke-virtual {p1, p2, v5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 14
    iget v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->do:I

    const/4 v6, 0x2

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->do:I

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if:Z

    .line 16
    iget v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->for:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->for:I

    const/4 v5, 0x3

    .line 17
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->case:Z

    const/4 v5, 0x5

    .line 18
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 19
    iget v7, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->new:I

    int-to-float v7, v7

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->new:I

    int-to-float v5, v5

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v5, p1

    float-to-int p1, v5

    .line 21
    iput p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->new:I

    :cond_0
    const/4 p1, 0x4

    .line 22
    iget v5, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->try:I

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->try:I

    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x15

    .line 24
    iput p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->else:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x11

    .line 25
    iput p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->else:I

    goto :goto_0

    .line 26
    :cond_3
    iput v2, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->else:I

    .line 27
    :goto_0
    iput v3, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->goto:I

    .line 28
    iput v4, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->this:I

    .line 29
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    iget p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->do:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->clearAnimation()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->break:I

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->for:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 10
    iget-boolean p2, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->for:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    new-instance p2, Lcom/apk/yh;

    invoke-direct {p2, p0}, Lcom/apk/yh;-><init>(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getNotices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final if(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->else:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    iget v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->try:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->new:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6
    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->case:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 7
    :cond_0
    new-instance v1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$do;-><init>(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->break:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public setNotices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->class:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$if;

    return-void
.end method
