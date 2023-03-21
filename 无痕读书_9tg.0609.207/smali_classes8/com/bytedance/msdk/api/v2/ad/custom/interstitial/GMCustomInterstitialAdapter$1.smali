.class public Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "GMCustomInterstitialAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;->callInterstitialShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter$1$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkShow(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    return-void
.end method
