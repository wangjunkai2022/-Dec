.class public Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;
.super Ljava/lang/Object;
.source "TTAbsAdLoaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallBackRunnable"
.end annotation


# instance fields
.field public case:Z

.field public do:Ljava/lang/String;

.field public final synthetic else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/bytedance/msdk/base/TTBaseAd;

.field public new:Lcom/bytedance/msdk/api/AdError;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdError;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->do:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 4
    iput-object p4, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    .line 5
    iput-object p5, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    .line 6
    iput-object p6, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->try:Ljava/lang/String;

    .line 7
    iput-boolean p7, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->case:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 2
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    if-eqz v1, :cond_24

    .line 3
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->a(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 5
    iget v3, v3, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    .line 6
    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->e(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 7
    iget v3, v3, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    .line 8
    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->b(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 9
    iget v3, v3, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case:I

    .line 10
    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 11
    iget v3, v3, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->else:I

    .line 12
    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 13
    invoke-virtual {v3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 14
    invoke-virtual {v3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getCustomAdNetWorkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 15
    iget-object v3, v3, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    .line 17
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->do:Ljava/lang/String;

    const-string v3, "adload_ads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->do:Ljava/lang/String;

    const-string v7, "adload_ad"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 18
    :cond_0
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->do:Ljava/lang/String;

    const-string v3, "failed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TTMediationSDK"

    if-eqz v2, :cond_f

    .line 19
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v6}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    goto :goto_0

    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v17, v16

    .line 22
    :goto_0
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 23
    iget v6, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->import:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 24
    iget-boolean v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->case:Z

    if-eqz v6, :cond_2

    .line 25
    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget-object v8, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 26
    iget-object v9, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 27
    iget v10, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->const:I

    .line 28
    iget v11, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    .line 29
    iget v12, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    .line 30
    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 31
    iget-wide v14, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    .line 32
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->try:Ljava/lang/String;

    move-object/from16 v18, v2

    .line 33
    invoke-static/range {v7 .. v18}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_2
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v7, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 35
    iget-object v8, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 36
    iget v9, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->const:I

    .line 37
    iget v10, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->final:I

    .line 38
    iget v11, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->super:I

    .line 39
    invoke-virtual {v6}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v24

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 40
    iget-wide v12, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-wide/from16 v25, v12

    .line 41
    invoke-static/range {v18 .. v26}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;J)V

    .line 42
    :goto_1
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    if-eqz v2, :cond_e

    .line 43
    sget-boolean v2, Lcom/apk/os;->for:Z

    const-string v6, ",msg="

    const-string v7, "] AdType["

    const-string v8, "AdNetWorkName["

    const-string v9, "fill_fail"

    if-eqz v2, :cond_3

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 45
    iget-object v10, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    .line 46
    invoke-static {v10, v9}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 47
    invoke-virtual {v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAllAdNetWorkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] AdUnitId["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 48
    iget-object v8, v8, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->native:Ljava/lang/String;

    .line 49
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v8, v7, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 50
    invoke-virtual {v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    iget-object v9, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v9, v9, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v9}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v9

    iget-object v10, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 51
    iget v11, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    .line 52
    iget-object v12, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 53
    iget-object v10, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v10}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v10

    invoke-static {v9, v11, v12, v10}, Lcom/apk/eg;->for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-virtual {v7, v8, v9}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] \u8bf7\u6c42\u5931\u8d25 (loadSort="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 56
    iget v7, v7, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case:I

    .line 57
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",showSort="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 58
    iget v7, v7, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->else:I

    .line 59
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "),error="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget v7, v7, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget-object v6, v6, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 62
    iget-object v10, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    .line 63
    invoke-static {v10, v9}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 64
    invoke-virtual {v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAllAdNetWorkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v8, v7, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    iget-object v9, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v9, v9, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 65
    invoke-virtual {v9}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v9

    iget-object v10, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 66
    iget v11, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->return:I

    .line 67
    iget-object v12, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 68
    iget-object v10, v10, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v10}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v10

    invoke-static {v9, v11, v12, v10}, Lcom/apk/eg;->for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual {v7, v8, v9}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->do(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] \u8bf7\u6c42\u5931\u8d25 error="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget v7, v7, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget-object v6, v6, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v3, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_2
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 73
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v2, :cond_e

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget v6, v6, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    const-string v7, ""

    invoke-static {v2, v6, v7}, Lcom/apk/goto;->this(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    iget-object v6, v6, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    .line 76
    iget-object v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v8, :cond_d

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "_"

    if-eqz v8, :cond_4

    goto/16 :goto_6

    .line 79
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v8, 0x0

    .line 81
    :goto_3
    array-length v10, v6

    if-ge v8, v10, :cond_8

    .line 82
    aget-char v10, v6, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_5

    const/16 v11, 0x39

    if-gt v10, v11, :cond_5

    .line 83
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_6

    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 86
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v7, v5, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 89
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 90
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 91
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 95
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 97
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " errorCodeList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 100
    iget-object v4, v4, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 101
    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 102
    iget-object v5, v5, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 103
    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 104
    iget-object v6, v6, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->new:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 105
    invoke-virtual {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    const-string v8, "gdt"

    .line 107
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 108
    invoke-static {v2, v9, v7}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_c
    :goto_7
    invoke-virtual {v3, v4, v5, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 110
    :cond_d
    throw v4

    .line 111
    :cond_e
    :goto_8
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 112
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    if-eqz v2, :cond_24

    .line 113
    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    invoke-interface {v2, v3, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;->onAdFailed(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    goto/16 :goto_11

    .line 114
    :cond_f
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->do:Ljava/lang/String;

    const-string v2, "ad_video_cache"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 115
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 116
    iget v1, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->static:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_10

    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    const/4 v2, 0x7

    if-ne v1, v2, :cond_16

    .line 117
    :cond_10
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 118
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->new:Lcom/bytedance/msdk/api/AdError;

    if-eqz v1, :cond_14

    iget v1, v1, Lcom/bytedance/msdk/api/AdError;->code:I

    const/16 v2, 0x753a

    if-ne v1, v2, :cond_14

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v1, :cond_13

    .line 119
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/y;->e(Landroid/content/Context;)Z

    move-result v1

    .line 120
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/y;->f(Landroid/content/Context;)Z

    move-result v2

    .line 121
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v3

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->G()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    const/4 v5, 0x1

    :cond_12
    if-eqz v5, :cond_14

    .line 122
    new-instance v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;-><init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->postDelayOnMSDKThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_11

    .line 123
    :cond_13
    throw v4

    .line 124
    :cond_14
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1, v6}, Lcom/bytedance/msdk/base/TTBaseAd;->setCacheSuccess(Z)V

    .line 125
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 126
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 127
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;)V

    .line 128
    :cond_15
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 129
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    if-eqz v1, :cond_24

    .line 130
    invoke-interface {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;->onAdVideoCache()V

    goto/16 :goto_11

    .line 131
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 132
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->try:Ljava/lang/String;

    const-string v4, "fill"

    .line 133
    invoke-static {v2, v4}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onAdVideoCache-----ttAd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 134
    :cond_17
    :goto_9
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->do:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x4e20

    if-eqz v2, :cond_21

    .line 135
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    if-eqz v2, :cond_18

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    .line 137
    :goto_a
    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    if-eqz v7, :cond_19

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_19

    goto :goto_b

    :cond_19
    const/16 v3, 0x4e21

    .line 138
    :goto_b
    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v8, :cond_1a

    .line 139
    iget-object v9, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-static {v9, v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V

    if-nez v4, :cond_1a

    move-object v4, v8

    goto :goto_c

    .line 140
    :cond_1b
    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_d

    .line 141
    :cond_1c
    iget-object v6, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->try:Ljava/lang/String;

    invoke-static {v6, v3, v4, v2, v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;ILcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V

    goto :goto_f

    .line 142
    :cond_1d
    :goto_d
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v4, :cond_1e

    .line 143
    iget-object v7, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v8, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->try:Ljava/lang/String;

    invoke-static {v7, v3, v4, v6, v8}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;ILcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V

    goto :goto_e

    .line 144
    :cond_1f
    :goto_f
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 145
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    if-eqz v2, :cond_20

    .line 146
    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;->onAdLoaded(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    .line 147
    :cond_20
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 148
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->for:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v3, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 149
    iget-wide v4, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    .line 150
    invoke-static {v1, v3, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;J)V

    goto :goto_11

    .line 151
    :cond_21
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v2, :cond_22

    goto :goto_10

    :cond_22
    const/16 v3, 0x4e21

    .line 152
    :goto_10
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v2, v4}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->case(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 153
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 154
    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v5, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->try:Ljava/lang/String;

    invoke-static {v4, v3, v2, v6, v5}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->if(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;ILcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V

    .line 155
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 156
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    if-eqz v2, :cond_23

    .line 157
    iget-object v3, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-interface {v2, v3, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;->onAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    .line 158
    :cond_23
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 159
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v3, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 160
    iget-wide v4, v2, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->class:J

    .line 161
    invoke-static {v1, v3, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;J)V

    :cond_24
    :goto_11
    return-void
.end method
