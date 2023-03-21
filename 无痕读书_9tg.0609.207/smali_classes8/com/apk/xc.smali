.class public Lcom/apk/xc;
.super Ljava/lang/Object;
.source "DownloadProgressButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/xc;->if:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    iput p2, p0, Lcom/apk/xc;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/xc;->if:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->finally:[F

    .line 3
    iget v1, p0, Lcom/apk/xc;->do:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 4
    iget-object p1, p0, Lcom/apk/xc;->if:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method
