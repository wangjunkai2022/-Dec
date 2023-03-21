.class public Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/interstitial2/ADRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3;->do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3;->do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    .line 4
    new-instance v1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_0
    return-void
.end method
