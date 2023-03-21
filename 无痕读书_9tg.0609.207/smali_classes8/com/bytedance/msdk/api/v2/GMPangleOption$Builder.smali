.class public Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
.super Ljava/lang/Object;
.source "GMPangleOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/GMPangleOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field public final this:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->do:Z

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->if:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->for:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->new:Z

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->try:[I

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->case:Z

    new-array v0, v0, [Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->else:[Ljava/lang/String;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->goto:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->this:Ljava/util/Map;

    .line 11
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->break:Ljava/lang/String;

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->catch:I

    return-void

    :array_0
    .array-data 4
        0x4
        0x3
        0x5
    .end array-data
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/v2/GMPangleOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMPangleOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;-><init>(Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;Lcom/bytedance/msdk/api/v2/GMPangleOption$1;)V

    return-object v0
.end method

.method public setAllowShowNotify(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->for:Z

    return-object p0
.end method

.method public setAllowShowPageWhenScreenLock(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->new:Z

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->goto:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->this:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setData(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->this:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public varargs setDirectDownloadNetworkType([I)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->try:[I

    return-object p0
.end method

.method public setIsPaid(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->do:Z

    return-object p0
.end method

.method public setIsUseTextureView(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->case:Z

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->break:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setNeedClearTaskReset([Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->else:[Ljava/lang/String;

    return-object p0
.end method

.method public setTitleBarTheme(I)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->if:I

    return-object p0
.end method
