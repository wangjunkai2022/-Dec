.class public Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
.super Ljava/lang/Object;
.source "BaiduNativeSmartOptStyleParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mBrandBottomDp:I

.field public mBrandFontColor:I

.field public mBrandFontSizeSp:I

.field public mBrandFontTypeFace:Landroid/graphics/Typeface;

.field public mBrandLeftDp:I

.field public mBrandRightDp:I

.field public mButtonBackgroundColor:I

.field public mButtonBottomDp:I

.field public mButtonFontColor:I

.field public mButtonFontSizeSp:I

.field public mButtonFontTypeFace:Landroid/graphics/Typeface;

.field public mButtonForegroundColor:I

.field public mButtonHeightDp:I

.field public mButtonLeftDp:I

.field public mButtonRightDp:I

.field public mButtonTopDp:I

.field public mButtonWidthDp:I

.field public mFirstPicBottomDp:I

.field public mFirstPicHeightDp:I

.field public mFirstPicLeftDp:I

.field public mFirstPicRightDp:I

.field public mFirstPicTopDp:I

.field public mFirstPicWidthDp:I

.field public mIconBottomDp:I

.field public mIconHeightDp:I

.field public mIconLeftDp:I

.field public mIconRightDp:I

.field public mIconTopDp:I

.field public mIconWidthDp:I

.field public mImageBackground:Landroid/graphics/drawable/Drawable;

.field public mImageBackgroundColor:I

.field public mIsShowDownloadInfo:Z

.field public mSmartDownloadAppNameBottomDp:I

.field public mSmartDownloadAppNameLeftDp:I

.field public mSmartDownloadAppNameRightDp:I

.field public mSmartDownloadAppNameTextColor:I

.field public mSmartDownloadAppNameTextSizeSp:I

.field public mSmartDownloadAppNameTopDp:I

.field public mSmartDownloadButtonBackgroundColor:I

.field public mSmartDownloadButtonBottomDp:I

.field public mSmartDownloadButtonFontColor:I

.field public mSmartDownloadButtonFontSizeSp:I

.field public mSmartDownloadButtonFontTypeFace:Landroid/graphics/Typeface;

.field public mSmartDownloadButtonForegroundColor:I

.field public mSmartDownloadButtonHeightDp:I

.field public mSmartDownloadButtonLeftDp:I

.field public mSmartDownloadButtonRightDp:I

.field public mSmartDownloadButtonTopDp:I

.field public mSmartDownloadButtonWidthDp:I

.field public mSmartDownloadCompanyBottomDp:I

.field public mSmartDownloadCompanyLeftDp:I

.field public mSmartDownloadCompanyRightDp:I

.field public mSmartDownloadCompanyTextColor:I

.field public mSmartDownloadCompanyTextSizeSp:I

.field public mSmartDownloadCompanyTopDp:I

.field public mSmartDownloadPermissionBottomDp:I

.field public mSmartDownloadPermissionLeftDp:I

.field public mSmartDownloadPermissionRightDp:I

.field public mSmartDownloadPermissionTextColor:I

.field public mSmartDownloadPermissionTextSizeSp:I

.field public mSmartDownloadPermissionTopDp:I

.field public mSmartDownloadPrivacyBottomDp:I

.field public mSmartDownloadPrivacyLeftDp:I

.field public mSmartDownloadPrivacyRightDp:I

.field public mSmartDownloadPrivacyTextColor:I

.field public mSmartDownloadPrivacyTextSizeSp:I

.field public mSmartDownloadPrivacyTopDp:I

.field public mSmartDownloadVersionBottomDp:I

.field public mSmartDownloadVersionLeftDp:I

.field public mSmartDownloadVersionRightDp:I

.field public mSmartDownloadVersionTextColor:I

.field public mSmartDownloadVersionTextSizeSp:I

.field public mSmartDownloadVersionTopDp:I

.field public mSmartDownloadViewBackgroundColor:I

.field public mSmartDownloadViewBottomDp:I

.field public mSmartDownloadViewHeightDp:I

.field public mSmartDownloadViewLeftDp:I

.field public mSmartDownloadViewRightDp:I

.field public mSmartDownloadViewTopDp:I

.field public mSmartDownloadViewWidthDp:I

.field public mThreePicBottomDp:I

.field public mThreePicHeightDp:I

.field public mThreePicLeftDp:I

.field public mThreePicRightDp:I

.field public mThreePicTopDp:I

.field public mThreePicWidthDp:I

.field public mTitleBottomDp:I

.field public mTitleFontColor:I

