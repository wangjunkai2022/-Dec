.class public Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "VideoFreeAdDialog.java"


# instance fields
.field public do:Landroid/widget/TextView;

.field public for:Landroid/widget/TextView;

.field public if:Landroid/widget/TextView;

.field public final new:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog$do;-><init>(Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->new:Lcom/apk/bg;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00a0

    return v0
.end method

.method public if()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->do:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/apk/finally;->if()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getOver_tips()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getNext_noad_days()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{next_noad_days}"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->if:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->for:Landroid/widget/TextView;

    const v1, 0x7f100190

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/apk/finally;->break()I

    move-result v1

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getFir_spgg()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getFir_tips()Ljava/lang/String;

    move-result-object v0

    const-string v3, "{fir_spgg}"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/finally;->catch()I

    move-result v3

    invoke-static {}, Lcom/apk/finally;->break()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getAfter_fir_tips()Ljava/lang/String;

    move-result-object v0

    const-string v3, "{result}"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090251

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->do:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0904ea

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->if:Landroid/widget/TextView;

    const v1, 0x7f1002fe

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904eb

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->for:Landroid/widget/TextView;

    const v1, 0x7f1003d0

    .line 8
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->for:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->for:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904dc

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->if()V

    return-void
.end method
