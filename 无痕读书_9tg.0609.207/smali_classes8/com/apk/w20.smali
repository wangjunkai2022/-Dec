.class public Lcom/apk/w20;
.super Ljava/lang/Object;
.source "ZoomRecyclerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ZoomRecyclerView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ZoomRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/w20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->final:F

    .line 2
    iget-object v0, p0, Lcom/apk/w20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const-string v1, "tranX"

    .line 3
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "tranY"

    .line 4
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 5
    iput v1, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->class:F

    .line 6
    iput p1, v0, Lcom/manhua/ui/widget/ZoomRecyclerView;->const:F

    .line 7
    iget-object p1, p0, Lcom/apk/w20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
