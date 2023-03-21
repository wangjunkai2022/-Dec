.class public Lcom/bytedance/msdk/api/v2/GMPangleOption;
.super Ljava/lang/Object;
.source "GMPangleOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    }
.end annotation


# instance fields
.field public break:Ljava/lang/String;

.field public case:Z

.field public catch:I

.field public do:Z

.field public else:[Ljava/lang/String;

.field public for:Z

.field public goto:Ljava/lang/String;

.field public if:I

.field public new:Z

.field public this:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public try:[I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;Lcom/bytedance/msdk/api/v2/GMPangleOption$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->do:Z

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->if:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->if:I

    .line 6
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->for:Z

    .line 7
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->for:Z

    .line 8
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->new:Z

    .line 9
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->new:Z

    .line 10
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->try:[I

    .line 11
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->try:[I

    .line 12
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->case:Z

    .line 13
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->case:Z

    .line 14
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->else:[Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->else:[Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->goto:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->goto:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->this:Ljava/util/Map;

    .line 19
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->this:Ljava/util/Map;

    .line 20
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->break:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->break:Ljava/lang/String;

    .line 22
    iget p1, p1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->catch:I

    .line 23
    iput p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->catch:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->try:[I

    return-object v0
.end method

.method public getExtraData()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->this:Ljava/util/Map;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->break:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClearTaskReset()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->else:[Ljava/lang/String;

    return-object v0
.end method

.method public getPluginUpdateConfig()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->catch:I

    return v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->if:I

    return v0
.end method

.method public isAllowShowNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->for:Z

    return v0
.end method

.method public isAllowShowPageWhenScreenLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->new:Z

    return v0
.end method

.method public isIsUseTextureView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->case:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption;->do:Z

    return v0
.end method
