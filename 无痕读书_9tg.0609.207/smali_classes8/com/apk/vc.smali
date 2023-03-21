.class public Lcom/apk/vc;
.super Ljava/lang/Object;
.source "DownloadProgressButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/vc;->do:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/apk/vc;->do:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 3
    iget v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->catch:F

    .line 4
    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    .line 5
    iput v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
