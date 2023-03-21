.class public Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->onRewardArrived(ZILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:I

.field public final synthetic if:Landroid/os/Bundle;

.field public final synthetic new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;ZLandroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;

    iput-boolean p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->do:Z

    iput-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->if:Landroid/os/Bundle;

    iput p4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->if:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "reward_extra_key_reward_amount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getRewardAmount()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_2
    return v1
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->if:Landroid/os/Bundle;

    const-string v2, "extraInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->for:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rewardType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->if:Landroid/os/Bundle;

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "reward_extra_key_reward_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->new:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getRewardName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public rewardVerify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;->do:Z

    return v0
.end method
