.class public Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$6;
.super Ljava/lang/Object;
.source "GMCustomRewardAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;->callRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/reward/RewardItem;

.field public final synthetic if:Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$6;->if:Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$6;->do:Lcom/bytedance/msdk/api/reward/RewardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$6;->if:Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->getTTAdapterCallback()Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$6;->do:Lcom/bytedance/msdk/api/reward/RewardItem;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_0
    return-void
.end method
