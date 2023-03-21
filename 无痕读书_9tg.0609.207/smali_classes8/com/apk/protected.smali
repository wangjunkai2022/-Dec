.class public Lcom/apk/protected;
.super Ljava/lang/Object;
.source "AdViewBanner.java"

# interfaces
.implements Lcom/apk/x60;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public else()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public goto()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "SP_AD_CLOSE_MODEL_LONG_KEY"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    if-eqz v0, :cond_2

    const/16 v1, 0x66

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 11
    iget-object v2, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    .line 12
    iget-wide v3, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->goto:J

    .line 13
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public if(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    const v1, 0xea61

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance p1, Lcom/swl/gg/ggs/SwlAdAdBanner;

    iget-object v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->try:Landroid/app/Activity;

    new-instance v3, Lcom/apk/transient;

    invoke-direct {v3, v0}, Lcom/apk/transient;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;)V

    iget-object v4, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    invoke-direct {p1, v1, v3, v4}, Lcom/swl/gg/ggs/SwlAdAdBanner;-><init>(Landroid/app/Activity;Lcom/apk/q40;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->const:Lcom/swl/gg/ggs/SwlAdAdBanner;

    .line 5
    invoke-virtual {p1, p2}, Lcom/swl/gg/ggs/SwlAdAdBanner;->loadAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    throw v2

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 9
    iget-object p2, p2, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz p1, :cond_2

    return-void

    .line 10
    :cond_2
    throw v2
.end method

.method public new(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 2
    iget-object v2, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->if(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onAdClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/protected;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
