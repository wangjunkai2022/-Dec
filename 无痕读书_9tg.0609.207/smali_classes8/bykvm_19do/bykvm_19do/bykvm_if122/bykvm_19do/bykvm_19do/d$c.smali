.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;
.super Ljava/lang/Object;
.source "TTInterBannerAdManager.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeAdInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->d(Lcom/bytedance/msdk/base/TTBaseAd;)Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/msdk/base/TTBaseAd;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getImageMode()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/msdk/api/v2/GMAdDislike;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;-><init>()V

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setAppName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setAuthorName(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getPackageSizeBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setPackageSizeBytes(J)V

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setPermissionsUrl(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getPrivacyAgreement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setPrivacyAgreement(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getPermissionsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setPermissionsMap(Ljava/util/Map;)V

    .line 10
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAppInfoExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->setAppInfoExtra(Ljava/util/Map;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getStarRating()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDislike()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->hasDislike()Z

    move-result v0

    return v0
.end method

.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d$c;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/base/TTBaseAd;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    return-void
.end method
