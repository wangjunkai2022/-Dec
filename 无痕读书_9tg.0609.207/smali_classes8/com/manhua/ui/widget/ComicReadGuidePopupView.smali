.class public Lcom/manhua/ui/widget/ComicReadGuidePopupView;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "ComicReadGuidePopupView.java"


# static fields
.field public static final this:I


# instance fields
.field public case:Landroid/widget/ImageView;

.field public else:Landroid/widget/ImageView;

.field public for:Landroid/widget/LinearLayout;

.field public goto:Landroid/widget/ImageView;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/LinearLayout;

.field public try:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 1
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    sput v0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->this:I

    return-void
.end method

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
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0088

    return v0
.end method

.method public final if(FFFF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 p1, 0x5dc

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p1, -0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 5
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090188

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if:Landroid/widget/TextView;

    const v0, 0x7f090276

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->for:Landroid/widget/LinearLayout;

    const v0, 0x7f09026f

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    const v0, 0x7f090275

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->try:Landroid/widget/ImageView;

    const v0, 0x7f090277

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->case:Landroid/widget/ImageView;

    const v0, 0x7f09026e

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->else:Landroid/widget/ImageView;

    const v0, 0x7f090270

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->goto:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if:Landroid/widget/TextView;

    const v1, 0x7f1000e4

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->for:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 17
    :cond_2
    sget v0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->this:I

    int-to-float v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if(FFFF)V

    .line 18
    sget v0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->this:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if(FFFF)V

    const v0, 0x7f090272

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;-><init>(Lcom/manhua/ui/widget/ComicReadGuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
