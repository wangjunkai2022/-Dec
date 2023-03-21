.class public Lcom/swl/gg/ggs/ShowImagePopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "ShowImagePopupView.java"

# interfaces
.implements Lcom/apk/o40;


# instance fields
.field public final listener:Lcom/apk/bg;

.field public mCloseView:Landroid/widget/ImageView;

.field public final mIsClose:Z

.field public mLoadingView:Lcom/biquge/ebook/app/widget/AppProgressBar;

.field public mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

.field public final mSwlAdView:Lcom/swl/gg/bean/SwlAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/swl/gg/ggs/ShowImagePopupView$1;

    invoke-direct {p1, p0}, Lcom/swl/gg/ggs/ShowImagePopupView$1;-><init>(Lcom/swl/gg/ggs/ShowImagePopupView;)V

    iput-object p1, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->listener:Lcom/apk/bg;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    .line 4
    iput-boolean p3, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mIsClose:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/ShowImagePopupView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mCloseView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/ShowImagePopupView;)Lcom/swl/gg/widget/SwlAdImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/swl/gg/ggs/ShowImagePopupView;)Lcom/swl/gg/bean/SwlAdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    invoke-virtual {v2}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    check-cast v0, Lcom/apk/y;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f09042e

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swl/gg/widget/SwlAdImageView;

    iput-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    .line 2
    iget-boolean v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mIsClose:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09042c

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mCloseView:Landroid/widget/ImageView;

    .line 4
    iget-object v1, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->listener:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09042f

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppProgressBar;

    iput-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mLoadingView:Lcom/biquge/ebook/app/widget/AppProgressBar;

    .line 6
    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    iget-object v1, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->listener:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c016a

    return v0
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/swl/gg/ggs/ShowImagePopupView;->initView()V

    .line 3
    invoke-direct {p0}, Lcom/swl/gg/ggs/ShowImagePopupView;->initData()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mLoadingView:Lcom/biquge/ebook/app/widget/AppProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView;->mCloseView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
