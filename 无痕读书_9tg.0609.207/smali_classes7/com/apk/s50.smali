.class public Lcom/apk/s50;
.super Ljava/lang/Object;
.source "TrSplashZoomOutManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic case:F

.field public final synthetic do:Lcom/apk/r50$do;

.field public final synthetic else:Landroid/view/ViewGroup;

.field public final synthetic for:Landroid/view/ViewGroup;

.field public final synthetic goto:Lcom/apk/r50;

.field public final synthetic if:Landroid/view/View;

.field public final synthetic new:F

.field public final synthetic try:[I


# direct methods
.method public constructor <init>(Lcom/apk/r50;Lcom/apk/r50$do;Landroid/view/View;Landroid/view/ViewGroup;F[IFLandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s50;->goto:Lcom/apk/r50;

    iput-object p2, p0, Lcom/apk/s50;->do:Lcom/apk/r50$do;

    iput-object p3, p0, Lcom/apk/s50;->if:Landroid/view/View;

    iput-object p4, p0, Lcom/apk/s50;->for:Landroid/view/ViewGroup;

    iput p5, p0, Lcom/apk/s50;->new:F

    iput-object p6, p0, Lcom/apk/s50;->try:[I

    iput p7, p0, Lcom/apk/s50;->case:F

    iput-object p8, p0, Lcom/apk/s50;->else:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/apk/s50;->if:Landroid/view/View;

    invoke-static {p1}, Lcom/apk/r50;->case(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/apk/s50;->if:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p1, p0, Lcom/apk/s50;->if:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 4
    iget-object p1, p0, Lcom/apk/s50;->if:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 5
    iget-object p1, p0, Lcom/apk/s50;->if:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 6
    iget-object v0, p0, Lcom/apk/s50;->for:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 7
    iget v0, p0, Lcom/apk/s50;->new:F

    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/apk/s50;->try:[I

    aget v3, v2, v1

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 8
    iget v3, p0, Lcom/apk/s50;->case:F

    const/4 v4, 0x1

    aget v5, p1, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    aget v2, v2, v4

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 9
    aget v1, p1, v1

    aget p1, p1, v4

    .line 10
    iget-object p1, p0, Lcom/apk/s50;->else:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/apk/s50;->if:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/apk/s50;->goto:Lcom/apk/r50;

    .line 12
    iget v2, v1, Lcom/apk/r50;->if:I

    .line 13
    iget v1, v1, Lcom/apk/r50;->for:I

    .line 14
    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-object v1, p0, Lcom/apk/s50;->for:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/apk/s50;->else:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lcom/apk/s50;->else:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 17
    iget-object p1, p0, Lcom/apk/s50;->else:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 18
    iget-object p1, p0, Lcom/apk/s50;->do:Lcom/apk/r50$do;

    if-eqz p1, :cond_0

    .line 19
    check-cast p1, Lcom/biquge/ebook/app/ui/activity/TestActivity$do;

    .line 20
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/TestActivity$do;->do:Lcom/qq/e/ads/splash/SplashAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/splash/SplashAD;->zoomOutAnimationFinish()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/s50;->do:Lcom/apk/r50$do;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/s50;->goto:Lcom/apk/r50;

    .line 3
    iget p1, p1, Lcom/apk/r50;->else:I

    :cond_0
    return-void
.end method
