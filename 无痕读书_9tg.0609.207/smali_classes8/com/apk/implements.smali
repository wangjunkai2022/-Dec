.class public Lcom/apk/implements;
.super Ljava/lang/Object;
.source "AdViewRectangle.java"

# interfaces
.implements Lcom/apk/x60;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public do()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 2
    iget-object v2, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public else()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "SP_AD_CLOSE_MODEL_LONG_KEY"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    if-eqz v0, :cond_1

    const/16 v1, 0x66

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 10
    iget-object v2, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    .line 11
    iget-wide v3, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->goto:J

    .line 12
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public if(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    const v1, 0xea61

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    .line 4
    new-instance p1, Lcom/swl/gg/ggs/SwlAdAdRectangle;

    iget-object v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->try:Landroid/app/Activity;

    new-instance v2, Lcom/apk/instanceof;

    invoke-direct {v2, v0}, Lcom/apk/instanceof;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;)V

    invoke-direct {p1, v1, v2}, Lcom/swl/gg/ggs/SwlAdAdRectangle;-><init>(Landroid/app/Activity;Lcom/apk/q40;)V

    iput-object p1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->final:Lcom/swl/gg/ggs/SwlAdAdRectangle;

    .line 5
    invoke-virtual {p1, p2}, Lcom/swl/gg/ggs/SwlAdAdRectangle;->loadAd(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 7
    iget-object p2, p2, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public new(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 2
    iget-object v2, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v1, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->if(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onAdClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/implements;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
