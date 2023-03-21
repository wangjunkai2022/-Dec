.class public Lcom/apk/e60;
.super Lcom/apk/p70;
.source "TrOpenAd.java"


# instance fields
.field public final break:Lcom/apk/v60;

.field public final case:Lcom/apk/a70;

.field public else:Lcom/apk/m60;

.field public final for:Lcom/apk/y60;

.field public final goto:Lcom/apk/z60;

.field public final if:Landroid/app/Activity;

.field public new:Landroid/view/ViewGroup;

.field public this:Lcom/apk/p50;

.field public try:Lcom/apk/n60;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/y60;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/e60$do;

    invoke-direct {v0, p0}, Lcom/apk/e60$do;-><init>(Lcom/apk/e60;)V

    iput-object v0, p0, Lcom/apk/e60;->case:Lcom/apk/a70;

    .line 3
    new-instance v0, Lcom/apk/e60$if;

    invoke-direct {v0, p0}, Lcom/apk/e60$if;-><init>(Lcom/apk/e60;)V

    iput-object v0, p0, Lcom/apk/e60;->goto:Lcom/apk/z60;

    .line 4
    new-instance v0, Lcom/apk/e60$for;

    invoke-direct {v0, p0}, Lcom/apk/e60$for;-><init>(Lcom/apk/e60;)V

    iput-object v0, p0, Lcom/apk/e60;->break:Lcom/apk/v60;

    .line 5
    iput-object p1, p0, Lcom/apk/e60;->if:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/apk/e60;->new:Landroid/view/ViewGroup;

    .line 7
    iput-object p3, p0, Lcom/apk/e60;->for:Lcom/apk/y60;

    .line 8
    iput-object p4, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/e60;->try:Lcom/apk/n60;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v2, v0, Lcom/apk/n60;->do:Lcom/apk/o70;

    if-eqz v2, :cond_0

    .line 3
    iput-object v1, v0, Lcom/apk/n60;->do:Lcom/apk/o70;

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/apk/n60;->if:Lcom/apk/l50;

    if-eqz v2, :cond_1

    .line 5
    iput-object v1, v0, Lcom/apk/n60;->if:Lcom/apk/l50;

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/apk/n60;->for:Lcom/apk/z40;

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, v2, Lcom/apk/z40;->const:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {v3}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->unregisterConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    .line 8
    iget-object v3, v2, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->destroy()V

    .line 10
    iput-object v1, v2, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    .line 11
    :cond_2
    iput-object v1, v0, Lcom/apk/n60;->for:Lcom/apk/z40;

    .line 12
    :cond_3
    iput-object v1, p0, Lcom/apk/e60;->try:Lcom/apk/n60;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/apk/e60;->this:Lcom/apk/p50;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/apk/p50;->case()V

    .line 15
    iput-object v1, p0, Lcom/apk/e60;->this:Lcom/apk/p50;

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/apk/e60;->else:Lcom/apk/m60;

    if-eqz v0, :cond_9

    .line 17
    iget-object v2, v0, Lcom/apk/m60;->do:Lcom/apk/m70;

    if-eqz v2, :cond_6

    .line 18
    iput-object v1, v0, Lcom/apk/m60;->do:Lcom/apk/m70;

    .line 19
    :cond_6
    iget-object v2, v0, Lcom/apk/m60;->if:Lcom/apk/i50;

    if-eqz v2, :cond_7

    .line 20
    iput-object v1, v0, Lcom/apk/m60;->if:Lcom/apk/i50;

    .line 21
    :cond_7
    iget-object v2, v0, Lcom/apk/m60;->for:Lcom/apk/v40;

    if-eqz v2, :cond_8

    .line 22
    iput-object v1, v0, Lcom/apk/m60;->for:Lcom/apk/v40;

    .line 23
    :cond_8
    iput-object v1, p0, Lcom/apk/e60;->else:Lcom/apk/m60;

    :cond_9
    return-void
.end method

