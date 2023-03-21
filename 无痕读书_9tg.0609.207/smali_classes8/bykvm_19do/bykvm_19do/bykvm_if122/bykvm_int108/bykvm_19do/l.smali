.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/d;
.source "AdInitSigmob.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/d;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/d;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "appId\u4e3a\u7a7a\u6216appKey\u4e3a\u7a7a"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "sigmob"

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->c:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;->d:Ljava/lang/String;

    const-string v2, "app_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
