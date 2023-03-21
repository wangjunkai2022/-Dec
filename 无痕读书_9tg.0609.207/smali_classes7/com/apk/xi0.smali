.class public final Lcom/apk/xi0;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/xi0$if;,
        Lcom/apk/xi0$new;,
        Lcom/apk/xi0$for;
    }
.end annotation


# static fields
.field public static final abstract:Lcom/apk/xi0;

.field public static final private:Lcom/apk/lj0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final break:Lcom/apk/rh0;

.field public case:I

.field public final catch:Lcom/apk/rh0;

.field public final class:Lcom/apk/kj0;

.field public const:J

.field public final default:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final do:Z

.field public else:Z

.field public final extends:Lcom/apk/hj0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final:J

.field public final finally:Lcom/apk/xi0$new;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/apk/gj0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final goto:Lcom/apk/sh0;

.field public final if:Lcom/apk/xi0$for;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public import:J

.field public final native:Lcom/apk/lj0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final package:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public public:Lcom/apk/lj0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public return:J

.field public static:J

.field public super:J

.field public switch:J

.field public final this:Lcom/apk/rh0;

.field public throw:J

.field public throws:J

.field public try:I

.field public while:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/lj0;

    invoke-direct {v0}, Lcom/apk/lj0;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/lj0;->for(II)Lcom/apk/lj0;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/apk/lj0;->for(II)Lcom/apk/lj0;

    .line 4
    sput-object v0, Lcom/apk/xi0;->private:Lcom/apk/lj0;

    return-void
.end method

