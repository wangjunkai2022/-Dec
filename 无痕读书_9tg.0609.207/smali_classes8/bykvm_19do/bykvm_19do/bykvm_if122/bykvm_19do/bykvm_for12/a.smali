.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;
.super Ljava/lang/Object;
.source "CacheBase.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, ", a2: "

    const-string v2, "TMe"

    if-eqz p0, :cond_15

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v4

    if-eq v3, v4, :cond_1

    const-string p2, "--==-- orientation, a1: "

    .line 32
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v4

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_14

    if-eqz v4, :cond_14

    .line 35
    invoke-virtual {v3}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v6

    if-eq v5, v6, :cond_3

    const-string p0, "--==-- isMuted, a1: "

    .line 36
    invoke-static {p0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 37
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result v4

    if-eq v3, v4, :cond_4

    const-string p2, "--==-- bannerSize, a1: "

    .line 38
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 39
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v4

    if-eq v3, v4, :cond_5

    const-string p2, "--==-- ImgWidth, a1: "

    .line 40
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 41
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    if-eq v3, v4, :cond_6

    const-string p2, "--==-- ImgHeight, a1: "

    .line 42
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    if-eqz p2, :cond_9

    .line 43
    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pangle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "--==-- pangle\u5408\u89c4\u5224\u65ad\u8fdb\u5165"

    .line 44
    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result p2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getSplashButtonType()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getSplashButtonType()I

    move-result v3

    if-eq p2, v3, :cond_7

    const-string p2, "--==-- pangle splashButtonType, a1: "

    .line 47
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getSplashButtonType()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getSplashButtonType()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 48
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v3

    if-eq p2, v3, :cond_8

    const-string p2, "--==-- pangle downloadDialogType, a1: "

    .line 49
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8
    const-string p2, "--==-- pangle\u5408\u89c4\u5224\u65adok\uff0cadslot\u517c\u5bb9"

    .line 50
    invoke-static {v2, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "--==-- rewardName, a1: "

    .line 53
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 54
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    .line 55
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result v3

    if-eq p2, v3, :cond_c

    const-string p2, "--==-- rewardAmount, a1: "

    .line 56
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 57
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "--==-- reward, userId, a1: "

    .line 59
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 60
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_12

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_12

    .line 61
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object v3

    invoke-static {p2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "--==-- customData, a1: "

    .line 63
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 64
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_11

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_11

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_11
    const-string p2, "--==-- customData=null, a1: "

    .line 65
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_12
    const-string p2, "--==-- reward, userId=null, a1: "

    .line 66
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_13
    const-string p2, "--==-- rewardName=null, a1: "

    .line 67
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 68
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "--==-- options=null, a1: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 69
    :cond_15
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--==-- adSlot = null, a1: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 71
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 72
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    goto :goto_0

    .line 75
    :cond_4
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_5
    return v0

    :cond_6
    return v1
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v0, :cond_a

    .line 4
    iget-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 6
    :goto_0
    iget-object v5, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v6}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v7, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v7}, Lcom/bytedance/msdk/base/TTBaseAd;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v7

    .line 9
    sget-object v8, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const-string v9, ":AdSlot\u4e0d\u7b26\u5408 ---: "

    const-string v10, ":\u590d\u7528\u6210\u529f\uff1a---"

    const/4 v11, 0x7

    const-string v12, ":\u5e7f\u544a\u5df2show\u8fc7 ---: "

    const-string v13, "TTMediationSDK"

    const-string v14, ", adSlotId: "

    const-string v15, "--==-- "

    if-ne v7, v8, :cond_5

    .line 10
    iget-object v7, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v7}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    invoke-static {v15, v3, v12, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 12
    :cond_2
    iget-object v7, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    move-object/from16 v8, p0

    invoke-virtual {v8, v4, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, ":\u5e7f\u544a\u8fc7\u671f\u4e86(M\u914d\u7f6e) ---: "

    .line 13
    invoke-static {v15, v3, v0, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0

    .line 14
    :cond_3
    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-static {v15, v3, v9, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    return v0

    .line 16
    :cond_4
    invoke-static {v15, v3, v10, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_5
    move-object/from16 v8, p0

    .line 17
    iget-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v4}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 18
    invoke-static {v15, v3, v12, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 19
    :cond_6
    sget-object v4, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_EXPIRED:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    if-ne v7, v4, :cond_7

    const-string v0, ":\u5e7f\u544a\u8fc7\u671f\u4e86(adn api) ---: "

    .line 20
    invoke-static {v15, v3, v0, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 21
    :cond_7
    sget-object v4, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    if-ne v7, v4, :cond_8

    const-string v0, ":isReady\u662ffalse ---: "

    .line 22
    invoke-static {v15, v3, v0, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    return v0

    .line 23
    :cond_8
    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    invoke-static {v15, v3, v9, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    return v0

    .line 25
    :cond_9
    invoke-static {v15, v3, v10, v5, v14}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_a
    :goto_1
    move-object/from16 v8, p0

    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x1b7740

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a:Ljava/util/Map;

    const-string v1, "_"

    invoke-static {p1, v1, p2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "TTMediationSDK"

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->hasDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getFillTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string p1, "--==-- \u4f7f\u7528\u4e86\u914d\u7f6e\u7684\u8fc7\u671f\u65f6\u95f4\u8fdb\u884c\u5224\u65ad ------"

    .line 29
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_1
    const-string p1, "--==-- \u5e7f\u544a\u5df2\u7ecfdestroy\u4e86\uff0c\u89c6\u4e3a\u8fc7\u671f ------"

    .line 30
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->b:Ljava/util/Map;

    const-string v1, "_"

    invoke-static {p1, v1, p2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
