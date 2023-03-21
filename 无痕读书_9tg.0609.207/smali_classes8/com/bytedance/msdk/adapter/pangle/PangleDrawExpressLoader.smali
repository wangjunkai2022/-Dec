.class public Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-eqz p3, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$1;

    invoke-direct {p1, p5, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$1;-><init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Z)V

    invoke-interface {p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    :cond_1
    :goto_0
    return-void
.end method
