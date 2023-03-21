.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;
.super Ljava/lang/Object;
.source "AdEventManager.java"


# static fields
.field public static volatile a:Z

.field public static final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public static volatile c:I

.field public static volatile d:Z

.field public static volatile e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 2
    sput v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->c:I

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->d:Z

    .line 4
    sput-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 1
    sput p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->c:I

    .line 2
    sget p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->c:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->c:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 3
    sput p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->c:I

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    .line 15
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_3

    .line 16
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_3
    const-string p2, "eventIndex"

    .line 20
    :try_start_1
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "if_use_new_loglib"

    .line 21
    :try_start_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    :goto_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->l()I

    move-result p2

    if-eqz p1, :cond_4

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_id"

    invoke-virtual {p1, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    if-ne p2, v2, :cond_7

    .line 24
    :cond_5
    invoke-static {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/i;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/i;

    move-result-object v3

    .line 25
    invoke-static {v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;Z)V

    .line 26
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 27
    new-instance v4, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;

    iget-object v5, v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;-><init>(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/b;)V

    const/4 v3, 0x3

    .line 28
    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;->a(B)V

    .line 29
    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;->b(B)V

    .line 30
    invoke-static {v4}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;)V

    goto :goto_2

    .line 31
    :cond_6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;)V

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    if-ne p2, v1, :cond_a

    .line 32
    :cond_8
    invoke-static {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 33
    invoke-static {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;Z)V

    .line 34
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 35
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;-><init>(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/b;)V

    .line 36
    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;->a(B)V

    .line 37
    invoke-virtual {p2, v2}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/a;->b(B)V

    .line 38
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;)V

    goto :goto_3

    .line 39
    :cond_9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public static a()Z
    .locals 3

    .line 4
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->d:Z

    if-nez v0, :cond_2

    .line 5
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-boolean v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->d:Z

    if-nez v1, :cond_1

    .line 7
    sget v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->e:Z

    .line 8
    sput-boolean v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->d:Z

    .line 9
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_2
    :goto_1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->e:Z

    return v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a:Z

    return-void
.end method
