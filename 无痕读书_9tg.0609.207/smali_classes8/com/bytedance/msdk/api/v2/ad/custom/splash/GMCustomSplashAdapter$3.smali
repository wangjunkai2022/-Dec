.class public Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$3;
.super Ljava/lang/Object;
.source "GMCustomSplashAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callSplashAdSkip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$3;->do:Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$3;->do:Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->getTTAdapterCallback()Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdSkip()V

    :cond_0
    return-void
.end method
