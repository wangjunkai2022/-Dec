.class public Lcom/biquge/ebook/app/widget/ExpandableTextView$for;
.super Landroid/view/animation/Animation;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final do:Landroid/view/View;

.field public final for:I

.field public final if:I

.field public final synthetic new:Lcom/biquge/ebook/app/widget/ExpandableTextView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->new:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->do:Landroid/view/View;

    .line 3
    iput p3, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->if:I

    .line 4
    iput p4, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->for:I

    .line 5
    iget p1, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->catch:I

    int-to-long p1, p1

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget p2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->for:I

    iget v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->if:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->new:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v1, v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 3
    iget v0, v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->goto:I

    sub-int v0, p2, v0

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->new:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 6
    iget v0, v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->class:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->new:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 9
    iget v0, v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->class:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->do:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;->do:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
