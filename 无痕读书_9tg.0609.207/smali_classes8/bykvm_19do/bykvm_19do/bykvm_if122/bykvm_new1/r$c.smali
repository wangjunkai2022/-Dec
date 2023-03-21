.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;
.super Ljava/lang/Object;
.source "GMNpthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "ad_style"

.field public static c:Ljava/lang/String; = "ad_id"

.field public static d:Ljava/lang/String; = "rit"

.field public static e:Ljava/lang/String; = "request_id"

.field public static f:Ljava/lang/String; = "ad_slot_type"

.field public static g:Ljava/lang/String; = "net_type"

.field public static h:Ljava/lang/String; = "low_memory"

.field public static i:Ljava/lang/String; = "total_max_memory_rate"

.field public static j:Ljava/lang/String; = "category"

.field public static k:Ljava/lang/String; = "commit_hash"

.field public static l:Ljava/lang/String; = "branch"

.field public static m:Ljava/lang/String; = "plugin_version"

.field public static volatile n:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    .line 3
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->b:Ljava/lang/String;

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->j:Ljava/lang/String;

    const-string v2, "main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->k:Ljava/lang/String;

    const-string v2, "6771fc288"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->l:Ljava/lang/String;

    const-string v2, "v3601"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->m:Ljava/lang/String;

    const-string v2, "3.6.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->n:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->n:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;-><init>()V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->n:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->n:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
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
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/r$c;->a:Ljava/util/Map;

    return-object v0
.end method
