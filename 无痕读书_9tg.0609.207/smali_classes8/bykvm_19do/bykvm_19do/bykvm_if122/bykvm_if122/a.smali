.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;
.super Ljava/lang/Object;
.source "TTAdNetDepend.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_for12/b;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sp_multi_ttmadnet_config"

    .line 2
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x1285

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/location/Address;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    invoke-virtual {p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;F)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 12
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lcom/apk/os;->do:I

    return v0
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    const-string v0, "dm.toutiao.com"

    const-string v1, "dm.bytedance.com"

    const-string v2, "dm.pstatp.com"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "msdk"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;->a:Landroid/content/Context;

    return-object v0
.end method
