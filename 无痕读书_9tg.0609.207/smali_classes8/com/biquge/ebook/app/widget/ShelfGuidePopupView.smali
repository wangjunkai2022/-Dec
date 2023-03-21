.class public Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "ShelfGuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public if:Landroid/widget/ImageView;


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00d0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090425

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->if:Landroid/widget/ImageView;

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 5
    sget-object v1, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->if:Landroid/widget/ImageView;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->if:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;-><init>(Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v0, 0x7f09060c

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
