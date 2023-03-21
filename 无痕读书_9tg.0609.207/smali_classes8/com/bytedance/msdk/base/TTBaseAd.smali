.class public abstract Lcom/bytedance/msdk/base/TTBaseAd;
.super Ljava/lang/Object;
.source "TTBaseAd.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/msdk/base/TTBaseAd;",
        ">;"
    }
.end annotation


# instance fields
.field public appInfoExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public appName:Ljava/lang/String;

.field public authorName:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public eventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public extraMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public fillTime:J

.field public isUseCustomVideo:Z

.field public levelTag:Ljava/lang/String;

.field public linkIdFromRealReq:Ljava/lang/String;

.field public mActionText:Ljava/lang/String;

.field public mAdExtra:Ljava/lang/String;

.field public mAdNetWorkName:Ljava/lang/String;

.field public mAdNetworkSlotId:Ljava/lang/String;

.field public mAdNetworkSlotType:I

.field public mAdType:I

.field public mAid:Ljava/lang/String;

.field public mAppSize:I

.field public mCacheSuccess:Z

.field public mCpm:D

.field public mCustomAdNetWorkName:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mExchangeRate:Ljava/lang/String;

.field public mFailCallback:Ljava/lang/String;

.field public mGMDrawAdListener:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

.field public volatile mHasShown:Z

.field public mIconUrl:Ljava/lang/String;

.field public mImageHeight:I

.field public mImageMode:I

.field public mImageUrl:Ljava/lang/String;

.field public mImageWidth:I

.field public mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInteractionType:I

.field public mIsAppDownload:Z

.field public mIsExpressAd:Z

.field public mLoadSort:I

.field public mPackageName:Ljava/lang/String;

.field public mRating:D

.field public mRit:Ljava/lang/String;

.field public mSdkNum:I

.field public mSdkVersion:Ljava/lang/String;

.field public mServerBiddingLoadCpm:D

.field public mServerBiddingShowCpm:D

.field public mShowSort:I

.field public mSource:Ljava/lang/String;

.field public mStore:Ljava/lang/String;

.field public mSubAdType:I

.field public mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

.field public mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

.field public mTTAdatperRewardPlayAgainCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

.field public mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

.field public mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

.field public mTitle:Ljava/lang/String;

.field public mVideoHeight:I

.field public mVideoWidth:I

.field public mWinCallback:Ljava/lang/String;

.field public mediationRitReqType:I

.field public mediationRitReqTypeFromRealReq:I

.field public mediationRitReqTypeSrc:I

.field public mediationRitReqTypeSrcFromRealReq:I

.field public originType:I

.field public packageSizeBytes:J

.field public permissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permissionsUrl:Ljava/lang/String;

.field public privacyAgreement:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImages:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqType:I

    iput v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeSrc:I

    iput v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeFromRealReq:I

    iput v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeSrcFromRealReq:I

    const-string v0, "1"

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mExchangeRate:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->extraMsg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->eventMap:Ljava/util/Map;

    return-void
.end method

