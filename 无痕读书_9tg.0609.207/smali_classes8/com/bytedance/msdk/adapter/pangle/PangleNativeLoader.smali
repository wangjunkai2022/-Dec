.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;
    }
.end annotation


# instance fields
.field public do:Z

.field public for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public if:Landroid/content/Context;

.field public new:I


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
    iput-object p5, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->if:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->do:Z

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$1;

    invoke-direct {p1, p0, p5}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    invoke-interface {p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    :cond_1
    :goto_0
    return-void
.end method
