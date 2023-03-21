.class public Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$6;
.super Ljava/lang/Object;
.source "GMCustomDrawAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->callDrawAdClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$6;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$6;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMDrawAdListener()Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$6;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMDrawAdListener()Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;->onAdClick()V

    :cond_0
    return-void
.end method
