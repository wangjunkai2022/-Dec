.class public Lcom/apk/ev;
.super Lcom/apk/cv;
.source "ScrollScaleAnimator.java"


# instance fields
.field public case:F

.field public else:F

.field public for:Landroid/animation/IntEvaluator;

.field public goto:Z

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/apk/ov;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/cv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    .line 2
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p1, p0, Lcom/apk/ev;->for:Landroid/animation/IntEvaluator;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/apk/ev;->case:F

    .line 4
    iput p1, p0, Lcom/apk/ev;->else:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/apk/ev;->goto:Z

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/apk/ev$for;

    invoke-direct {v1, p0}, Lcom/apk/ev$for;-><init>(Lcom/apk/ev;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    sget v1, Lcom/apk/zu;->if:I

    int-to-long v1, v1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 5
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    iget v1, p0, Lcom/apk/ev;->case:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    iget v1, p0, Lcom/apk/ev;->else:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-boolean v0, p0, Lcom/apk/ev;->goto:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    iget v1, p0, Lcom/apk/ev;->else:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    new-instance v1, Lcom/apk/ev$do;

    invoke-direct {v1, p0}, Lcom/apk/ev$do;-><init>(Lcom/apk/ev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    new-instance v1, Lcom/apk/ev$if;

    invoke-direct {v1, p0}, Lcom/apk/ev$if;-><init>(Lcom/apk/ev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
