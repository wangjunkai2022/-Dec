.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try(ILjava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new()V

    return-void
.end method