.field public mTitleFontSizeSp:I

.field public mTitleFontTypeFace:Landroid/graphics/Typeface;

.field public mTitleLeftDp:I

.field public mTitleRightDp:I

.field public mTitleTopDp:I

.field public mTwoPicBottomDp:I

.field public mTwoPicHeightDp:I

.field public mTwoPicLeftDp:I

.field public mTwoPicRightDp:I

.field public mTwoPicTopDp:I

.field public mTwoPicWidthDp:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIsShowDownloadInfo:Z

    const-string v0, "#F5F5F5"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewBackgroundColor:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewWidthDp:I

    .line 5
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewHeightDp:I

    .line 6
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewLeftDp:I

    .line 7
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewRightDp:I

    .line 8
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewTopDp:I

    .line 9
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewBottomDp:I

    .line 10
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyTextSizeSp:I

    const-string v2, "#858585"

    .line 11
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyTextColor:I

    .line 12
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyTopDp:I

    .line 13
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyBottomDp:I

    .line 14
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyLeftDp:I

    .line 15
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyRightDp:I

    .line 16
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionTextSizeSp:I

    .line 17
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionTextColor:I

    .line 18
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionTopDp:I

    .line 19
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionBottomDp:I

    .line 20
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionLeftDp:I

    .line 21
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionRightDp:I

    .line 22
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionTextSizeSp:I

    .line 23
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionTextColor:I

    .line 24
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionTopDp:I

    .line 25
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionBottomDp:I

    .line 26
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionLeftDp:I

    .line 27
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionRightDp:I

    .line 28
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyTextSizeSp:I

    .line 29
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyTextColor:I

    .line 30
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyTopDp:I

    .line 31
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyBottomDp:I

    .line 32
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyLeftDp:I

    .line 33
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyRightDp:I

    .line 34
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameTextSizeSp:I

    const-string v2, "#1F1F1F"

    .line 35
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameTextColor:I

    .line 36
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameTopDp:I

    .line 37
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameBottomDp:I

    .line 38
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameLeftDp:I

    .line 39
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameRightDp:I

    const/4 v2, -0x2

    .line 40
    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonWidthDp:I

    .line 41
    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonHeightDp:I

    .line 42
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonLeftDp:I

    .line 43
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonRightDp:I

    .line 44
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonTopDp:I

    .line 45
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonBottomDp:I

    const-string v3, "#3388FF"

    .line 46
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonForegroundColor:I

    const-string v4, "#D7E6FF"

    .line 47
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonBackgroundColor:I

    .line 48
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonFontSizeSp:I

    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonFontColor:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonFontTypeFace:Landroid/graphics/Typeface;

    .line 51
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconWidthDp:I

    .line 52
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconHeightDp:I

    .line 53
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconTopDp:I

    .line 54
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconBottomDp:I

    .line 55
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconLeftDp:I

    .line 56
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconRightDp:I

    .line 57
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleLeftDp:I

    .line 58
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleRightDp:I

    .line 59
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleTopDp:I

    .line 60
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleBottomDp:I

    .line 61
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleFontSizeSp:I

    const-string v5, "#000000"

    .line 62
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleFontColor:I

    .line 63
    iput-object v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleFontTypeFace:Landroid/graphics/Typeface;

    .line 64
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicWidthDp:I

    .line 65
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicHeightDp:I

    .line 66
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicTopDp:I

    .line 67
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicBottomDp:I

    .line 68
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicLeftDp:I

    .line 69
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicRightDp:I

    .line 70
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicWidthDp:I

    .line 71
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicHeightDp:I

    .line 72
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicTopDp:I

    .line 73
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicBottomDp:I

    .line 74
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicLeftDp:I

    .line 75
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicRightDp:I

    .line 76
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicWidthDp:I

    .line 77
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicHeightDp:I

    .line 78
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicTopDp:I

    .line 79
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicBottomDp:I

    .line 80
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicLeftDp:I

    .line 81
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicRightDp:I

    const-string v5, "#F4F5F6"

    .line 82
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mImageBackgroundColor:I

    .line 83
    iput-object v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mImageBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandLeftDp:I

    .line 85
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandBottomDp:I

    .line 86
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandFontSizeSp:I

    const-string v5, "#999999"

    .line 87
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandFontColor:I

    .line 88
    iput-object v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandFontTypeFace:Landroid/graphics/Typeface;

    .line 89
    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonWidthDp:I

    .line 90
    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonHeightDp:I

    .line 91
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonLeftDp:I

    .line 92
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonRightDp:I

    .line 93
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonTopDp:I

    .line 94
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonBottomDp:I

    .line 95
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonForegroundColor:I

    .line 96
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonBackgroundColor:I

    .line 97
    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonFontSizeSp:I

    const-string v1, "#FFFFFF"

    .line 98
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonFontColor:I

    .line 99
    iput-object v0, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonFontTypeFace:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;-><init>(Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;)V

    return-object v0
