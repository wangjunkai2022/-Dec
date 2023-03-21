.class public Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "BookReadDmGuidePopupView.java"


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
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00e6

    return v0
.end method

.method public getPopupWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090272

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView$do;-><init>(Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
