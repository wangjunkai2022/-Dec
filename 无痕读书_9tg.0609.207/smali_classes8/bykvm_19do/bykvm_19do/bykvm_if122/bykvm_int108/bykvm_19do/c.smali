.class public abstract Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;
.super Ljava/lang/Object;
.source "AdInitBaseADN.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    return-object p0
.end method

.method private a(Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a:Landroid/content/Context;

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/bytedance/msdk/adapter/config/IGMInitAdn;->initAdn(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->g()V

    :cond_1
    return-void
.end method

.method private b(Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a:Landroid/content/Context;

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->getClassNameByAdnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->isNewInitFunction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-direct {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;Ljava/util/Map;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b(Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;Ljava/util/Map;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "adn init getConfig() is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "adn init configuration is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "adn init adpters is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adn init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "adn init context is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;Landroid/util/Pair;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    .line 3
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b:Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->f()V

    return-void
.end method

.method public c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Z)V

    return-void
.end method
