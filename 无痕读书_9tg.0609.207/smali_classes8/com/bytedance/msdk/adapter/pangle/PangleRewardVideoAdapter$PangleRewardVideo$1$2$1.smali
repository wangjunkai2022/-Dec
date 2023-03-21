.class public Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:I

.field public final synthetic new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;ZILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;

    iput-boolean p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->do:Z

    iput p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->if:I

    iput-object p4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->for:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->if:I

    if-ltz v0, :cond_0

    int-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->for:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public rewardVerify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;->do:Z

    return v0
.end method