.method private removeSelfAddView(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    check-cast p1, Lcom/bytedance/msdk/api/format/TTNativeAdView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "tt_gdt_developer_view_root"

    :try_start_1
    sget v3, Lcom/bytedance/ad/sdk/ad_mediation_sdk/R$id;->tt_mediation_gdt_developer_view_root_tag_key:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    sget v4, Lcom/bytedance/ad/sdk/ad_mediation_sdk/R$id;->tt_mediation_gdt_developer_view_tag_key:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, "tt_gdt_developer_view"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "tt_admob_native_view_root_tag"

    :try_start_2
    sget v3, Lcom/bytedance/ad/sdk/ad_mediation_sdk/R$id;->tt_mediation_admob_developer_view_root_tag_key:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v3, Lcom/bytedance/ad/sdk/ad_mediation_sdk/R$id;->tt_mediation_admob_developer_view_tag_key:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "tt_admob_native_view_tag"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method


# virtual methods
.method public adnHasAdVideoCachedApi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bidLoseNotify(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bidWinNotify(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public canAdReuse()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public cancelDownload()V
    .locals 0

    return-void
.end method

.method public clearLogoView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/bytedance/ad/sdk/ad_mediation_sdk/R$color;->tt_mediation_transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public compareTo(Lcom/bytedance/msdk/base/TTBaseAd;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mLoadSort:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v2

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mLoadSort:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mShowSort:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v2

    if-le v1, v2, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mShowSort:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result p1

    if-ge v0, p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->compareTo(Lcom/bytedance/msdk/base/TTBaseAd;)I

    move-result p1

    return p1
.end method

.method public dislikeClick(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mActionText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAdExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAdLogoView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetWorkName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNetworkPlatformId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSdkNum:I

    return v0
.end method

.method public getAdNetworkSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNetworkSlotType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    return v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdType:I

    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInfoExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->appInfoExtra:Ljava/util/Map;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAppSize:I

    return v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getBiddingCpmWithOutExchangeRate()D
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingShowCpm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingShowCpm()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCpm:D

    return-wide v0
.end method

.method public getCpm()D
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingShowCpm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingShowCpm()D

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCpm:D

    iget-object v2, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mExchangeRate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v0, v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_3
    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCpm:D

    return-wide v0
.end method

.method public getCreativeId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCustomAdNetWorkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCustomAdNetWorkName:Ljava/lang/String;

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getEventMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->eventMap:Ljava/util/Map;

    return-object v0
.end method

.method public getExchangeRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mExchangeRate:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->extraMsg:Ljava/util/Map;

    return-object v0
.end method

.method public getFailCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mFailCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final getFillTime()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->fillTime:J

    return-wide v0
.end method

.method public getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageHeight:I

    return v0
.end method

.method public getImageMode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageMode:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageWidth:I

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImages:Ljava/util/List;

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mInteractionType:I

    return v0
.end method

.method public getIsAppDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mIsAppDownload:Z

    return v0
.end method

.method public getLevelTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->levelTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadSort()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mLoadSort:I

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getMediationRitReqType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->linkIdFromRealReq:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeFromRealReq:I

    return p1

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqType:I

    return p1
.end method

.method public getMediationRitReqTypeSrc(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->linkIdFromRealReq:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeSrcFromRealReq:I

    return p1

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeSrc:I

    return p1
.end method

.method public getMinWindowSize()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiCpm()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingLoadCpm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "-1"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingLoadCpm()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getNetWorkPlatFormCpm()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingShowCpm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "-1"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getServerBiddingShowCpm()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getOriginType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->originType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSizeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->packageSizeBytes:J

    return-wide v0
.end method

.method public getPermissionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->permissionsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPermissionsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->permissionsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->privacyAgreement:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSdkNum()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSdkNum:I

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getServerBiddingLoadCpm()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mServerBiddingLoadCpm:D

    return-wide v0
.end method

.method public getServerBiddingShowCpm()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mServerBiddingShowCpm:D

    return-wide v0
.end method

.method public getShowSort()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mShowSort:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSplashBitMap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mRating:D

    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mStore:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAdType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSubAdType:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mVideoHeight:I

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mVideoWidth:I

    return v0
.end method

.method public getWinCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mWinCallback:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->authorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/bytedance/msdk/base/TTBaseAd;->packageSizeBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->permissionsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->permissionsMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->privacyAgreement:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasDestroyed()Z
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAdnPreload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCacheSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCacheSuccess:Z

    return v0
.end method

.method public isClientBiddingAd()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCustomAd()Z
    .locals 1

    instance-of v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    return v0
.end method

.method public isExpressAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mIsExpressAd:Z

    return v0
.end method

.method public isHasShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mHasShown:Z

    return v0
.end method

.method public isMultiBiddingAd()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormalAd()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPAd()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReady(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0

    sget-object v1, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_0
    sget-object p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public isServerBiddingAd()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseCustomVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->isUseCustomVideo:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

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

.method public pauseAppDownload()V
    .locals 0

    return-void
.end method

.method public putEventParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->eventMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putEventParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->eventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->extraMsg:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
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
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object p4, p1

    :cond_0
    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    instance-of p2, p1, Lcom/bytedance/msdk/api/format/TTNativeAdView;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->removeSelfAddView(Landroid/view/ViewGroup;)V

    sget p2, Lcom/bytedance/ad/sdk/ad_mediation_sdk/R$id;->tt_mediation_mtg_ad_choice:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p4, :cond_1

    iget p2, p4, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->logoLayoutId:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->clearLogoView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public removeSelfFromParent(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method

.method public resumeAppDownload()V
    .locals 0

    return-void
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mActionText:Ljava/lang/String;

    return-void
.end method

.method public setAdDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setAdExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdExtra:Ljava/lang/String;

    return-void
.end method

.method public setAdNetWorkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetWorkName:Ljava/lang/String;

    return-void
.end method

.method public setAdNetworkSlotId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotId:Ljava/lang/String;

    return-void
.end method

.method public setAdNetworkSlotType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdNetworkSlotType:I

    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAdType:I

    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAid:Ljava/lang/String;

    return-void
.end method

.method public setAppInfoExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->appInfoExtra:Ljava/util/Map;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppSize(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mAppSize:I

    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->authorName:Ljava/lang/String;

    return-void
.end method

.method public setCacheSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCacheSuccess:Z

    return-void
.end method

.method public setCpm(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCpm:D

    return-void
.end method

.method public setCustomAdNetWorkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mCustomAdNetWorkName:Ljava/lang/String;

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setExchangeRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mExchangeRate:Ljava/lang/String;

    return-void
.end method

.method public setExpressAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mIsExpressAd:Z

    return-void
.end method

.method public setFailCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mFailCallback:Ljava/lang/String;

    return-void
.end method

.method public final setFillTime(J)V
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->fillTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iput-wide p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->fillTime:J

    :cond_0
    return-void
.end method

.method public setGMDrawAdListener(Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mGMDrawAdListener:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    return-void
.end method

.method public setHasShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mHasShown:Z

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageHeight:I

    return-void
.end method

.method public setImageMode(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageMode:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImageWidth:I

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setInteractionType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mInteractionType:I

    return-void
.end method

.method public setIsAppDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mIsAppDownload:Z

    return-void
.end method

.method public setLevelTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->levelTag:Ljava/lang/String;

    return-void
.end method

.method public setLinkIdFromRealReq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->linkIdFromRealReq:Ljava/lang/String;

    return-void
.end method

.method public setLoadSort(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mLoadSort:I

    return-void
.end method

.method public setMediationRitReqType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqType:I

    return-void
.end method

.method public setMediationRitReqTypeFromRealReq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeFromRealReq:I

    return-void
.end method

.method public setMediationRitReqTypeSrc(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeSrc:I

    return-void
.end method

.method public setMediationRitReqTypeSrcFromRealReq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mediationRitReqTypeSrcFromRealReq:I

    return-void
.end method

.method public setOriginType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->originType:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageSizeBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->packageSizeBytes:J

    return-void
.end method

.method public setPermissionsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->permissionsMap:Ljava/util/Map;

    return-void
.end method

.method public setPermissionsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->permissionsUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyAgreement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->privacyAgreement:Ljava/lang/String;

    return-void
.end method

.method public setRating(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mRating:D

    return-void
.end method

.method public setRit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mRit:Ljava/lang/String;

    return-void
.end method

.method public setSdkNum(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSdkNum:I

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setServerBiddingLoadCpm(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mServerBiddingLoadCpm:D

    return-void
.end method

.method public setServerBiddingShowCpm(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mServerBiddingShowCpm:D

    return-void
.end method

.method public setShowSort(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mShowSort:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mStore:Ljava/lang/String;

    return-void
.end method

.method public setSubAdType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mSubAdType:I

    return-void
.end method

.method public setTTAdAppDownloadListener(Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    return-void
.end method

.method public setTTAdatperCallback(Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    return-void
.end method

.method public setTTAdatperRewardPlayAgainCallback(Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperRewardPlayAgainCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    return-void
.end method

.method public setTTNativeAdListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    return-void
.end method

.method public setTTVideoListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUseCustomVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->isUseCustomVideo:Z

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mVideoHeight:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mVideoWidth:I

    return-void
.end method

.method public setWinCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mWinCallback:Ljava/lang/String;

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public showMinWindow(Landroid/graphics/Rect;Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)V
    .locals 0

    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public splashMinWindowAnimationFinish()V
    .locals 0

    return-void
.end method

.method public unregisterView()V
    .locals 0

    return-void
.end method
