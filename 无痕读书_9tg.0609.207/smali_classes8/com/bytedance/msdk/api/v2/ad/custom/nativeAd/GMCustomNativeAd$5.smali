.class public Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd$5;
.super Ljava/lang/Object;
.source "GMCustomNativeAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd$5;->do:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd$5;->do:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method
