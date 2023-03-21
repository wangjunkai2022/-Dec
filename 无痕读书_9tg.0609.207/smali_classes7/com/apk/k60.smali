.class public Lcom/apk/k60;
.super Ljava/lang/Object;
.source "GdtProviderBanner.java"

# interfaces
.implements Lcom/qq/e/ads/banner2/UnifiedBannerADListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/l60;

.field public final synthetic if:Lcom/apk/x60;


# direct methods
.method public constructor <init>(Lcom/apk/l60;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    iput-object p2, p0, Lcom/apk/k60;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/k60;->if:Lcom/apk/x60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    iget-object v1, p0, Lcom/apk/k60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/k60;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->break(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onADClosed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenAdClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    invoke-virtual {v0}, Lcom/apk/l60;->j()V

    .line 3
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    iget-object v1, p0, Lcom/apk/k60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/k60;->if:Lcom/apk/x60;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->while(Ljava/lang/String;Lcom/apk/x60;)V

    :cond_0
    return-void
.end method

.method public onADExposure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    iget-object v1, p0, Lcom/apk/k60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/k60;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->switch(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    .line 2
    iget-object v1, v0, Lcom/apk/l60;->try:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 3
    iget-object v2, p0, Lcom/apk/k60;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/k60;->if:Lcom/apk/x60;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/apk/e70;->case(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    invoke-virtual {v0}, Lcom/apk/l60;->j()V

    .line 2
    iget-object v0, p0, Lcom/apk/k60;->for:Lcom/apk/l60;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/k60;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/k60;->if:Lcom/apk/x60;

    .line 3
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
