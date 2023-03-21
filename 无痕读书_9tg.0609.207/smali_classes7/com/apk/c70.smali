.class public Lcom/apk/c70;
.super Ljava/lang/Object;
.source "GdtProviderInsert.java"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Landroid/app/Activity;

.field public final synthetic if:Lcom/apk/w60;

.field public final synthetic new:Lcom/apk/d70;


# direct methods
.method public constructor <init>(Lcom/apk/d70;Ljava/lang/String;Lcom/apk/w60;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    iput-object p2, p0, Lcom/apk/c70;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/c70;->if:Lcom/apk/w60;

    iput-object p4, p0, Lcom/apk/c70;->for:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    iget-object v1, p0, Lcom/apk/c70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/c70;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->this(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onADClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    iget-object v1, p0, Lcom/apk/c70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/c70;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->throw(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onADExposure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    iget-object v1, p0, Lcom/apk/c70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/c70;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->static(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADOpened()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    iget-object v1, p0, Lcom/apk/c70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/c70;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->extends(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/c70;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/c70;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->if(ILjava/lang/String;Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onRenderFail()V
    .locals 0

    return-void
.end method

.method public onRenderSuccess()V
    .locals 0

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/c70;->new:Lcom/apk/d70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/d70;->try:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    :cond_0
    return-void
.end method
