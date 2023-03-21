.class public Lcom/apk/volatile;
.super Ljava/lang/Object;
.source "AdViewBangDan.java"

# interfaces
.implements Lcom/apk/x60;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "SP_AD_CLOSE_MODEL_LONG_KEY"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    if-eqz v0, :cond_2

    const/16 v1, 0x66

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 11
    iget-object v2, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    .line 12
    iget-wide v3, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->this:J

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    const v2, 0xea61

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    .line 4
    new-instance p1, Lcom/swl/gg/ggs/SwlAdAdBangDan;

    iget-object v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try:Landroid/app/Activity;

    new-instance v2, Lcom/apk/interface;

    invoke-direct {v2, v0}, Lcom/apk/interface;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;)V

    invoke-direct {p1, v1, v2}, Lcom/swl/gg/ggs/SwlAdAdBangDan;-><init>(Landroid/app/Activity;Lcom/apk/q40;)V

    iput-object p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->const:Lcom/swl/gg/ggs/SwlAdAdBangDan;

    .line 5
    invoke-virtual {p1, p2}, Lcom/swl/gg/ggs/SwlAdAdBangDan;->loadAd(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-boolean p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->goto:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 9
    iget-object p2, p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try:Landroid/app/Activity;

    .line 10
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 12
    iget-object p2, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->if(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;Landroid/view/View;)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 14
    iget-object p2, p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public new(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 2
    iget-object v2, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->if(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;Landroid/view/View;)V

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

    iget-object v1, p0, Lcom/apk/volatile;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