.method public else(Landroid/view/ViewGroup;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/apk/e60;->new:Landroid/view/ViewGroup;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/e60;->try:Lcom/apk/n60;

    if-eqz v0, :cond_8

    .line 3
    iget-object v1, v0, Lcom/apk/n60;->do:Lcom/apk/o70;

    if-eqz v1, :cond_3

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/apk/o70;->break:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iput-object p1, v1, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    .line 6
    :cond_2
    iget-object p1, v1, Lcom/apk/o70;->try:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz p1, :cond_8

    iget-object v0, v1, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/splash/SplashAD;->showAd(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/apk/n60;->if:Lcom/apk/l50;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    .line 9
    iput-object p1, v1, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    .line 10
    :cond_4
    iget-object p1, v1, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    iget-object v0, v1, Lcom/apk/l50;->else:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    iget-object p1, v1, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/apk/l50;->else:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, v0, Lcom/apk/n60;->for:Lcom/apk/z40;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_6

    .line 14
    iput-object p1, v0, Lcom/apk/z40;->goto:Landroid/view/ViewGroup;

    .line 15
    :cond_6
    iget-boolean p1, v0, Lcom/apk/z40;->class:Z

    if-eqz p1, :cond_7

    iget-object p1, v0, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    if-eqz p1, :cond_7

    iget-object v1, v0, Lcom/apk/z40;->goto:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->showAd(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 17
    :cond_7
    iget-object p1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    iget-object v1, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    const/4 v2, -0x1

    const-string v3, "\u9884\u52a0\u8f7d\u5c55\u793a\u5931\u8d25"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final try(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/e60;->for:Lcom/apk/y60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/e60;->for:Lcom/apk/y60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/e60;->if:Landroid/app/Activity;

    if-eqz v0, :cond_15

    if-nez p5, :cond_2

    iget-object v0, p0, Lcom/apk/e60;->new:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/apk/e60;->for:Lcom/apk/y60;

    invoke-virtual {p0, p3, p4, v0}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/swl/gg/sdk/TrAdSdk;->isSplashAdType(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 8
    new-instance p3, Lcom/apk/n60;

    invoke-direct {p3}, Lcom/apk/n60;-><init>()V

    iput-object p3, p0, Lcom/apk/e60;->try:Lcom/apk/n60;

    .line 9
    iget-object v1, p0, Lcom/apk/e60;->if:Landroid/app/Activity;

    iget-object v4, p0, Lcom/apk/e60;->new:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/apk/e60;->case:Lcom/apk/a70;

    .line 10
    sget p4, Lcom/apk/n60$do;->for:I

    if-eqz p4, :cond_4

    sget p4, Lcom/apk/n60$do;->new:I

    if-nez p4, :cond_6

    .line 11
    :cond_4
    new-instance p4, Landroid/util/DisplayMetrics;

    invoke-direct {p4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    sget v0, Lcom/apk/n60$do;->for:I

    if-nez v0, :cond_5

    .line 14
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/apk/n60$do;->for:I

    .line 15
    :cond_5
    sget v0, Lcom/apk/n60$do;->new:I

    if-nez v0, :cond_6

    .line 16
    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p4, Lcom/apk/n60$do;->new:I

    .line 17
    :cond_6
    invoke-static {p1}, Lcom/apk/k40;->private(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 18
    invoke-virtual {p3, v5}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result p4

    if-nez p4, :cond_7

    goto/16 :goto_0

    .line 19
    :cond_7
    new-instance v0, Lcom/apk/o70;

    invoke-direct {v0}, Lcom/apk/o70;-><init>()V

    iput-object v0, p3, Lcom/apk/n60;->do:Lcom/apk/o70;

    if-eqz p5, :cond_8

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/apk/o70;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/apk/o70;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V

    goto/16 :goto_0

    :cond_9
    const-string p4, "csj"

    .line 22
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 23
    invoke-virtual {p3, v5}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result p4

    if-nez p4, :cond_a

    goto/16 :goto_0

    .line 24
    :cond_a
    new-instance v0, Lcom/apk/l50;

    invoke-direct {v0}, Lcom/apk/l50;-><init>()V

    iput-object v0, p3, Lcom/apk/n60;->if:Lcom/apk/l50;

    if-eqz p5, :cond_b

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/apk/l50;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 26
    invoke-virtual/range {v0 .. v6}, Lcom/apk/l50;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V

    goto/16 :goto_0

    :cond_c
    const-string p4, "gm"

    .line 27
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 28
    invoke-virtual {p3, v5}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_0

    .line 29
    :cond_d
    new-instance v0, Lcom/apk/z40;

    invoke-direct {v0}, Lcom/apk/z40;-><init>()V

    iput-object v0, p3, Lcom/apk/n60;->for:Lcom/apk/z40;

    if-eqz p5, :cond_e

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/apk/z40;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V

    goto :goto_0

    :cond_e
    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/apk/z40;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V

    goto :goto_0

    :cond_f
    const-string p4, "swl"

    .line 32
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 33
    invoke-virtual {p3, p2, v5}, Lcom/apk/t60;->if(Ljava/lang/String;Lcom/apk/b70;)V

    goto :goto_0

    .line 34
    :cond_10
    invoke-virtual {p3, v5}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    goto :goto_0

    .line 35
    :cond_11
    invoke-static {p1}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 36
    new-instance p3, Lcom/apk/p50;

    invoke-direct {p3}, Lcom/apk/p50;-><init>()V

    iput-object p3, p0, Lcom/apk/e60;->this:Lcom/apk/p50;

    .line 37
    iget-object p4, p0, Lcom/apk/e60;->if:Landroid/app/Activity;

    iget-object p5, p0, Lcom/apk/e60;->break:Lcom/apk/v60;

    invoke-virtual {p3, p4, p1, p2, p5}, Lcom/apk/p50;->else(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;)V

    goto :goto_0

    .line 38
    :cond_12
    invoke-static {p1}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 39
    new-instance p3, Lcom/apk/m60;

    invoke-direct {p3}, Lcom/apk/m60;-><init>()V

    iput-object p3, p0, Lcom/apk/e60;->else:Lcom/apk/m60;

    .line 40
    iget-object p4, p0, Lcom/apk/e60;->if:Landroid/app/Activity;

    iget-object p5, p0, Lcom/apk/e60;->goto:Lcom/apk/z60;

    invoke-virtual {p3, p4, p1, p2, p5}, Lcom/apk/m60;->case(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    goto :goto_0

    .line 41
    :cond_13
    iget-object p1, p0, Lcom/apk/e60;->for:Lcom/apk/y60;

    const-string p2, "\u6ca1\u6709\u627e\u5230\u5339\u914d\u7684adType"

    if-eqz p1, :cond_14

    const p3, 0x14439

    .line 42
    invoke-interface {p1, p3, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    .line 43
    :cond_14
    invoke-static {p2}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 44
    :cond_15
    :goto_1
    iget-object p1, p0, Lcom/apk/e60;->for:Lcom/apk/y60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    return-void
.end method
