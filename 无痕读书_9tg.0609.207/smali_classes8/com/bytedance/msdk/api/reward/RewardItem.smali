.class public interface abstract Lcom/bytedance/msdk/api/reward/RewardItem;
.super Ljava/lang/Object;
.source "RewardItem.java"


# static fields
.field public static final KEY_ADMOB:Ljava/lang/String; = "admob"

.field public static final KEY_ADN_NAME:Ljava/lang/String; = "adnName"

.field public static final KEY_BAIDU:Ljava/lang/String; = "baidu"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final KEY_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final KEY_GDT:Ljava/lang/String; = "gdt"

.field public static final KEY_GDT_TRANS_ID:Ljava/lang/String; = "transId"

.field public static final KEY_GROMORE_EXTRA:Ljava/lang/String; = "gromoreExtra"

.field public static final KEY_IS_GROMORE_SERVER_SIDE_VERIFY:Ljava/lang/String; = "isGroMoreServerSideVerify"

.field public static final KEY_KLEVIN:Ljava/lang/String; = "klevin"

.field public static final KEY_KS:Ljava/lang/String; = "ks"

.field public static final KEY_MINTEGRAL:Ljava/lang/String; = "mintegral"

.field public static final KEY_PANGLE:Ljava/lang/String; = "pangle"

.field public static final KEY_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_REWARD_TYPE:Ljava/lang/String; = "rewardType"

.field public static final KEY_SIGMOB:Ljava/lang/String; = "sigmob"

.field public static final KEY_TRANS_ID:Ljava/lang/String; = "transId"

.field public static final KEY_UNITY:Ljava/lang/String; = "unity"


# virtual methods
.method public abstract getAmount()F
.end method

.method public abstract getCustomData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRewardName()Ljava/lang/String;
.end method

.method public abstract rewardVerify()Z
.end method
