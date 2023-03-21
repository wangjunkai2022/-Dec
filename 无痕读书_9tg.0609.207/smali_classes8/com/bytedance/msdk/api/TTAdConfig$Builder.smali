.class public Lcom/bytedance/msdk/api/TTAdConfig$Builder;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/TTAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public break:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public case:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public catch:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public class:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public const:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public do:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public else:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public for:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public goto:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public if:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public import:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public native:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

.field public new:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public super:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public this:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public throw:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public try:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public while:Lcom/bytedance/msdk/api/UserInfoForSegment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->for:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->new:Z

    .line 4
    iput v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->try:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->case:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->else:Z

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->this:Z

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->class:Z

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->super:Ljava/util/Map;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->import:I

    return-void
.end method


# virtual methods
.method public allowPangleShowNotify(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->case:Z

    return-object p0
.end method

.method public allowPangleShowPageWhenScreenLock(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->else:Z

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->do:Ljava/lang/String;

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->if:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/bytedance/msdk/api/TTAdConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/TTAdConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/TTAdConfig;-><init>(Lcom/bytedance/msdk/api/TTAdConfig$Builder;Lcom/bytedance/msdk/api/TTAdConfig$1;)V

    return-object v0
.end method

.method public data(Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->final:Ljava/lang/String;

    return-object p0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->super:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public dataMap(Ljava/util/Map;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/msdk/api/TTAdConfig$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->super:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public isPanglePaid(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->new:Z

    return-object p0
.end method

.method public varargs needPangleClearTaskReset([Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->break:[Ljava/lang/String;

    return-object p0
.end method

.method public openAdnTest(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->const:Z

    return-object p0
.end method

.method public openDebugLog(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->for:Z

    return-object p0
.end method

.method public setBaiduSdkReadDeviceId(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->class:Z

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->throw:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setPangleDirectDownloadNetworkType([I)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->goto:[I

    return-object p0
.end method

.method public setPangleTitleBarTheme(I)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->try:I

    return-object p0
.end method

.method public setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->native:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    return-object p0
.end method

.method public setPublisherDid(Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->catch:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfoForSegment(Lcom/bytedance/msdk/api/UserInfoForSegment;)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->while:Lcom/bytedance/msdk/api/UserInfoForSegment;

    return-object p0
.end method

.method public usePangleTextureView(Z)Lcom/bytedance/msdk/api/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTAdConfig$Builder;->this:Z

    return-object p0
.end method
