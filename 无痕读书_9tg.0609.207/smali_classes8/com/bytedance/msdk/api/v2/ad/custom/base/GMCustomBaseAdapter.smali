.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;
.super Ljava/lang/Object;
.source "GMCustomBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;
    }
.end annotation


# static fields
.field public static final CLICK_TIMES:I = 0x3c

.field public static final SHOW_TIMES:I = 0x2


# instance fields
.field public case:I

.field public do:Z

.field public else:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

.field public new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->do:Z

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->try:I

    .line 4
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->case:I

    return-void
.end method


# virtual methods
.method public final checkClick(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->case:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->case:I

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;->callback()V

    goto :goto_0

    :cond_0
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter click\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e60\u6b21"

    .line 4
    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isCallLoadSuccessCall()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;->callback()V

    goto :goto_0

    :cond_0
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u8c03\u7528\u9519\u8bef\u9700\u8981\u5728load\u6210\u529f\u4e4b\u540e\u624d\u53ef\u4ee5\u8c03\u7528"

    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkShow(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->do:Z

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->try:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->try:I

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;->callback()V

    goto :goto_0

    :cond_0
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e2\u6b21"

    .line 5
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u5fc5\u987b\u7531GroMore\u89e6\u53d1show\u65f6\u624d\u4f1a\u751f\u6548"

    .line 6
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBiddingType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getReqBiddingType()I

    move-result v0

    return v0
.end method

.method public final getCustomADNName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isCallLoadFailCall()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->hasNotifyFail()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCallLoadSuccessCall()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->hasNotifySuccess()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public final isReadyStatusInner()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public abstract loadCustom(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end method

.method public final loadInner(Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;",
            "I",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v3, p4

    const-string v1, "\u81ea\u5b9a\u4e49ADN \u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a\u5bf9\u8c61 ----------   adSlot = "

    .line 1
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK_SDK_Init"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object v3, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "const_is_custom"

    move-object v4, p5

    invoke-interface {p5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;

    move-object v8, p3

    invoke-direct {v1, p0, p4, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    iput-object v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-object/from16 v2, p8

    .line 5
    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->setAdapterListener(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;)V

    .line 6
    iget-object v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->loadAdInter(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    return-void
.end method

.method public final nativeDislikeClick(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->nativeDislikeClick(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public receiveBidResult(ZDILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