.end method

.method public setBrandBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandBottomDp:I

    return-object p0
.end method

.method public setBrandFontColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandFontColor:I

    return-object p0
.end method

.method public setBrandFontSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandFontSizeSp:I

    return-object p0
.end method

.method public setBrandFontTypeFace(Landroid/graphics/Typeface;)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandFontTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setBrandLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandLeftDp:I

    return-object p0
.end method

.method public setBrandRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mBrandRightDp:I

    return-object p0
.end method

.method public setButtonBackgroundColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonBackgroundColor:I

    return-object p0
.end method

.method public setButtonBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonBottomDp:I

    return-object p0
.end method

.method public setButtonFontTypeface(Landroid/graphics/Typeface;)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonFontTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setButtonForegroundColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonForegroundColor:I

    return-object p0
.end method

.method public setButtonHeightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonHeightDp:I

    return-object p0
.end method

.method public setButtonLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonLeftDp:I

    return-object p0
.end method

.method public setButtonRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonRightDp:I

    return-object p0
.end method

.method public setButtonTextColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonFontColor:I

    return-object p0
.end method

.method public setButtonTextSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonFontSizeSp:I

    return-object p0
.end method

.method public setButtonTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonTopDp:I

    return-object p0
.end method

.method public setButtonWidthDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mButtonWidthDp:I

    return-object p0
.end method

.method public setDownloadViewBackgroundColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewBackgroundColor:I

    return-object p0
.end method

.method public setDownloadViewBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewBottomDp:I

    return-object p0
.end method

.method public setDownloadViewLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewLeftDp:I

    return-object p0
.end method

