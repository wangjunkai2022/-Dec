.class public Lcom/apk/s60;
.super Lcom/apk/h70;
.source "GdtProviderFullVideo.java"


# instance fields
.field public break:Lcom/apk/v60;

.field public catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field public this:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/h70;-><init>()V

    return-void
.end method


# virtual methods
.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/e70;->else(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/s60;->break:Lcom/apk/v60;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->goto(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/s60;->n(Landroid/app/Activity;)Z

    return-void
.end method

.method public final n(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s60;->catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/s60;->catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->showFullScreenAD(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/apk/s60;->catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/apk/s60;->this:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/s60;->break:Lcom/apk/v60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/h70;->k(Ljava/lang/String;Lcom/apk/b70;)V

    return p1
.end method
