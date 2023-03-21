.class public Lcom/apk/dv;
.super Lcom/apk/cv;
.source "ScaleAlphaAnimator.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/apk/ov;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/cv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2
    sget v1, Lcom/apk/zu;->if:I

    int-to-long v1, v1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    new-instance v1, Lcom/apk/dv$do;

    invoke-direct {v1, p0}, Lcom/apk/dv$do;-><init>(Lcom/apk/dv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    new-instance v1, Lcom/apk/dv$if;

    invoke-direct {v1, p0}, Lcom/apk/dv$if;-><init>(Lcom/apk/dv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
