.class public Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
.super Ljava/lang/Object;
.source "AdmobNativeAdOptions.java"


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1


# instance fields
.field public do:I

.field public for:Z

.field public if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->do:I

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->if:Z

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->for:Z

    return-void
.end method


# virtual methods
.method public getAdChoicesPlacement()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->do:I

    return v0
.end method

.method public isRequestMultipleImages()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->for:Z

    return v0
.end method

.method public isReturnUrlsForImageAssets()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->if:Z

    return v0
.end method

.method public setAdChoicesPlacement(I)Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->do:I

    return-object p0
.end method

.method public setRequestMultipleImages(Z)Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->for:Z

    return-object p0
.end method

.method public setReturnUrlsForImageAssets(Z)Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->if:Z

    return-object p0
.end method
