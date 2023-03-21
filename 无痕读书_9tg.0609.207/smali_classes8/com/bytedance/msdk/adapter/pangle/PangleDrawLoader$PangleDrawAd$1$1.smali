.class public Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$1;->setDislikeCallback(Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onCancel()V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onSelected(ILjava/lang/String;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onShow()V

    :cond_0
    return-void
.end method
