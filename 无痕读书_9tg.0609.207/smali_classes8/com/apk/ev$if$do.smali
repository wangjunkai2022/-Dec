.class public Lcom/apk/ev$if$do;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ev$if;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ev$if;


# direct methods
.method public constructor <init>(Lcom/apk/ev$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ev$if$do;->do:Lcom/apk/ev$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/apk/ev$if$do;->do:Lcom/apk/ev$if;

    iget-object v0, v0, Lcom/apk/ev$if;->do:Lcom/apk/ev;

    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/apk/ev$if$do;->do:Lcom/apk/ev$if;

    iget-object v0, v0, Lcom/apk/ev$if;->do:Lcom/apk/ev;

    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    .line 4
    iget-object v2, v0, Lcom/apk/ev;->for:Landroid/animation/IntEvaluator;

    .line 5
    iget v0, v0, Lcom/apk/ev;->new:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v0, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/apk/ev$if$do;->do:Lcom/apk/ev$if;

    iget-object v2, v2, Lcom/apk/ev$if;->do:Lcom/apk/ev;

    .line 7
    iget-object v4, v2, Lcom/apk/ev;->for:Landroid/animation/IntEvaluator;

    .line 8
    iget v2, v2, Lcom/apk/ev;->try:I

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p1, v2, v3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    .line 11
    iget-object v0, p0, Lcom/apk/ev$if$do;->do:Lcom/apk/ev$if;

    iget-object v0, v0, Lcom/apk/ev$if;->do:Lcom/apk/ev;

    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    iget-object v0, p0, Lcom/apk/ev$if$do;->do:Lcom/apk/ev$if;

    iget-object v0, v0, Lcom/apk/ev$if;->do:Lcom/apk/ev;

    iget-boolean v1, v0, Lcom/apk/ev;->goto:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
