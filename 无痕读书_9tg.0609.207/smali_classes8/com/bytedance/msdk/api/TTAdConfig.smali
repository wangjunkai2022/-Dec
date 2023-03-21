.class public final Lcom/bytedance/msdk/api/TTAdConfig;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public break:Z

.field public case:Z

.field public catch:[I

.field public class:Z

.field public const:Ljava/lang/String;

.field public do:Ljava/lang/String;

.field public else:I

.field public final:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public for:Z

.field public goto:[Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public import:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public native:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public new:Z

.field public public:Lcom/bytedance/msdk/api/UserInfoForSegment;

.field public return:I

.field public static:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

.field public super:Z

.field public this:Z

.field public throw:Ljava/lang/String;

.field public try:Ljava/lang/String;

.field public while:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/TTAdConfig$Builder;Lcom/bytedance/msdk/api/TTAdConfig$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->for:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->new:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->try:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->else:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/bytedance/msdk/api/TTAdConfig;->this:Z

    .line 7
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->break:Z

    .line 8
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->class:Z

    .line 9
    iput-boolean v1, p0, Lcom/bytedance/msdk/api/TTAdConfig;->super:Z

    const/4 p2, 0x2

    .line 10
    iput p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->return:I

    .line 11
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->do:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->do:Ljava/lang/String;

    .line 13
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->if:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->if:Ljava/lang/String;

    .line 15
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->for:Z

    .line 16
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->for:Z

    .line 17
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->new:Z

    .line 18
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->new:Z

    .line 19
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->catch:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->try:Ljava/lang/String;

    .line 21
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->const:Z

    .line 22
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->case:Z

    .line 23
    iget p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->try:I

    .line 24
    iput p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->else:I

    .line 25
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->break:[Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->goto:[Ljava/lang/String;

    .line 27
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->case:Z

    .line 28
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->this:Z

    .line 29
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->else:Z

    .line 30
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->break:Z

    .line 31
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->goto:[I

    .line 32
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->catch:[I

    .line 33
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->this:Z

    .line 34
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->class:Z

    .line 35
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->final:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->const:Ljava/lang/String;

    .line 37
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->super:Ljava/util/Map;

    .line 38
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->final:Ljava/util/Map;

    .line 39
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->throw:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->throw:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->while:Ljava/util/Set;

    .line 42
    iput-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->import:Ljava/util/Map;

    .line 43
    iput-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->native:Ljava/util/Map;

    .line 44
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->class:Z

    .line 45
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->super:Z

    .line 46
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->while:Lcom/bytedance/msdk/api/UserInfoForSegment;

    .line 47
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->public:Lcom/bytedance/msdk/api/UserInfoForSegment;

    .line 48
    iget p2, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->import:I

    .line 49
    iput p2, p0, Lcom/bytedance/msdk/api/TTAdConfig;->return:I

    .line 50
    iget-object p1, p1, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->native:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 51
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig;->static:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    return-void
.end method


# virtual methods
.method public allowBaiduSdkReadDeviceId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->super:Z

    return v0
.end method

.method public getAdapterConfigurationClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->while:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->final:Ljava/util/Map;

    return-object v0
.end method

.method public getMediatedNetworkConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->import:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPangleData()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->const:Ljava/lang/String;

    return-object v0
.end method

.method public getPangleDirectDownloadNetworkType()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->catch:[I

    return-object v0
.end method

.method public getPangleKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->throw:Ljava/lang/String;

    return-object v0
.end method

.method public getPangleNeedClearTaskReset()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->goto:[Ljava/lang/String;

    return-object v0
.end method

.method public getPanglePluginUpdateConfig()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->return:I

    return v0
.end method

.method public getPangleTitleBarTheme()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->else:I

    return v0
.end method

.method public getPrivacyConfig()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->static:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    return-object v0
.end method

.method public getPublisherDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->native:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUserInfoForSegment()Lcom/bytedance/msdk/api/UserInfoForSegment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->public:Lcom/bytedance/msdk/api/UserInfoForSegment;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->for:Z

    return v0
.end method

.method public isOpenAdnTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->case:Z

    return v0
.end method

.method public isPangleAllowShowNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->this:Z

    return v0
.end method

.method public isPangleAllowShowPageWhenScreenLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->break:Z

    return v0
.end method

.method public isPanglePaid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->new:Z

    return v0
.end method

.method public isPangleUseTextureView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig;->class:Z

    return v0
.end method
