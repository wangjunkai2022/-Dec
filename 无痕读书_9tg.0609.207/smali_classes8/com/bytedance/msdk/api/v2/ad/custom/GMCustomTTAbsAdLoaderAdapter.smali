.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTAbsAdLoaderAdapter;
.super Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.source "GMCustomTTAbsAdLoaderAdapter.java"


# instance fields
.field public extends:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTAbsAdLoaderAdapter;->extends:Ljava/lang/String;

    return-object v0
.end method