.method public constructor <init>(Lcom/apk/xi0$if;)V
    .locals 9
    .param p1    # Lcom/apk/xi0$if;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/apk/xi0$if;->goto:Z

    .line 3
    iput-boolean v0, p0, Lcom/apk/xi0;->do:Z

    .line 4
    iget-object v0, p1, Lcom/apk/xi0$if;->try:Lcom/apk/xi0$for;

    .line 5
    iput-object v0, p0, Lcom/apk/xi0;->if:Lcom/apk/xi0$for;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lcom/apk/xi0$if;->if:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8
    iput-object v0, p0, Lcom/apk/xi0;->new:Ljava/lang/String;

    .line 9
    iget-boolean v0, p1, Lcom/apk/xi0$if;->goto:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    iput v0, p0, Lcom/apk/xi0;->case:I

    .line 11
    iget-object v0, p1, Lcom/apk/xi0$if;->this:Lcom/apk/sh0;

    .line 12
    iput-object v0, p0, Lcom/apk/xi0;->goto:Lcom/apk/sh0;

    .line 13
    invoke-virtual {v0}, Lcom/apk/sh0;->case()Lcom/apk/rh0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    .line 14
    iget-object v0, p0, Lcom/apk/xi0;->goto:Lcom/apk/sh0;

    invoke-virtual {v0}, Lcom/apk/sh0;->case()Lcom/apk/rh0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xi0;->break:Lcom/apk/rh0;

    .line 15
    iget-object v0, p0, Lcom/apk/xi0;->goto:Lcom/apk/sh0;

    invoke-virtual {v0}, Lcom/apk/sh0;->case()Lcom/apk/rh0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xi0;->catch:Lcom/apk/rh0;

    .line 16
    iget-object v0, p1, Lcom/apk/xi0$if;->case:Lcom/apk/kj0;

    .line 17
    iput-object v0, p0, Lcom/apk/xi0;->class:Lcom/apk/kj0;

    .line 18
    new-instance v0, Lcom/apk/lj0;

    invoke-direct {v0}, Lcom/apk/lj0;-><init>()V

    .line 19
    iget-boolean v2, p1, Lcom/apk/xi0$if;->goto:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/apk/lj0;->for(II)Lcom/apk/lj0;

    .line 21
    :cond_1
    iput-object v0, p0, Lcom/apk/xi0;->native:Lcom/apk/lj0;

    .line 22
    sget-object v0, Lcom/apk/xi0;->private:Lcom/apk/lj0;

    iput-object v0, p0, Lcom/apk/xi0;->public:Lcom/apk/lj0;

    .line 23
    invoke-virtual {v0}, Lcom/apk/lj0;->do()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/apk/xi0;->throws:J

    .line 24
    iget-object v0, p1, Lcom/apk/xi0$if;->do:Ljava/net/Socket;

    if-eqz v0, :cond_5

    .line 25
    iput-object v0, p0, Lcom/apk/xi0;->default:Ljava/net/Socket;

    .line 26
    new-instance v0, Lcom/apk/hj0;

    .line 27
    iget-object v2, p1, Lcom/apk/xi0$if;->new:Lcom/apk/sk0;

    if-eqz v2, :cond_4

    .line 28
    iget-boolean v3, p0, Lcom/apk/xi0;->do:Z

    invoke-direct {v0, v2, v3}, Lcom/apk/hj0;-><init>(Lcom/apk/sk0;Z)V

    iput-object v0, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    .line 29
    new-instance v0, Lcom/apk/xi0$new;

    new-instance v2, Lcom/apk/fj0;

    .line 30
    iget-object v3, p1, Lcom/apk/xi0$if;->for:Lcom/apk/tk0;

    if-eqz v3, :cond_3

    .line 31
    iget-boolean v1, p0, Lcom/apk/xi0;->do:Z

    invoke-direct {v2, v3, v1}, Lcom/apk/fj0;-><init>(Lcom/apk/tk0;Z)V

    invoke-direct {v0, p0, v2}, Lcom/apk/xi0$new;-><init>(Lcom/apk/xi0;Lcom/apk/fj0;)V

    iput-object v0, p0, Lcom/apk/xi0;->finally:Lcom/apk/xi0$new;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/apk/xi0;->package:Ljava/util/Set;

    .line 33
    iget p1, p1, Lcom/apk/xi0$if;->else:I

    if-eqz p1, :cond_2

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 35
    iget-object p1, p0, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/apk/xi0;->new:Ljava/lang/String;

    const-string v4, " ping"

    invoke-static {v2, v3, v4}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    new-instance v2, Lcom/apk/xi0$do;

    move-object v3, v2

    move-object v4, v5

    move-object v6, p0

    move-wide v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/apk/xi0$do;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/apk/xi0;J)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "source"

    .line 37
    invoke-static {p1}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "sink"

    .line 38
    invoke-static {p1}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "socket"

    .line 39
    invoke-static {p1}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "connectionName"

    .line 40
    invoke-static {p1}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final break(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/ti0;->if:Lcom/apk/ti0;

    sget-object v1, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized default(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/apk/xi0;->return:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/apk/xi0;->return:J

    .line 2
    iget-wide p1, p0, Lcom/apk/xi0;->static:J

    sub-long/2addr v0, p1

    .line 3
    iget-object p1, p0, Lcom/apk/xi0;->native:Lcom/apk/lj0;

    invoke-virtual {p1}, Lcom/apk/lj0;->do()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/apk/xi0;->private(IJ)V

    .line 5
    iget-wide p1, p0, Lcom/apk/xi0;->static:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/apk/xi0;->static:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final extends(IZLcom/apk/rk0;J)V
    .locals 8
    .param p3    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {p4, p2, p1, p3, v0}, Lcom/apk/hj0;->try(ZILcom/apk/rk0;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/apk/xi0;->switch:J

    iget-wide v5, p0, Lcom/apk/xi0;->throws:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 4
    iget-object v3, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lcom/apk/xi0;->throws:J

    iget-wide v5, p0, Lcom/apk/xi0;->switch:J

    sub-long/2addr v3, v5

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    .line 9
    iget v3, v3, Lcom/apk/hj0;->if:I

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    iget-wide v4, p0, Lcom/apk/xi0;->switch:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/apk/xi0;->switch:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    sub-long/2addr p4, v6

    .line 13
    iget-object v4, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lcom/apk/hj0;->try(ZILcom/apk/rk0;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final finally(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/hj0;->default(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {p0, p2, p2, p1}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Thread "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    const-string v0, "Thread.currentThread()"

    invoke-static {p3, v0}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/apk/xi0;->throws(Lcom/apk/ti0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lcom/apk/gj0;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lcom/apk/gj0;

    .line 8
    iget-object v0, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_3
    :goto_1
    monitor-exit p0

    if-eqz p1, :cond_4

    .line 11
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 12
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lcom/apk/gj0;->for(Lcom/apk/ti0;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {p1}, Lcom/apk/hj0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 14
    :catch_2
    :try_start_4
    iget-object p1, p0, Lcom/apk/xi0;->default:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 15
    :catch_3
    iget-object p1, p0, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    invoke-virtual {p1}, Lcom/apk/rh0;->case()V

    .line 16
    iget-object p1, p0, Lcom/apk/xi0;->break:Lcom/apk/rh0;

    invoke-virtual {p1}, Lcom/apk/rh0;->case()V

    .line 17
    iget-object p1, p0, Lcom/apk/xi0;->catch:Lcom/apk/rh0;

    invoke-virtual {p1}, Lcom/apk/rh0;->case()V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1
.end method

.method public final package(ILcom/apk/ti0;)V
    .locals 11
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/apk/xi0;->new:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lcom/apk/xi0$try;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/apk/xi0$try;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILcom/apk/ti0;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void
.end method

.method public final private(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/apk/xi0;->new:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lcom/apk/xi0$case;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-wide v10, p2

    invoke-direct/range {v3 .. v11}, Lcom/apk/xi0$case;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void
.end method

.method public final declared-synchronized throw(I)Lcom/apk/gj0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/gj0;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final throws(Lcom/apk/ti0;)V
    .locals 4
    .param p1    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lcom/apk/xi0;->else:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lcom/apk/xi0;->else:Z

    .line 6
    iget v1, p0, Lcom/apk/xi0;->try:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    monitor-exit p0

    .line 8
    iget-object v2, p0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    sget-object v3, Lcom/apk/jh0;->do:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/apk/hj0;->throw(ILcom/apk/ti0;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized try(I)Lcom/apk/gj0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/gj0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
