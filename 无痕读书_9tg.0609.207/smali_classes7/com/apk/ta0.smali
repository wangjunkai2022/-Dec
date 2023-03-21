.class public Lcom/apk/ta0;
.super Lcom/apk/l80;
.source "SmartKeyboardManager.java"


# instance fields
.field public final synthetic if:Lcom/apk/za0;


# direct methods
.method public constructor <init>(Lcom/apk/za0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ta0;->if:Lcom/apk/za0;

    invoke-direct {p0}, Lcom/apk/l80;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/apk/ta0;->if:Lcom/apk/za0;

    .line 2
    iget-object p1, p1, Lcom/apk/za0;->case:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/ta0;->if:Lcom/apk/za0;

    invoke-static {p1}, Lcom/apk/za0;->if(Lcom/apk/za0;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/ta0;->if:Lcom/apk/za0;

    .line 6
    iget-object p1, p1, Lcom/apk/za0;->if:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/ja0;->else(Landroid/view/View;)Z

    move-result p1

    const-wide/16 v0, 0x96

    const-string v2, "alpha"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/apk/ta0;->if:Lcom/apk/za0;

    .line 9
    iget-object v5, p1, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v4, p1, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 11
    iget-object v5, p1, Lcom/apk/za0;->do:Landroid/app/Activity;

    invoke-static {v5}, Lcom/apk/ja0;->do(Landroid/app/Activity;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iget-object v5, p1, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v4, p1, Lcom/apk/za0;->case:Landroid/view/View;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    new-instance v0, Lcom/apk/va0;

    invoke-direct {v0, p1}, Lcom/apk/va0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/apk/ta0;->if:Lcom/apk/za0;

    .line 19
    iget-object v5, p1, Lcom/apk/za0;->new:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    iget-object v5, p1, Lcom/apk/za0;->new:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_2
    iget-object v5, p1, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v4, p1, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 23
    iget-object v5, p1, Lcom/apk/za0;->do:Landroid/app/Activity;

    invoke-static {v5}, Lcom/apk/ja0;->do(Landroid/app/Activity;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iget-object v5, p1, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v4, p1, Lcom/apk/za0;->case:Landroid/view/View;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    new-instance v0, Lcom/apk/na0;

    invoke-direct {v0, p1}, Lcom/apk/na0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 29
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
