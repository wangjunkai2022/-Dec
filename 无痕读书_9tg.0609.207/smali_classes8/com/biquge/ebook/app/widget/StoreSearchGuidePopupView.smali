.class public Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "StoreSearchGuidePopupView.java"


# instance fields
.field public case:Landroid/widget/ImageView;

.field public for:Z

.field public if:Z

.field public new:I

.field public try:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZI)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/PositionPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->if:Z

    .line 3
    iput-boolean p3, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->for:Z

    .line 4
    iput p4, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->new:I

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00df

    return v0
.end method

.method public if()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->if:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->for:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->try:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->for:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090423

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->try:Landroid/widget/ImageView;

    const v0, 0x7f090422

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    .line 4
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->for:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 7
    sget-object v1, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;-><init>(Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->if:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->try:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->try:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f09060c

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$if;-><init>(Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
