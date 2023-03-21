.class public Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "SwlAdAdInsert.java"

# interfaces
.implements Lcom/apk/o40;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swl/gg/ggs/SwlAdAdInsert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwlSdkInsertScreenAd"
.end annotation


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public mCloseView:Landroid/widget/ImageView;

.field public final mInsertListenner:Lcom/apk/p40;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

.field public final mSwlAdView:Lcom/swl/gg/bean/SwlAdView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/swl/gg/bean/SwlAdView;Lcom/apk/p40;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    .line 4
    iput-object p3, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mInsertListenner:Lcom/apk/p40;

    return-void
.end method

.method private initDate()V
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    invoke-virtual {v2}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    check-cast v0, Lcom/apk/y;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f090528

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swl/gg/widget/SwlAdImageView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    const v0, 0x7f090527

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mCloseView:Landroid/widget/ImageView;

    const v0, 0x7f090529

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mProgressBar:Landroid/widget/ProgressBar;

    .line 4
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdImageView:Lcom/swl/gg/widget/SwlAdImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0175

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090528

    if-ne v0, v1, :cond_2

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mInsertListenner:Lcom/apk/p40;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mInsertListenner:Lcom/apk/p40;

    check-cast p1, Lcom/apk/extends;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mSwlAdView:Lcom/swl/gg/bean/SwlAdView;

    invoke-static {p1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090527

    if-ne p1, v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->initView()V

    .line 3
    invoke-direct {p0}, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->initDate()V

    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mInsertListenner:Lcom/apk/p40;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/apk/extends;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mCloseView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