.method public setDownloadViewRightD(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewRightDp:I

    return-object p0
.end method

.method public setDownloadViewTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadViewTopDp:I

    return-object p0
.end method

.method public setFirstPicBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicBottomDp:I

    return-object p0
.end method

.method public setFirstPicHeightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicHeightDp:I

    return-object p0
.end method

.method public setFirstPicLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicLeftDp:I

    return-object p0
.end method

.method public setFirstPicRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicRightDp:I

    return-object p0
.end method

.method public setFirstPicTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicTopDp:I

    return-object p0
.end method

.method public setFirstPicWidthDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mFirstPicWidthDp:I

    return-object p0
.end method

.method public setIconBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconBottomDp:I

    return-object p0
.end method

.method public setIconHeightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconHeightDp:I

    return-object p0
.end method

.method public setIconLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconLeftDp:I

    return-object p0
.end method

.method public setIconRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconRightDp:I

    return-object p0
.end method

.method public setIconTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconTopDp:I

    return-object p0
.end method

.method public setIconWidthDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIconWidthDp:I

    return-object p0
.end method

.method public setImageBackground(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mImageBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setImageBackgroundColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mImageBackgroundColor:I

    return-object p0
.end method

.method public setShowDownloadInfo(Z)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mIsShowDownloadInfo:Z

    return-object p0
.end method

.method public setSmartDownloadAppNameBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameBottomDp:I

    return-object p0
.end method

.method public setSmartDownloadAppNameLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameLeftDp:I

    return-object p0
.end method

.method public setSmartDownloadAppNameRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameRightDp:I

    return-object p0
.end method

.method public setSmartDownloadAppNameTextColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameTextColor:I

    return-object p0
.end method

.method public setSmartDownloadAppNameTextSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameTextSizeSp:I

    return-object p0
.end method

.method public setSmartDownloadAppNameTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadAppNameTopDp:I

    return-object p0
.end method

.method public setSmartDownloadButtonBackgroundColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonBackgroundColor:I

    return-object p0
.end method

.method public setSmartDownloadButtonBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonBottomDp:I

    return-object p0
.end method

.method public setSmartDownloadButtonFontColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonFontColor:I

    return-object p0
.end method

.method public setSmartDownloadButtonFontSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonFontSizeSp:I

    return-object p0
.end method

.method public setSmartDownloadButtonFontTypeFace(Landroid/graphics/Typeface;)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonFontTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setSmartDownloadButtonForegroundColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonForegroundColor:I

    return-object p0
.end method

.method public setSmartDownloadButtonHeightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonHeightDp:I

    return-object p0
.end method

.method public setSmartDownloadButtonLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonLeftDp:I

    return-object p0
.end method

.method public setSmartDownloadButtonRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonRightDp:I

    return-object p0
.end method

.method public setSmartDownloadButtonTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonTopDp:I

    return-object p0
.end method

.method public setSmartDownloadButtonWidthDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadButtonWidthDp:I

    return-object p0
.end method

.method public setSmartDownloadCompanyBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyBottomDp:I

    return-object p0
.end method

.method public setSmartDownloadCompanyLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyLeftDp:I

    return-object p0
.end method

.method public setSmartDownloadCompanyRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyRightDp:I

    return-object p0
.end method

.method public setSmartDownloadCompanyTextColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyTextColor:I

    return-object p0
.end method

.method public setSmartDownloadCompanyTextSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyTextSizeSp:I

    return-object p0
.end method

.method public setSmartDownloadCompanyTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadCompanyTopDp:I

    return-object p0
.end method

.method public setSmartDownloadPermissionBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionBottomDp:I

    return-object p0
.end method

.method public setSmartDownloadPermissionLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionLeftDp:I

    return-object p0
.end method

.method public setSmartDownloadPermissionRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionRightDp:I

    return-object p0
.end method

.method public setSmartDownloadPermissionTextColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionTextColor:I

    return-object p0
.end method

.method public setSmartDownloadPermissionTextSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionTextSizeSp:I

    return-object p0
.end method

.method public setSmartDownloadPermissionTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPermissionTopDp:I

    return-object p0
.end method

.method public setSmartDownloadPrivacyBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyBottomDp:I

    return-object p0
.end method

.method public setSmartDownloadPrivacyLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyLeftDp:I

    return-object p0
.end method

.method public setSmartDownloadPrivacyRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyRightDp:I

    return-object p0
.end method

.method public setSmartDownloadPrivacyTextColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyTextColor:I

    return-object p0
.end method

.method public setSmartDownloadPrivacyTextSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyTextSizeSp:I

    return-object p0
.end method

.method public setSmartDownloadPrivacyTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadPrivacyTopDp:I

    return-object p0
.end method

.method public setSmartDownloadVersionBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionBottomDp:I

    return-object p0
.end method

.method public setSmartDownloadVersionLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionLeftDp:I

    return-object p0
.end method

.method public setSmartDownloadVersionRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionRightDp:I

    return-object p0
.end method

.method public setSmartDownloadVersionTextColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionTextColor:I

    return-object p0
.end method

.method public setSmartDownloadVersionTextSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionTextSizeSp:I

    return-object p0
.end method

.method public setSmartDownloadVersionTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mSmartDownloadVersionTopDp:I

    return-object p0
.end method

.method public setThreePicBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicBottomDp:I

    return-object p0
.end method

.method public setThreePicHeightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicHeightDp:I

    return-object p0
.end method

.method public setThreePicLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicLeftDp:I

    return-object p0
.end method

.method public setThreePicRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicRightDp:I

    return-object p0
.end method

.method public setThreePicTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicTopDp:I

    return-object p0
.end method

.method public setThreePicWidthDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mThreePicWidthDp:I

    return-object p0
.end method

.method public setTitleBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleBottomDp:I

    return-object p0
.end method

.method public setTitleFontColor(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleFontColor:I

    return-object p0
.end method

.method public setTitleFontSizeSp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleFontSizeSp:I

    return-object p0
.end method

.method public setTitleFontTypeFace(Landroid/graphics/Typeface;)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleFontTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setTitleLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleLeftDp:I

    return-object p0
.end method

.method public setTitleRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleRightDp:I

    return-object p0
.end method

.method public setTitleTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTitleTopDp:I

    return-object p0
.end method

.method public setTwoPicBottomDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicBottomDp:I

    return-object p0
.end method

.method public setTwoPicHeightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicHeightDp:I

    return-object p0
.end method

.method public setTwoPicLeftDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicLeftDp:I

    return-object p0
.end method

.method public setTwoPicRightDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicRightDp:I

    return-object p0
.end method

.method public setTwoPicTopDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicTopDp:I

    return-object p0
.end method

.method public setTwoPicWidthDp(I)Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams$Builder;->mTwoPicWidthDp:I

    return-object p0
.end method
