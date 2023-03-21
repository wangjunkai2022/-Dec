.class public Lcom/bytedance/msdk/adapter/pangle/PangleNetworkRequestInfo;
.super Lcom/bytedance/msdk/api/TTNetworkRequestInfo;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/api/TTNetworkRequestInfo;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAdNetworkFlatFromId:I

    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAdNetworkSlotId:Ljava/lang/String;

    return-void
.end method
