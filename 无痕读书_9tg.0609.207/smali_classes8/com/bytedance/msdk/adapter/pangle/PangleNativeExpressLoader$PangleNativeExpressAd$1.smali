.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    :cond_0
    return-void
.end method
