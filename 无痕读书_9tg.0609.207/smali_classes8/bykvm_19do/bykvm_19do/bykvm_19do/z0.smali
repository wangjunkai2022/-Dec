.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Lbykvm_19do/bykvm_19do/bykvm_19do/e;

.field public static j:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public b:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

.field public c:Z

.field public d:Lbykvm_19do/bykvm_19do/bykvm_19do/d1;

.field public final e:Landroid/content/Context;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->e:Landroid/content/Context;

    .line 5
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Landroid/content/Context;)V

    .line 6
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/d1;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/d1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/d1;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b1;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->c:Z

    :goto_0
    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 22
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->i:Lbykvm_19do/bykvm_19do/bykvm_19do/e;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;)V

    :cond_0
    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/e;)V
    .locals 1

    .line 19
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->i:Lbykvm_19do/bykvm_19do/bykvm_19do/e;

    .line 20
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->j:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_19do/z0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->b(Z)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "Oaid#-query"

    .line 30
    invoke-static {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1;->b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    iget-object v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->a:Ljava/lang/String;

    .line 34
    iget-boolean v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 35
    instance-of v2, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;

    if-eqz v2, :cond_1

    .line 36
    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;

    iget-wide v2, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->h:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 37
    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private b(Z)V
    .locals 10

    const-string v0, "Oaid#"

    const-string v1, "Oaid#initOaid"

    .line 1
    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "Oaid#initOaid clear"

    .line 3
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/d1;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/d1;->b()V

    .line 5
    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->j:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->g:Ljava/util/Map;

    :cond_0
    const-string p1, "Oaid#initOaid exec"

    .line 7
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/d1;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/d1;->a()Lbykvm_19do/bykvm_19do/bykvm_19do/c1;

    move-result-object p1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oaid#initOaid fetch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 10
    iget-object v2, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;->a:Ljava/lang/String;

    sput-object v2, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->j:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;->a()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->g:Ljava/util/Map;

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 13
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->e:Landroid/content/Context;

    invoke-direct {p0, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->b(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v4

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 15
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 16
    iget-object v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;->b:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    .line 18
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object p1, v1

    if-gtz v2, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    .line 20
    :goto_0
    new-instance v9, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->h:Ljava/lang/Long;

    move-object v1, v9

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 22
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/d1;

    invoke-virtual {p1, v9}, Lbykvm_19do/bykvm_19do/bykvm_19do/d1;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/c1;)V

    move-object v1, v9

    :cond_5
    if-eqz v1, :cond_6

    .line 23
    iget-object p1, v1, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;->a:Ljava/lang/String;

    sput-object p1, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->j:Ljava/lang/String;

    .line 24
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/c1;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->g:Ljava/util/Map;

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oaid#initOaid oaidModel="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;

    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->j:Ljava/lang/String;

    invoke-direct {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;)V

    .line 30
    throw p1
.end method


# virtual methods
.method public a(J)Ljava/util/Map;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Z)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oaid#getOaid timeoutMills="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Oaid#"

    invoke-static {v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->g:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 10
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Oaid#getOaid locked="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v2, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 15
    :goto_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_1

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    :cond_1
    throw p1

    :cond_2
    :goto_2
    const-string p1, "Oaid#getOaid return apiMap="

    .line 17
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->g:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->g:Ljava/util/Map;

    return-object p1
.end method

.method public a(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 28
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/z0;Z)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
