.class public final Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
.super Ljava/lang/Object;
.source "BaiduExtraOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/BaiduExtraOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public case:Z

.field public do:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public else:Z

.field public for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public goto:Ljava/lang/String;

.field public if:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public new:Lcom/bytedance/msdk/api/BaiduRequestParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public try:Lcom/bytedance/msdk/api/BaiduSplashParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/msdk/api/BaiduExtraOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/BaiduExtraOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;-><init>(Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;Lcom/bytedance/msdk/api/BaiduExtraOptions$1;)V

    return-object v0
.end method

.method public setAppSid(Ljava/lang/String;)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->goto:Ljava/lang/String;

    return-object p0
.end method

.method public setBaiduNativeSmartOptStyleParams(Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    return-object p0
.end method

.method public setBaiduRequestParameters(Lcom/bytedance/msdk/api/BaiduRequestParameters;)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->new:Lcom/bytedance/msdk/api/BaiduRequestParameters;

    return-object p0
.end method

.method public setBaiduSplashParams(Lcom/bytedance/msdk/api/BaiduSplashParams;)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->try:Lcom/bytedance/msdk/api/BaiduSplashParams;

    return-object p0
.end method

.method public setCacheVideoOnlyWifi(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->do:Z

    return-object p0
.end method

.method public setGDTExtraOption(I)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->if:I

    return-object p0
.end method

.method public setShowDialogOnSkip(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->case:Z

    return-object p0
.end method

.method public setUseRewardCountdown(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->else:Z

    return-object p0
.end method
