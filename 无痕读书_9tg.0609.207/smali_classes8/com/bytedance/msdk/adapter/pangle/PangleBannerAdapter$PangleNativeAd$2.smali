.class public Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    :cond_0
    return-void
.end method
