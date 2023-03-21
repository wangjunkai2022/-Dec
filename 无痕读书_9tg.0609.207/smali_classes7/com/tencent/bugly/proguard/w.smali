.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public final c:Landroid/content/Context;

.field public final d:I

.field public final e:[B

.field public final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field public final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field public final h:Lcom/tencent/bugly/proguard/s;

.field public final i:Lcom/tencent/bugly/proguard/v;

.field public final j:I

.field public final k:Lcom/tencent/bugly/proguard/u;

.field public final l:Lcom/tencent/bugly/proguard/u;

.field public m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:J

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;IIZLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/u;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/tencent/bugly/proguard/w;->a:I

    const/16 v0, 0x7530

    .line 4
    iput v0, p0, Lcom/tencent/bugly/proguard/w;->b:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tencent/bugly/proguard/w;->p:I

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/w;->q:J

    .line 8
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/w;->r:J

    .line 9
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    .line 10
    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->c:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 12
    iput-object p4, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    .line 13
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 14
    invoke-static {p1}, Lcom/tencent/bugly/proguard/s;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    .line 15
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->a()Lcom/tencent/bugly/proguard/v;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    .line 16
    iput p2, p0, Lcom/tencent/bugly/proguard/w;->j:I

    .line 17
    iput-object p5, p0, Lcom/tencent/bugly/proguard/w;->m:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/tencent/bugly/proguard/w;->n:Ljava/lang/String;

    .line 19
    iput-object p7, p0, Lcom/tencent/bugly/proguard/w;->k:Lcom/tencent/bugly/proguard/u;

    .line 20
    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->l:Lcom/tencent/bugly/proguard/u;

    .line 21
    iput p3, p0, Lcom/tencent/bugly/proguard/w;->d:I

    if-lez p8, :cond_0

    .line 22
    iput p8, p0, Lcom/tencent/bugly/proguard/w;->a:I

    :cond_0
    if-lez p9, :cond_1

    .line 23
    iput p9, p0, Lcom/tencent/bugly/proguard/w;->b:I

    .line 24
    :cond_1
    iput-boolean p10, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    .line 25
    iput-object p11, p0, Lcom/tencent/bugly/proguard/w;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;ZZ)V
    .locals 12

    const/4 v8, 0x2

    const/16 v9, 0x7530

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p9

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;IIZLjava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "status"

    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "[Upload] Headers does not contain %s"

    if-nez v4, :cond_1

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "Bugly-Version"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "bugly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "[Upload] Bugly version is not valid: %s"

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "[Upload] Bugly version from headers is: %s"

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    :goto_0
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "[Upload] Headers is empty."

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    const/4 v4, 0x0

    :goto_2
    const-string v5, "[Upload] Failed to upload(%d): %s"

    const/4 v6, 0x2

    if-nez v4, :cond_6

    new-array v0, v6, [Ljava/lang/Object;

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    .line 46
    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v2, "[Upload] Failed to upload for no status header."

    aput-object v2, v0, v1

    .line 47
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_5

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-array v4, v6, [Ljava/lang/Object;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "[key]: %s, [value]: %s"

    .line 51
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-array p1, v3, [Ljava/lang/Object;

    .line 52
    invoke-static {v2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    const/4 v4, -0x1

    .line 54
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string p1, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    .line 57
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 58
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    const/4 p1, 0x0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "status of server is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    .line 60
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 61
    :cond_7
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 62
    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    .line 64
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 65
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a([BLjava/util/Map;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Failed to upload for no response!"

    aput-object p2, p1, v2

    const-string p2, "[Upload] Failed to upload(%d): %s"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 34
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "[Upload] Received %d bytes"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 36
    array-length p1, p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const-string v3, "response data from server is empty"

    .line 37
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-array v3, v0, [Ljava/lang/Object;

    .line 39
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "[Upload] HTTP headers from server: key = %s, value = %s"

    .line 40
    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 42
    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 68
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method private a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/tencent/bugly/proguard/w;->d:I

    const/16 v0, 0x276

    if-eq p1, v0, :cond_1

    const/16 v0, 0x280

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x348

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "userinfo"

    goto :goto_0

    :cond_1
    const-string p1, "crash"

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "[Upload] Success: %s"

    .line 3
    invoke-static {p1, p3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5
    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->q:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->r:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    iget-boolean p3, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    .line 7
    invoke-virtual {p1, p3}, Lcom/tencent/bugly/proguard/v;->a(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->q:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->r:J

    add-long/2addr v0, v2

    .line 8
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    iget-boolean p3, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    invoke-virtual {p1, v0, v1, p3}, Lcom/tencent/bugly/proguard/v;->a(JZ)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->k:Lcom/tencent/bugly/proguard/u;

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1, p2, p4}, Lcom/tencent/bugly/proguard/u;->a(ZLjava/lang/String;)V

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->l:Lcom/tencent/bugly/proguard/u;

    if-eqz p1, :cond_5

    .line 12
    invoke-interface {p1, p2, p4}, Lcom/tencent/bugly/proguard/u;->a(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/ao;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "resp == null!"

    .line 13
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 14
    :cond_0
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/ao;->a:B

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "resp result error %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 16
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v3

    sget v4, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v5, "device"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 19
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 20
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;Z)Z

    .line 21
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 23
    :cond_2
    :goto_0
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/ao;->d:J

    iput-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->h:J

    .line 24
    iget p1, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    const/16 v1, 0x1fe

    if-ne p1, v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->c:[B

    if-nez v1, :cond_3

    new-array p0, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 27
    :cond_3
    const-class p1, Lcom/tencent/bugly/proguard/aq;

    .line 28
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/aq;

    if-nez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    .line 29
    iget p0, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    .line 31
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 32
    :cond_4
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/aq;)V

    :cond_5
    return v2
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 66
    iget v0, p0, Lcom/tencent/bugly/proguard/w;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/w;->p:I

    .line 67
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->q:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->r:J

    return-void
.end method

.method public final run()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/tencent/bugly/proguard/w;->p:I

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/w;->q:J

    .line 3
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/w;->r:J

    .line 4
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "network is not available"

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->c:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "illegal local strategy"

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    :goto_0
    const-string v1, "illegal access error"

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, "request package is empty!"

    :goto_2
    if-eqz v1, :cond_6

    .line 5
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    return-void

    .line 6
    :cond_6
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/ab;->a([BI)[B

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "failed to zip request body"

    .line 7
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    return-void

    .line 8
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "tls"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "prodId"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v6}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bundleId"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v6, v6, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appVer"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v6, v6, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->o:Ljava/util/Map;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->o:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_8
    const-string v5, "cmd"

    iget v6, p0, Lcom/tencent/bugly/proguard/w;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "platformId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sdkVer"

    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v7, v7, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "strategylastUpdateTime"

    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v7

    iget-wide v7, v7, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    iget v7, p0, Lcom/tencent/bugly/proguard/w;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lcom/tencent/bugly/proguard/v;->a(IJ)V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->k:Lcom/tencent/bugly/proguard/u;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->l:Lcom/tencent/bugly/proguard/u;

    .line 10
    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->m:Ljava/lang/String;

    .line 11
    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v9, v7, 0x1

    .line 12
    iget v10, p0, Lcom/tencent/bugly/proguard/w;->a:I

    if-ge v7, v10, :cond_12

    if-le v9, v6, :cond_9

    const-string v7, "[Upload] Failed to upload last time, wait and try(%d) again."

    new-array v8, v6, [Ljava/lang/Object;

    .line 13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 14
    iget v7, p0, Lcom/tencent/bugly/proguard/w;->b:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/ab;->b(J)V

    .line 15
    iget v7, p0, Lcom/tencent/bugly/proguard/w;->a:I

    if-ne v9, v7, :cond_9

    const-string v5, "[Upload] Use the back-up url at the last time: %s"

    new-array v7, v6, [Ljava/lang/Object;

    .line 16
    iget-object v8, p0, Lcom/tencent/bugly/proguard/w;->n:Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 17
    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->n:Ljava/lang/String;

    :cond_9
    const-string v7, "[Upload] Send %d bytes"

    new-array v8, v6, [Ljava/lang/Object;

    .line 18
    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 19
    invoke-static {v5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v0

    .line 20
    iget v10, p0, Lcom/tencent/bugly/proguard/w;->d:I

    .line 21
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    .line 22
    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 23
    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v7, v5, v1, p0, v4}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/w;Ljava/util/Map;)[B

    move-result-object v7

    .line 24
    iget-object v8, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 25
    invoke-direct {p0, v7, v8}, Lcom/tencent/bugly/proguard/w;->a([BLjava/util/Map;)Landroid/util/Pair;

    move-result-object v10

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_7

    :cond_a
    invoke-direct {p0, v8}, Lcom/tencent/bugly/proguard/w;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v8

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    invoke-static {v7, v3}, Lcom/tencent/bugly/proguard/ab;->b([BI)[B

    move-result-object v8

    if-eqz v8, :cond_c

    move-object v7, v8

    :cond_c
    invoke-static {v7}, Lcom/tencent/bugly/proguard/a;->b([B)Lcom/tencent/bugly/proguard/ao;

    move-result-object v7

    if-nez v7, :cond_d

    const-string v7, "failed to decode response package"

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    const-string v8, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    new-array v10, v3, [Ljava/lang/Object;

    iget v11, v7, Lcom/tencent/bugly/proguard/ao;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    iget-object v11, v7, Lcom/tencent/bugly/proguard/ao;->c:[B

    if-nez v11, :cond_e

    const/4 v11, 0x0

    goto :goto_5

    :cond_e
    iget-object v11, v7, Lcom/tencent/bugly/proguard/ao;->c:[B

    array-length v11, v11

    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v10}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v10, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v7, v8, v10}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "failed to process response package"

    invoke-direct {p0, v7, v0, v3, v8}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    const-string v8, "successfully uploaded"

    invoke-direct {p0, v7, v6, v3, v8}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    goto/16 :goto_4

    :cond_10
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_11

    move v7, v9

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_11
    return-void

    :cond_12
    const-string v1, "failed after many attempts"

    .line 26
    invoke-direct {p0, v2, v0, v8, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    return-void
.end method
