.class public Lcom/apk/ev$for;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ev;->do()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ev;


# direct methods
.method public constructor <init>(Lcom/apk/ev;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    iget-object v2, v0, Lcom/apk/cv;->do:Landroid/view/View;

    .line 4
    iget-object v0, v0, Lcom/apk/ev;->for:Landroid/animation/IntEvaluator;

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    .line 6
    iget v5, v5, Lcom/apk/ev;->new:I

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    .line 8
    iget-object v4, v4, Lcom/apk/ev;->for:Landroid/animation/IntEvaluator;

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    .line 10
    iget v5, v5, Lcom/apk/ev;->try:I

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v3, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 12
    invoke-virtual {v2, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 13
    iget-object p1, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    iget-object p1, p1, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 14
    iget-object p1, p0, Lcom/apk/ev$for;->do:Lcom/apk/ev;

    iget-boolean v0, p1, Lcom/apk/ev;->goto:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
