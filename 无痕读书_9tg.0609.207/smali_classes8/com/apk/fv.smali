.class public Lcom/apk/fv;
.super Lcom/apk/cv;
.source "ShadowBgAnimator.java"


# instance fields
.field public for:Landroid/animation/ArgbEvaluator;

.field public new:I

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/apk/cv;-><init>()V

    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/apk/fv;->for:Landroid/animation/ArgbEvaluator;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/apk/fv;->new:I

    .line 8
    iput-boolean v0, p0, Lcom/apk/fv;->try:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/cv;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/apk/fv;->for:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/apk/fv;->new:I

    .line 4
    iput-boolean p1, p0, Lcom/apk/fv;->try:Z

    return-void
.end method


# virtual methods
.method public do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/fv;->for:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    sget v2, Lcom/apk/zu;->new:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/apk/fv;->new:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/apk/fv$if;

    invoke-direct {v1, p0}, Lcom/apk/fv$if;-><init>(Lcom/apk/fv;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-boolean v1, p0, Lcom/apk/fv;->try:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lcom/apk/zu;->if:I

    int-to-long v1, v1

    .line 8
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cv;->do:Landroid/view/View;

    iget v1, p0, Lcom/apk/fv;->new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/fv;->for:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/apk/fv;->new:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    sget v2, Lcom/apk/zu;->new:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/apk/fv$do;

    invoke-direct {v1, p0}, Lcom/apk/fv$do;-><init>(Lcom/apk/fv;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-boolean v1, p0, Lcom/apk/fv;->try:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lcom/apk/zu;->if:I

    int-to-long v1, v1

    .line 8
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public new(F)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/fv;->for:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/apk/fv;->new:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    sget v2, Lcom/apk/zu;->new:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
