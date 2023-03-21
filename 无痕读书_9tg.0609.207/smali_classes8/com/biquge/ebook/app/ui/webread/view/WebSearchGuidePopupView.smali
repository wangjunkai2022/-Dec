.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;
.super Lcom/lxj/xpopup/core/PositionPopupView;
.source "WebSearchGuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebBook;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/PositionPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c01d8

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

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
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    if-eqz v0, :cond_0

    const v0, 0x7f090647

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090643

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10042d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getAuthor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090648

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f090272

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
