.class public Lcom/apk/jv;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lcom/lxj/xpopup/core/ImageViewerPopupView;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/jv;->for:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iput p2, p0, Lcom/apk/jv;->do:I

    iput p3, p0, Lcom/apk/jv;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/jv;->for:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->case:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v2, p0, Lcom/apk/jv;->do:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/apk/jv;->if:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3
    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
