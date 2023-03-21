.class public Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "WebSearchGuidePopup.java"


# instance fields
.field public for:Landroid/animation/ObjectAnimator;

.field public if:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/PositionPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final break()V
    .locals 4

    const v0, 0x7f090636

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/apk/nc;

    invoke-direct {v1, p0}, Lcom/apk/nc;-><init>(Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 3
    fill-array-data v2, :array_0

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    .line 4
    fill-array-data v1, :array_1

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->for:Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->for:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->for:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$do;-><init>(Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->for:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$if;-><init>(Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41a00000    # 20.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3e600000    # -20.0f
        0x0
    .end array-data
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c01cf

    return v0
.end method

.method public getPopupHeight()I
    .locals 1

    const/high16 v0, 0x43160000    # 150.0f

    .line 1
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    return v0
.end method

.method public synthetic if()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->break()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    new-instance v0, Lcom/apk/mc;

    invoke-direct {v0, p0}, Lcom/apk/mc;-><init>(Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->for:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public synthetic this(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
