.class public Lcom/apk/rs;
.super Landroid/widget/FrameLayout;
.source "PtrClassicDefaultHeader.java"

# interfaces
.implements Lcom/apk/us;


# instance fields
.field public case:Lcom/biquge/ebook/app/widget/AppProgressBar;

.field public do:I

.field public for:Landroid/view/animation/RotateAnimation;

.field public if:Landroid/view/animation/RotateAnimation;

.field public new:Landroid/widget/TextView;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x96

    .line 2
    iput p1, p0, Lcom/apk/rs;->do:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/biquge/ebook/app/R$styleable;->PtrClassicHeader:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Lcom/apk/rs;->do:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/apk/rs;->do:I

    .line 5
    :cond_0
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/apk/rs;->if:Landroid/view/animation/RotateAnimation;

    .line 6
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7
    iget-object p1, p0, Lcom/apk/rs;->if:Landroid/view/animation/RotateAnimation;

    iget v0, p0, Lcom/apk/rs;->do:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 8
    iget-object p1, p0, Lcom/apk/rs;->if:Landroid/view/animation/RotateAnimation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 9
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/apk/rs;->for:Landroid/view/animation/RotateAnimation;

    .line 10
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11
    iget-object p1, p0, Lcom/apk/rs;->for:Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/apk/rs;->do:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 12
    iget-object p1, p0, Lcom/apk/rs;->for:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c008f

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090436

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/rs;->try:Landroid/view/View;

    const v0, 0x7f090437

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    const v0, 0x7f090438

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/AppProgressBar;

    iput-object p1, p0, Lcom/apk/rs;->case:Lcom/biquge/ebook/app/widget/AppProgressBar;

    .line 17
    invoke-virtual {p0}, Lcom/apk/rs;->case()V

    .line 18
    iget-object p1, p0, Lcom/apk/rs;->case:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/rs;->try:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/apk/rs;->try:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public do(Lcom/apk/ss;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/rs;->case()V

    .line 2
    iget-object p1, p0, Lcom/apk/rs;->case:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public for(Lcom/apk/ss;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/rs;->case:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/rs;->try:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-boolean p1, p1, Lcom/apk/ss;->this:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public if(Lcom/apk/ss;ZBLcom/apk/xs;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/apk/ss;->getOffsetToRefresh()I

    move-result v0

    .line 2
    iget v1, p4, Lcom/apk/xs;->try:I

    .line 3
    iget p4, p4, Lcom/apk/xs;->case:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v0, :cond_1

    if-lt p4, v0, :cond_1

    if-eqz p2, :cond_3

    if-ne p3, v3, :cond_3

    .line 4
    iget-object p2, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-boolean p1, p1, Lcom/apk/ss;->this:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100113

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100112

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/apk/rs;->try:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 10
    iget-object p1, p0, Lcom/apk/rs;->try:Landroid/view/View;

    iget-object p2, p0, Lcom/apk/rs;->for:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_1
    if-le v1, v0, :cond_3

    if-gt p4, v0, :cond_3

    if-eqz p2, :cond_3

    if-ne p3, v3, :cond_3

    .line 11
    iget-boolean p1, p1, Lcom/apk/ss;->this:Z

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    const p2, 0x7f100116

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/apk/rs;->try:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 16
    iget-object p1, p0, Lcom/apk/rs;->try:Landroid/view/View;

    iget-object p2, p0, Lcom/apk/rs;->if:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public new(Lcom/apk/ss;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/rs;->case()V

    .line 2
    iget-object p1, p0, Lcom/apk/rs;->case:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public try(Lcom/apk/ss;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/rs;->case()V

    .line 2
    iget-object p1, p0, Lcom/apk/rs;->case:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/apk/rs;->new:Landroid/widget/TextView;

    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
