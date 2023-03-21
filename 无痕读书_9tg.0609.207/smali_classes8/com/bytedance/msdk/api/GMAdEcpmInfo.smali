.class public Lcom/bytedance/msdk/api/GMAdEcpmInfo;
.super Ljava/lang/Object;
.source "GMAdEcpmInfo.java"


# instance fields
.field public case:Ljava/lang/String;

.field public do:I

.field public else:I

.field public for:Ljava/lang/String;

.field public goto:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public this:Ljava/lang/String;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdNetworkPlatformId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->do:I

    return v0
.end method

.method public getAdNetworkPlatformName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNetworkRitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getAdnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->if:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->for:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCustomAdNetworkPlatformName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getPreEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->case:Ljava/lang/String;

    return-object v0
.end method

.method public getReqBiddingType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->else:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->this:Ljava/lang/String;

    return-object v0
.end method

.method public setAdNetworkPlatformId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->do:I

    return-void
.end method

.method public setAdNetworkPlatformName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->if:Ljava/lang/String;

    return-void
.end method

.method public setAdNetworkRitId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->new:Ljava/lang/String;

    return-void
.end method

.method public setCustomAdNetworkPlatformName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->for:Ljava/lang/String;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->goto:Ljava/lang/String;

    return-void
.end method

.method public setLevelTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->try:Ljava/lang/String;

    return-void
.end method

.method public setPreEcpm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->case:Ljava/lang/String;

    return-void
.end method

.method public setReqBiddingType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->else:I

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->this:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{mSdkNum=\'"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->do:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSlotId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->new:Ljava/lang/String;

    const-string v3, ", mLevelTag=\'"

    invoke-static {v0, v2, v1, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->try:Ljava/lang/String;

    const-string v3, ", mEcpm="

    invoke-static {v0, v2, v1, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->case:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mReqBiddingType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->else:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
