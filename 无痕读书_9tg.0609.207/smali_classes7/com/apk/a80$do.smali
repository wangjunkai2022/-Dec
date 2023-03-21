.class public Lcom/apk/a80$do;
.super Ljava/lang/Object;
.source "GmProviderInsert.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/a80;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/a80;


# direct methods
.method public constructor <init>(Lcom/apk/a80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialLoad()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    .line 2
    iget-object v0, v0, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    .line 3
    new-instance v1, Lcom/apk/a80$do$do;

    invoke-direct {v1, p0}, Lcom/apk/a80$do$do;-><init>(Lcom/apk/a80$do;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->setAdInterstitialListener(Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;)V

    .line 4
    iget-object v0, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    .line 5
    iget-object v1, v0, Lcom/apk/a80;->case:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/apk/a80;->goto:Lcom/apk/w60;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->extends(Ljava/lang/String;Lcom/apk/w60;)V

    .line 8
    iget-object v0, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    .line 9
    iget-boolean v1, v0, Lcom/apk/a80;->this:Z

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/apk/a80;->try:Landroid/app/Activity;

    .line 11
    iget-object v2, v0, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v0, v0, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->showAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onInterstitialLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    iget v1, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lcom/apk/a80;->case:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lcom/apk/a80;->goto:Lcom/apk/w60;

    .line 4
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->if(ILjava/lang/String;Ljava/lang/String;Lcom/apk/w60;)V

    .line 5
    iget-object p1, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    .line 6
    iget-object p1, p1, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->destroy()V

    .line 8
    iget-object p1, p0, Lcom/apk/a80$do;->do:Lcom/apk/a80;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    :cond_0
    return-void
.end method
