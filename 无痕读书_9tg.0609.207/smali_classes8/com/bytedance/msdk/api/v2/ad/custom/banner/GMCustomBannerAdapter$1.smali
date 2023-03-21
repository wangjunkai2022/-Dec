.class public Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter$1;
.super Ljava/lang/Object;
.source "GMCustomBannerAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->callBannerAdShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->getTTAdapterCallback()Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->goto:Z

    .line 6
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdShow()V

    :cond_0
    return-void
.end method
