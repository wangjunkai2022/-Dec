.class public Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->onReward(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Map;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->do:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getRewardAmount()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->do:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->do:Ljava/util/Map;

    const-string v1, "adnName"

    const-string v2, "gdt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->do:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getRewardName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public rewardVerify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
