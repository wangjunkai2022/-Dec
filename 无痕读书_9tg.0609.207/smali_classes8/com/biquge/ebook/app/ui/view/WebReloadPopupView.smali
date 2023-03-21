.class public Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "WebReloadPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public for:Landroid/widget/LinearLayout;

.field public if:Landroid/widget/LinearLayout;

.field public new:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/PositionPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;->new:Z

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c01d9

    return v0
.end method

.method public getPopupWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090272

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090148

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;->if:Landroid/widget/LinearLayout;

    const v0, 0x7f09014a

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;->for:Landroid/widget/LinearLayout;

    .line 4
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;->new:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;->if:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;->for:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f090272

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
