.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->do:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->setInitedSuccess(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->do:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->fail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    return-void
.end method

.method public success()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->setInitedSuccess(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->do:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->success()V

    :cond_0
    return-void
.end method
