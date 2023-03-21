.class public Lcom/bytedance/msdk/api/BaiduRequestParameters;
.super Ljava/lang/Object;
.source "BaiduRequestParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;
    }
.end annotation


# static fields
.field public static final ADS_TYPE_DOWNLOAD:I = 0x2

.field public static final ADS_TYPE_OPENPAGE:I = 0x1

.field public static final DOWNLOAD_APP_CONFIRM_ALWAYS:I = 0x2

.field public static final DOWNLOAD_APP_CONFIRM_CUSTOM_BY_APP:I = 0x4

.field public static final DOWNLOAD_APP_CONFIRM_NEVER:I = 0x3

.field public static final DOWNLOAD_APP_CONFIRM_ONLY_MOBILE:I = 0x1

.field public static final MAX_ASSETS_RESERVED:I = 0xf


# instance fields
.field public case:I

.field public final do:Ljava/lang/String;

.field public for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public if:Z

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;Lcom/bytedance/msdk/api/BaiduRequestParameters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->new:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->try:I

    .line 4
    iget-object p2, p1, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->do:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->do:Ljava/lang/String;

    .line 6
    iget p2, p1, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->new:I

    .line 7
    iput p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->new:I

    .line 8
    iget p2, p1, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->try:I

    .line 9
    iput p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->try:I

    .line 10
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->for:Z

    .line 11
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->if:Z

    .line 12
    iget p2, p1, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->case:I

    .line 13
    iput p2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->case:I

    .line 14
    iget-object p1, p1, Lcom/bytedance/msdk/api/BaiduRequestParameters$Builder;->if:Ljava/util/Map;

    .line 15
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/BaiduRequestParameters;->setExtras(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAPPConfirmPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->case:I

    return v0
.end method

.method public getExtras()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->for:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->try:I

    return v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->new:I

    return v0
.end method

.method public isConfirmDownloading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->if:Z

    return v0
.end method

.method public setExtras(Ljava/util/Map;)V
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

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->for:Ljava/util/Map;

    return-void
.end method

.method public toHashMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->do:Ljava/lang/String;

    const-string v2, "mKeywords"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->if:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "confirmDownloading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/bytedance/msdk/api/BaiduRequestParameters;->for:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "extras"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
