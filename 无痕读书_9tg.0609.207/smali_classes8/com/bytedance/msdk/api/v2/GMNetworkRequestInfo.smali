.class public abstract Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;
.super Ljava/lang/Object;
.source "GMNetworkRequestInfo.java"


# instance fields
.field public mAdNetworkFlatFromId:I

.field public mAdNetworkSlotId:Ljava/lang/String;

.field public mAppId:Ljava/lang/String;

.field public mAppKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdNetworkFlatFromId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAdNetworkFlatFromId:I

    return v0
.end method

.method public getAdNetworkSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAdNetworkSlotId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->mAppKey:Ljava/lang/String;

    return-object v0
.end method
