.class public Lcom/swl/gg/ggs/SwlAdSplashView;
.super Ljava/lang/Object;
.source "SwlAdSplashView.java"

# interfaces
.implements Lcom/apk/o40;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;
    }
.end annotation


# static fields
.field public static final SPLASH_AD_TIMEOUT:J = 0xfa0L

.field public static final WHAT_REFRESH_INTERVAL:I = 0x66

.field public static final WHAT_START_TIMEOUT:I = 0x65


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

.field public mInterval:I

.field public mSkipView:Landroid/widget/TextView;

.field public final mSplashAdListener:Lcom/apk/s40;

.field public mSwlReqTask:Lcom/apk/l40;

.field public final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/s40;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mInterval:I

    .line 3
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mActivity:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdSplashView;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdSplashView;->setSplash(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdSplashView;)Lcom/apk/s40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/swl/gg/ggs/SwlAdSplashView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/swl/gg/ggs/SwlAdSplashView;->adTimeOut()V

    return-void
.end method

.method public static synthetic access$300(Lcom/swl/gg/ggs/SwlAdSplashView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/swl/gg/ggs/SwlAdSplashView;->refreshInterval()V

    return-void
.end method

.method private adTimeOut()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSwlReqTask:Lcom/apk/l40;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSwlReqTask:Lcom/apk/l40;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz v0, :cond_1

    const/16 v1, 0xbbd

    const-string v2, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff1f"

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/apk/s40;->if(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private refreshInterval()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2
    iget v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mInterval:I

    const/4 v1, 0x0

    const v2, 0x7f10030e

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSkipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, " "

    aput-object v4, v3, v1

    .line 4
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/apk/s40;->onAdDismiss()V

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSkipView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mInterval:I

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/apk/goto;->this(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 11
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_3
    iget v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mInterval:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mInterval:I

    return-void
.end method

.method private setSplash(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0177

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f090536

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090537

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSkipView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/apk/y;

    invoke-virtual {v0, v2, p1, v1, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    const/16 v0, 0x66

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/apk/s40;->onAdShow()V

    :cond_1
    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public loadAd()V
    .locals 0

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/k40;->strictfp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz p1, :cond_1

    const/16 v0, 0xbbc

    const-string v1, "\u6ca1\u6709\u7f51\u7edc"

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/apk/s40;->if(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    invoke-direct {v0, p0}, Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;-><init>(Lcom/swl/gg/ggs/SwlAdSplashView;)V

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    new-instance v0, Lcom/apk/l40;

    invoke-direct {v0}, Lcom/apk/l40;-><init>()V

    new-instance v1, Lcom/swl/gg/ggs/SwlAdSplashView$1;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdSplashView$1;-><init>(Lcom/swl/gg/ggs/SwlAdSplashView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/l40;->do(Lcom/apk/m40;)Lcom/apk/l40;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSwlReqTask:Lcom/apk/l40;

    return-void

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz p1, :cond_5

    const/16 v0, 0xbba

    const-string v1, "activity\u6216\u8005\u5176\u5b83\u53c2\u6570\u4e3a\u7a7a"

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/apk/s40;->if(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090536

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    invoke-interface {v0}, Lcom/apk/s40;->onAdClick()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090537

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mHandler:Lcom/swl/gg/ggs/SwlAdSplashView$ReferenceHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    invoke-interface {p1}, Lcom/apk/s40;->onAdDismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSwlReqTask:Lcom/apk/l40;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSwlReqTask:Lcom/apk/l40;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdSplashView;->mSplashAdListener:Lcom/apk/s40;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/s40;->do()V

    :cond_0
    return-void
.end method
