.class public Lcom/swl/gg/ggs/SwlAdAdBanner;
.super Ljava/lang/Object;
.source "SwlAdAdBanner.java"

# interfaces
.implements Lcom/apk/o40;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mAadTagType:Ljava/lang/String;

.field public final mActivity:Landroid/app/Activity;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mNativeAdListenner:Lcom/apk/q40;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/q40;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    .line 4
    iput-object p3, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mAadTagType:Ljava/lang/String;

    .line 5
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mImageView:Landroid/widget/ImageView;

    .line 6
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdAdBanner;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdAdBanner;->setBanner(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdAdBanner;)Lcom/apk/q40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    return-object p0
.end method

.method private setBanner(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mImageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/apk/y;

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/apk/q40;->new(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_0

    const/16 v0, 0xbba

    const-string v1, "activity\u6216\u8005\u5176\u5b83\u53c2\u6570\u4e3a\u7a7a"

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/apk/q40;->if(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/apk/k40;->strictfp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_2

    const/16 v0, 0xbbc

    const-string v1, "\u6ca1\u6709\u7f51\u7edc"

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/apk/q40;->if(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance v0, Lcom/apk/l40;

    invoke-direct {v0}, Lcom/apk/l40;-><init>()V

    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdBanner$1;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdAdBanner$1;-><init>(Lcom/swl/gg/ggs/SwlAdAdBanner;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/l40;->do(Lcom/apk/m40;)Lcom/apk/l40;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    invoke-interface {v0}, Lcom/apk/q40;->onAdClick()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBanner;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/q40;->do()V

    :cond_0
    return-void
.end method
