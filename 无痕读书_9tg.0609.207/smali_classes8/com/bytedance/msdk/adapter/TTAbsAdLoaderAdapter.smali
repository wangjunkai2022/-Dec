.class public abstract Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.super Ljava/lang/Object;
.source "TTAbsAdLoaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;,
        Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;
    }
.end annotation


# instance fields
.field public break:Ljava/lang/String;

.field public case:I

.field public catch:J

.field public class:J

.field public const:I

.field public volatile default:J

.field public do:Z

.field public else:I

.field public final:I

.field public for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

.field public goto:D

.field public if:Z

.field public import:I

.field public mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

.field public mGMAdSlotBase:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

.field public mTTExtraModel:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

.field public mWaterfallAbTestParam:Ljava/lang/String;

.field public native:Ljava/lang/String;

.field public new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

.field public public:Z

.field public return:I

.field public static:I

.field public super:I

.field public switch:Z

.field public this:Ljava/lang/String;

.field public throw:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

.field public throws:I

.field public try:Ljava/lang/String;

.field public while:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    return-void
.end method

.method public static case(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    if-eqz v1, :cond_1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    :cond_1
    iget-wide v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->goto:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    .line 2
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->w()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setServerBiddingShowCpm(D)V

    .line 5
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->v()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setServerBiddingLoadCpm(D)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAid(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdExtra(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setWinCallback(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setFailCallback(Ljava/lang/String;)V

    .line 11
    :cond_3
    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdNetworkSlotType(I)V

    .line 12
    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setLoadSort(I)V

    .line 13
    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->else:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setShowSort(I)V

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setSdkVersion(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdNetWorkName(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setCustomAdNetWorkName(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->break:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setExchangeRate(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdNetworkSlotId(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setRit(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    const-string v1, "waterfall_abtest"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->putEventParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const-string v1, "gdt"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    const-string v1, "admob"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_1

    :cond_8
    const-string v1, "pangle"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const-string v1, "mintegral"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x4

    goto :goto_1

    :cond_a
    const-string v1, "unity"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x5

    goto :goto_1

    :cond_b
    const-string v1, "baidu"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x6

    goto :goto_1

    :cond_c
    const-string v1, "ks"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x7

    goto :goto_1

    :cond_d
    const-string v1, "sigmob"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x8

    goto :goto_1

    :cond_e
    const-string v1, "klevin"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto :goto_1

    :cond_f
    const/4 v0, -0x1

    .line 32
    :goto_1
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setSdkNum(I)V

    .line 33
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqTypeFromRealReq(I)V

    .line 34
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqTypeSrcFromRealReq(I)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->this:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setLinkIdFromRealReq(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqType(I)V

    .line 37
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqTypeSrc(I)V

    .line 38
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result v4

    :cond_10
    invoke-virtual {p1, v4}, Lcom/bytedance/msdk/base/TTBaseAd;->setOriginType(I)V

    .line 39
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setSubAdType(I)V

    .line 40
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->static:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdType(I)V

    .line 41
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1, v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g0;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Z)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mTTExtraModel:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    if-eqz v0, :cond_12

    .line 43
    iget v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;->b:I

    if-eq v0, v3, :cond_11

    goto :goto_2

    :cond_11
    move v2, v0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "if_test"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->putEventParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mTTExtraModel:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;->a:Ljava/lang/String;

    const-string v1, "server_bidding_extra"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->putEventParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_12
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->throw:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    iget-object p0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->throw:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->d()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "extra_data_and_no_parse"

    invoke-virtual {p1, v0, p0}, Lcom/bytedance/msdk/base/TTBaseAd;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    :goto_3
    return-void

    .line 47
    :cond_14
    throw v0
.end method

.method public static for(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 3
    :cond_0
    sget-boolean p1, Lcom/apk/os;->for:Z

    const-string v0, "TTMediationSDK"

    const-string v1, "] AdType["

    const-string v2, "AdNetWorkName["

    const-string v3, "fill"

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAllAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] AdUnitId["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v1

    iget v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/apk/eg;->for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f (loadSort="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",showSort="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->else:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAllAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v1

    iget v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object p0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Lcom/apk/eg;->for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static if(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;ILcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    const/16 v1, 0x4e20

    move v3, p1

    if-ne v3, v1, :cond_0

    const-string v1, "load success"

    goto :goto_0

    :cond_0
    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    :goto_0
    move-object v4, v1

    .line 1
    iget-boolean v10, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->public:Z

    .line 2
    iget v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 3
    iget-wide v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    sub-long/2addr v1, v5

    move-wide v12, v1

    goto :goto_1

    :cond_1
    move-wide v12, v5

    .line 5
    :goto_1
    iget-wide v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    iget v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->const:I

    move-object/from16 v2, p2

    move v3, p1

    move/from16 v9, p3

    move-object/from16 v11, p4

    invoke-static/range {v2 .. v13}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;JLcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;J)V

    .line 6
    :cond_2
    sget-boolean v1, Lcom/apk/os;->for:Z

    const-string v2, "TTMediationSDK"

    const-string v3, "] AdType["

    const-string v4, "AdNetWorkName["

    const-string v5, "fill"

    if-eqz v1, :cond_3

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAllAdNetWorkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] AdUnitId["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v4

    iget v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/apk/eg;->for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] \u8bf7\u6c42\u6210\u529f (loadSort="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",showSort="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->else:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAllAdNetWorkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 13
    invoke-virtual {v4}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v4

    iget v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/apk/eg;->for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] \u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public final do(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getAdLoadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->while:I

    return v0
.end method

.method public abstract getAdNetWorkName()Ljava/lang/String;
.end method

.method public final getAdSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    return-object v0
.end method

.method public getAdapterRit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->throw:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllAdNetWorkName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientReqId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->this:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->this:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_"

    .line 4
    invoke-static {v0, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCustomAdNetWorkName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getIfTest()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mTTExtraModel:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;->b:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReqBiddingType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    return v0
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public hasNotifyFail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if:Z

    return v0
.end method

.method public hasNotifySuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    return v0
.end method

.method public isClientBidding()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMultiBidding()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServerBidding()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final loadAdInter(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/msdk/api/AdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;",
            "I",
            "Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1
    iput-boolean v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    .line 2
    iput-boolean v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if:Z

    move-object/from16 v15, p2

    .line 3
    iput-object v15, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v4

    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->while:I

    .line 6
    invoke-virtual/range {p4 .. p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->this:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v4

    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->static:I

    .line 8
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v4

    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v4

    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case:I

    .line 10
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v4

    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->else:I

    .line 11
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->throw:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    .line 13
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->break:Ljava/lang/String;

    move-object/from16 v5, p4

    .line 14
    iput-object v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    move-object/from16 v4, p5

    .line 15
    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mTTExtraModel:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    .line 16
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v4

    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    .line 17
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->A()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    move/from16 v9, p6

    .line 18
    iput v9, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->const:I

    move-object/from16 v4, p7

    .line 19
    iput-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mGMAdSlotBase:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    const-string v4, "key_mediation_rit_req_type"

    .line 20
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 21
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    const-string v4, "key_mediation_rit_req_type_src"

    .line 22
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 23
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    iput v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    const-string v4, "key_is_from_developer_req"

    .line 24
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 25
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->switch:Z

    const-string v4, "key_requestwfb_ms"

    .line 26
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 27
    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_3
    const-wide/16 v7, -0x1

    :goto_3
    move-wide v13, v7

    const-string v4, "const_is_custom"

    .line 28
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 29
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 30
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v4

    if-nez v4, :cond_6

    .line 31
    iget v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v3, 0x3

    :cond_5
    iput v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->throws:I

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->switch:Z

    iget v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->throws:I

    iget v10, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    iget v11, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    const/4 v12, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v9, p6

    invoke-static/range {v4 .. v14}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/AdError;J)V

    .line 33
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result v3

    if-nez v3, :cond_7

    .line 34
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i()D

    move-result-wide v3

    iput-wide v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->goto:D

    goto :goto_5

    :cond_7
    const-wide/16 v3, 0x0

    .line 35
    iput-wide v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->goto:D

    .line 36
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->catch:J

    if-nez v16, :cond_8

    .line 37
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mintegral"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 39
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "baidu"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 40
    invoke-virtual/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "admob"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    .line 41
    :cond_9
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 42
    :catchall_0
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "\u5b50\u7ebf\u7a0bADN\u8bf7\u6c42\u5e7f\u544a\u5d29\u6e83"

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_7

    .line 43
    :cond_a
    :goto_6
    new-instance v3, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;-><init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {v3}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_7
    return-void
.end method

.method public final nativeDislikeClick(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result p3

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1, p3, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final new(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;Z)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if:Z

    .line 2
    iget-boolean v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->catch:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    const/4 v5, 0x0

    const-string v3, "failed"

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Z)V

    return-void
.end method

.method public final notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;Z)V

    return-void
.end method

.method public final notifyAdLoaded(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    return-void
.end method

.method public final notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 9

    .line 2
    iget-wide v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 4
    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdNetworkSlotType(I)V

    .line 5
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->break:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setExchangeRate(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setFillTime(J)V

    .line 7
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1, v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g0;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Z)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot;->getBidFloor()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    .line 11
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const v2, 0xc3b4

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;Z)V

    return-void

    .line 13
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    if-eqz v1, :cond_3

    return-void

    .line 14
    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->catch:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "adload_ad"

    move-object v3, p0

    move-object v5, p1

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Z)V

    .line 17
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->t()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdVideoCache(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;)V

    :cond_4
    return-void
.end method

.method public final notifyAdLoaded(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 19
    iget-wide v1, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->default:J

    :cond_0
    if-eqz v0, :cond_2

    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v2, :cond_1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/base/TTBaseAd;->setFillTime(J)V

    goto :goto_0

    .line 23
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_3
    invoke-static/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    iget v1, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v4, 0x3

    if-eq v1, v2, :cond_4

    if-ne v1, v4, :cond_9

    .line 27
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v5, 0x0

    const v7, 0xc3b4

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    .line 28
    iget v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    invoke-virtual {v1, v8}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdNetworkSlotType(I)V

    .line 29
    iget-object v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->break:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/bytedance/msdk/base/TTBaseAd;->setExchangeRate(Ljava/lang/String;)V

    .line 30
    iget-object v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v9, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1, v8, v9, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g0;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Z)V

    .line 31
    iget-object v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v8, :cond_5

    iget v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    if-eq v8, v2, :cond_6

    if-ne v8, v4, :cond_5

    .line 32
    :cond_6
    iget-object v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v8}, Lcom/bytedance/msdk/api/AdSlot;->getBidFloor()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-lez v12, :cond_5

    .line 33
    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-lez v12, :cond_5

    .line 34
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v19

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v20

    .line 37
    iget-object v1, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    invoke-static {}, Lcom/apk/goto;->throws()Ljava/lang/String;

    move-result-object v5

    :cond_7
    move-object/from16 v21, v5

    .line 39
    new-instance v10, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v7}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v7, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    .line 40
    iget-object v11, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v12, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget v13, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->const:I

    iget v14, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    iget v15, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v16

    iget-wide v7, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    move-wide/from16 v17, v7

    .line 42
    invoke-static/range {v10 .. v21}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 44
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v7}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v6, v5, v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;Z)V

    return-void

    .line 46
    :cond_9
    iget-boolean v0, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    if-eqz v0, :cond_a

    return-void

    .line 47
    :cond_a
    iput-boolean v2, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do:Z

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->catch:J

    sub-long/2addr v0, v4

    iput-wide v0, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "adload_ads"

    move-object/from16 v0, p0

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Z)V

    return-void
.end method

.method public final notifyAdLoadedCustom(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final notifyAdVideoCache(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;Lcom/bytedance/msdk/api/AdError;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdVideoCache(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public final notifyAdVideoCache(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;)V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v2, "ad_video_cache"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Z)V

    return-void
.end method

.method public removeFromParent(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/msdk/api/UIUtils;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method public final setAdapterListener(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    return-void
.end method

.method public setTotalTimedOut(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->public:Z

    return-void
.end method

.method public final try(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdError;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/goto;->throws()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 3
    new-instance v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;-><init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method
