.class public Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field public a:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

.field public adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    return-void
.end method

.method public static a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;Lcom/qq/e/comm/listeners/NegativeFeedbackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->a:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADClose()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADClick()V

    goto :goto_0

    :pswitch_3
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "transId"

    invoke-static {v0, p1}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onReward(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADExpose()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADShow()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->a:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/qq/e/comm/listeners/NegativeFeedbackListener;->onComplainSuccess()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onVideoComplete()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onVideoCached()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADLoad()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
