.class public Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
.super Ljava/lang/Object;
.source "BaiduRequestParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/BaiduRequestParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public case:I

.field public do:Ljava/lang/String;

.field public for:Z

.field public if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->if:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->for:Z

    const/16 v0, 0x280

    .line 4
    iput v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->new:I

    const/16 v0, 0x1e0

    .line 5
    iput v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->try:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->case:I

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    .locals 3

    const-string v0, "page_title"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->if:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mpt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->if:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lcom/bytedance/msdk/api/BaiduRequestParameters;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/BaiduRequestParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/BaiduRequestParameters;-><init>(Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;Lcom/bytedance/msdk/api/BaiduRequestParameters$1;)V

    return-object v0
.end method

.method public final confirmDownloading(Z)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;

    :goto_0
    return-object p0
.end method

.method public final downloadAppConfirmPolicy(I)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->case:I

    return-object p0
.end method

.method public final setHeight(I)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->try:I

    return-object p0
.end method

.method public final setKeywords(Ljava/lang/String;)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->do:Ljava/lang/String;

    return-object p0
.end method

.method public final setWidth(I)Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->new:I

    return-object p0
.end method
