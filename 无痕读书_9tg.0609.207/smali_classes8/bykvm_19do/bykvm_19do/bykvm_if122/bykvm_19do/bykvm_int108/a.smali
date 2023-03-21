.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;
.super Ljava/lang/Object;
.source "GMAdapterConfigurationManager.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;
    .locals 2

    .line 14
    invoke-static {p1}, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->getClassNameByAdnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    if-nez v0, :cond_2

    .line 17
    :try_start_0
    const-class v1, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    invoke-static {p1, v1}, Lcom/bytedance/msdk/adapter/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 18
    :try_start_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    move-object v0, v1

    :catchall_1
    :cond_2
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a(Ljava/lang/String;)Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->getClassNamesSet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    :cond_1
    if-nez v2, :cond_0

    .line 11
    const-class v2, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    if-eqz v2, :cond_0

    .line 12
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "buyerId"

    invoke-virtual {p3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getSdkInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdkInfo"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a(Ljava/lang/String;)Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getBiddingTokenMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
