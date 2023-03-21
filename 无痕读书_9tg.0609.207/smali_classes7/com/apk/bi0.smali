.class public final Lcom/apk/bi0;
.super Lcom/apk/xi0$for;
.source "RealConnection.kt"

# interfaces
.implements Lcom/apk/fg0;


# instance fields
.field public break:Z

.field public case:Lcom/apk/xi0;

.field public catch:I

.field public class:I

.field public const:I

.field public else:Lcom/apk/tk0;

.field public final:I

.field public for:Ljava/net/Socket;

.field public goto:Lcom/apk/sk0;

.field public if:Ljava/net/Socket;

.field public new:Lcom/apk/rg0;

.field public final super:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/apk/xh0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public this:Z

.field public throw:J

.field public try:Lcom/apk/yg0;

.field public final while:Lcom/apk/fh0;


# direct methods
.method public constructor <init>(Lcom/apk/ci0;Lcom/apk/fh0;)V
    .locals 1
    .param p1    # Lcom/apk/ci0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/fh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/apk/xi0$for;-><init>()V

    iput-object p2, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/apk/bi0;->final:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/bi0;->super:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    iput-wide p1, p0, Lcom/apk/bi0;->throw:J

    return-void
.end method


# virtual methods
.method public final break(Z)Z
    .locals 9

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

    const-string v0, "Thread "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 6
    iget-object v4, p0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    invoke-static {v4}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_7

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/apk/bi0;->case:Lcom/apk/xi0;

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-boolean p1, v2, Lcom/apk/xi0;->else:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    monitor-exit v2

    goto :goto_1

    .line 11
    :cond_3
    :try_start_1
    iget-wide v3, v2, Lcom/apk/xi0;->throw:J

    iget-wide v6, v2, Lcom/apk/xi0;->super:J

    cmp-long p1, v3, v6

    if-gez p1, :cond_4

    iget-wide v3, v2, Lcom/apk/xi0;->import:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_4

    monitor-exit v2

    goto :goto_1

    .line 12
    :cond_4
    monitor-exit v2

    const/4 v5, 0x1

    :goto_1
    return v5

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 13
    :cond_5
    monitor-enter p0

    :try_start_2
    iget-wide v7, p0, Lcom/apk/bi0;->throw:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long v2, v0, v7

    if-ltz v2, :cond_6

    if-eqz p1, :cond_6

    const-string p1, "$this$isHealthy"

    .line 14
    invoke-static {v3, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {v4, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 16
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 17
    invoke-interface {v4}, Lcom/apk/tk0;->else()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr v0, v6

    .line 18
    :try_start_5
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    const/4 v5, 0x1

    :catch_1
    :goto_2
    return v5

    :cond_6
    return v6

    :catchall_2
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1

    :cond_7
    :goto_3
    return v5
.end method

.method public final case(IILcom/apk/zf0;Lcom/apk/og0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 2
    iget-object v1, v0, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 3
    iget-object v0, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 4
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/apk/yh0;->do:[I

    invoke-virtual {v2}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 5
    :goto_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/apk/uf0;->try:Ljavax/net/SocketFactory;

    .line 7
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 8
    :goto_1
    iput-object v0, p0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    .line 9
    iget-object v2, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 10
    iget-object v2, v2, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    if-eqz p4, :cond_3

    const-string p4, "call"

    .line 11
    invoke-static {p3, p4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "inetSocketAddress"

    invoke-static {v2, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "proxy"

    invoke-static {v1, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 13
    :try_start_0
    sget-object p2, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 14
    sget-object p2, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 15
    iget-object p3, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 16
    iget-object p3, p3, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 17
    invoke-virtual {p2, v0, p3, p1}, Lcom/apk/uj0;->try(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    invoke-static {v0}, Lcom/apk/bl0;->try(Ljava/net/Socket;)Lcom/apk/ll0;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/apk/sb0;->class(Lcom/apk/ll0;)Lcom/apk/tk0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    .line 20
    invoke-static {v0}, Lcom/apk/bl0;->if(Ljava/net/Socket;)Lcom/apk/jl0;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/apk/sb0;->catch(Lcom/apk/jl0;)Lcom/apk/sk0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/bi0;->goto:Lcom/apk/sk0;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 23
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 25
    iget-object p4, p4, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 26
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 28
    throw p2

    :cond_3
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public final catch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/bi0;->case:Lcom/apk/xi0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final class(Lcom/apk/xg0;Lcom/apk/mi0;)Lcom/apk/ji0;
    .locals 6
    .param p1    # Lcom/apk/xg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/apk/bi0;->goto:Lcom/apk/sk0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Lcom/apk/bi0;->case:Lcom/apk/xi0;

    if-eqz v3, :cond_0

    .line 5
    new-instance v0, Lcom/apk/ej0;

    invoke-direct {v0, p1, p0, p2, v3}, Lcom/apk/ej0;-><init>(Lcom/apk/xg0;Lcom/apk/bi0;Lcom/apk/mi0;Lcom/apk/xi0;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p2, Lcom/apk/mi0;->goto:I

    .line 7
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 8
    invoke-interface {v1}, Lcom/apk/ll0;->if()Lcom/apk/ml0;

    move-result-object v0

    .line 9
    iget v3, p2, Lcom/apk/mi0;->goto:I

    int-to-long v3, v3

    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    .line 11
    invoke-interface {v2}, Lcom/apk/jl0;->if()Lcom/apk/ml0;

    move-result-object v0

    .line 12
    iget p2, p2, Lcom/apk/mi0;->this:I

    int-to-long v3, p2

    .line 13
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p2}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    .line 14
    new-instance v0, Lcom/apk/ri0;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/apk/ri0;-><init>(Lcom/apk/xg0;Lcom/apk/bi0;Lcom/apk/tk0;Lcom/apk/sk0;)V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized const()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/apk/bi0;->this:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public do()Lcom/apk/yg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final else(IIILcom/apk/zf0;Lcom/apk/og0;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 1
    new-instance v3, Lcom/apk/zg0$do;

    invoke-direct {v3}, Lcom/apk/zg0$do;-><init>()V

    .line 2
    iget-object v4, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 3
    iget-object v4, v4, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 4
    iget-object v4, v4, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 5
    invoke-virtual {v3, v4}, Lcom/apk/zg0$do;->this(Lcom/apk/tg0;)Lcom/apk/zg0$do;

    const-string v4, "CONNECT"

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v4, v5}, Lcom/apk/zg0$do;->try(Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/zg0$do;

    .line 7
    iget-object v4, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 8
    iget-object v4, v4, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 9
    iget-object v4, v4, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    const/4 v6, 0x1

    .line 10
    invoke-static {v4, v6}, Lcom/apk/jh0;->abstract(Lcom/apk/tg0;Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Host"

    invoke-virtual {v3, v7, v4}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    const-string v4, "Proxy-Connection"

    const-string v7, "Keep-Alive"

    .line 11
    invoke-virtual {v3, v4, v7}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    const-string v4, "User-Agent"

    const-string v7, "okhttp/4.9.3"

    .line 12
    invoke-virtual {v3, v4, v7}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 13
    invoke-virtual {v3}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/apk/ch0$do;

    invoke-direct {v4}, Lcom/apk/ch0$do;-><init>()V

    .line 15
    invoke-virtual {v4, v3}, Lcom/apk/ch0$do;->else(Lcom/apk/zg0;)Lcom/apk/ch0$do;

    .line 16
    sget-object v7, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    invoke-virtual {v4, v7}, Lcom/apk/ch0$do;->case(Lcom/apk/yg0;)Lcom/apk/ch0$do;

    const/16 v7, 0x197

    .line 17
    iput v7, v4, Lcom/apk/ch0$do;->for:I

    const-string v7, "Preemptive Authenticate"

    .line 18
    invoke-virtual {v4, v7}, Lcom/apk/ch0$do;->try(Ljava/lang/String;)Lcom/apk/ch0$do;

    .line 19
    sget-object v7, Lcom/apk/jh0;->for:Lcom/apk/dh0;

    .line 20
    iput-object v7, v4, Lcom/apk/ch0$do;->else:Lcom/apk/dh0;

    const-wide/16 v7, -0x1

    .line 21
    iput-wide v7, v4, Lcom/apk/ch0$do;->catch:J

    .line 22
    iput-wide v7, v4, Lcom/apk/ch0$do;->class:J

    const-string v7, "Proxy-Authenticate"

    const-string v8, "name"

    .line 23
    invoke-static {v7, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "OkHttp-Preemptive"

    const-string v9, "value"

    invoke-static {v8, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v9, v4, Lcom/apk/ch0$do;->case:Lcom/apk/sg0$do;

    invoke-virtual {v9, v7, v8}, Lcom/apk/sg0$do;->case(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/sg0$do;

    .line 25
    invoke-virtual {v4}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v4

    .line 26
    iget-object v7, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 27
    iget-object v8, v7, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 28
    iget-object v8, v8, Lcom/apk/uf0;->this:Lcom/apk/wf0;

    .line 29
    invoke-interface {v8, v7, v4}, Lcom/apk/wf0;->do(Lcom/apk/fh0;Lcom/apk/ch0;)Lcom/apk/zg0;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v3, v4

    .line 30
    :cond_0
    iget-object v4, v3, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x15

    if-ge v7, v8, :cond_8

    move/from16 v8, p1

    move-object/from16 v9, p5

    .line 31
    invoke-virtual {v0, v8, v1, v2, v9}, Lcom/apk/bi0;->case(IILcom/apk/zf0;Lcom/apk/og0;)V

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CONNECT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v6}, Lcom/apk/jh0;->abstract(Lcom/apk/tg0;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " HTTP/1.1"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    :goto_1
    iget-object v10, v0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    invoke-static {v10}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 34
    iget-object v11, v0, Lcom/apk/bi0;->goto:Lcom/apk/sk0;

    invoke-static {v11}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 35
    new-instance v12, Lcom/apk/ri0;

    invoke-direct {v12, v5, v0, v10, v11}, Lcom/apk/ri0;-><init>(Lcom/apk/xg0;Lcom/apk/bi0;Lcom/apk/tk0;Lcom/apk/sk0;)V

    .line 36
    invoke-interface {v10}, Lcom/apk/ll0;->if()Lcom/apk/ml0;

    move-result-object v5

    int-to-long v13, v1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v13, v14, v15}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    .line 37
    invoke-interface {v11}, Lcom/apk/jl0;->if()Lcom/apk/ml0;

    move-result-object v5

    move/from16 v13, p3

    int-to-long v14, v13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v14, v15, v1}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    .line 38
    iget-object v1, v3, Lcom/apk/zg0;->new:Lcom/apk/sg0;

    .line 39
    invoke-virtual {v12, v1, v6}, Lcom/apk/ri0;->catch(Lcom/apk/sg0;Ljava/lang/String;)V

    .line 40
    iget-object v1, v12, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    invoke-interface {v1}, Lcom/apk/sk0;->flush()V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v12, v1}, Lcom/apk/ri0;->new(Z)Lcom/apk/ch0$do;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v3}, Lcom/apk/ch0$do;->else(Lcom/apk/zg0;)Lcom/apk/ch0$do;

    .line 43
    invoke-virtual {v1}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v1

    const-string v3, "response"

    .line 44
    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {v1}, Lcom/apk/jh0;->final(Lcom/apk/ch0;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v3, v14, v16

    if-nez v3, :cond_1

    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {v12, v14, v15}, Lcom/apk/ri0;->break(J)Lcom/apk/ll0;

    move-result-object v3

    const v5, 0x7fffffff

    .line 47
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v5, v12}, Lcom/apk/jh0;->package(Lcom/apk/ll0;ILjava/util/concurrent/TimeUnit;)Z

    .line 48
    check-cast v3, Lcom/apk/ri0$new;

    invoke-virtual {v3}, Lcom/apk/ri0$new;->close()V

    .line 49
    :goto_2
    iget v3, v1, Lcom/apk/ch0;->try:I

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_5

    const/16 v5, 0x197

    if-ne v3, v5, :cond_4

    .line 50
    iget-object v3, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 51
    iget-object v5, v3, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 52
    iget-object v5, v5, Lcom/apk/uf0;->this:Lcom/apk/wf0;

    .line 53
    invoke-interface {v5, v3, v1}, Lcom/apk/wf0;->do(Lcom/apk/fh0;Lcom/apk/ch0;)Lcom/apk/zg0;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x2

    const-string v10, "Connection"

    const/4 v11, 0x0

    .line 54
    invoke-static {v1, v10, v11, v5}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "close"

    const/4 v10, 0x1

    invoke-static {v5, v1, v10}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    move/from16 v1, p2

    goto/16 :goto_1

    .line 55
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 57
    iget v1, v1, Lcom/apk/ch0;->try:I

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_5
    invoke-interface {v10}, Lcom/apk/tk0;->do()Lcom/apk/rk0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/rk0;->else()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Lcom/apk/sk0;->do()Lcom/apk/rk0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/rk0;->else()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_8

    .line 60
    iget-object v1, v0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    :cond_6
    const/4 v5, 0x0

    .line 61
    iput-object v5, v0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    .line 62
    iput-object v5, v0, Lcom/apk/bi0;->goto:Lcom/apk/sk0;

    .line 63
    iput-object v5, v0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    .line 64
    iget-object v1, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 65
    iget-object v6, v1, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 66
    iget-object v1, v1, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    const-string v10, "call"

    .line 67
    invoke-static {v2, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "inetSocketAddress"

    invoke-static {v6, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "proxy"

    invoke-static {v1, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    .line 68
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    return-void
.end method

.method public final final(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/apk/bi0;->goto:Lcom/apk/sk0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    new-instance v4, Lcom/apk/xi0$if;

    sget-object v5, Lcom/apk/sh0;->goto:Lcom/apk/sh0;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/apk/xi0$if;-><init>(ZLcom/apk/sh0;)V

    .line 6
    iget-object v5, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 7
    iget-object v5, v5, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 8
    iget-object v5, v5, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 9
    iget-object v5, v5, Lcom/apk/tg0;->try:Ljava/lang/String;

    const-string v7, "socket"

    .line 10
    invoke-static {v0, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "peerName"

    invoke-static {v5, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "source"

    invoke-static {v1, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sink"

    invoke-static {v2, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v0, v4, Lcom/apk/xi0$if;->do:Ljava/net/Socket;

    .line 12
    iget-boolean v0, v4, Lcom/apk/xi0$if;->goto:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/apk/jh0;->this:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MockWebServer "

    .line 13
    invoke-static {v0, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_0
    iput-object v0, v4, Lcom/apk/xi0$if;->if:Ljava/lang/String;

    .line 15
    iput-object v1, v4, Lcom/apk/xi0$if;->for:Lcom/apk/tk0;

    .line 16
    iput-object v2, v4, Lcom/apk/xi0$if;->new:Lcom/apk/sk0;

    const-string v0, "listener"

    .line 17
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p0, v4, Lcom/apk/xi0$if;->try:Lcom/apk/xi0$for;

    .line 19
    iput p1, v4, Lcom/apk/xi0$if;->else:I

    .line 20
    new-instance p1, Lcom/apk/xi0;

    invoke-direct {p1, v4}, Lcom/apk/xi0;-><init>(Lcom/apk/xi0$if;)V

    .line 21
    iput-object p1, p0, Lcom/apk/bi0;->case:Lcom/apk/xi0;

    .line 22
    sget-object v0, Lcom/apk/xi0;->abstract:Lcom/apk/xi0;

    .line 23
    sget-object v0, Lcom/apk/xi0;->private:Lcom/apk/lj0;

    .line 24
    iget v1, v0, Lcom/apk/lj0;->do:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/apk/lj0;->if:[I

    aget v0, v0, v2

    goto :goto_1

    :cond_1
    const v0, 0x7fffffff

    .line 25
    :goto_1
    iput v0, p0, Lcom/apk/bi0;->final:I

    .line 26
    sget-object v0, Lcom/apk/sh0;->goto:Lcom/apk/sh0;

    const-string v1, "taskRunner"

    .line 27
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, p1, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    iget-boolean v4, v1, Lcom/apk/hj0;->for:Z

    if-nez v4, :cond_b

    .line 31
    iget-boolean v4, v1, Lcom/apk/hj0;->case:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    monitor-exit v1

    goto :goto_2

    .line 32
    :cond_2
    :try_start_1
    sget-object v4, Lcom/apk/hj0;->else:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    sget-object v4, Lcom/apk/hj0;->else:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> CONNECTION "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/apk/wi0;->do:Lcom/apk/uk0;

    invoke-virtual {v7}, Lcom/apk/uk0;->new()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/apk/jh0;->class(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 34
    :cond_3
    iget-object v4, v1, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    sget-object v5, Lcom/apk/wi0;->do:Lcom/apk/uk0;

    invoke-interface {v4, v5}, Lcom/apk/sk0;->while(Lcom/apk/uk0;)Lcom/apk/sk0;

    .line 35
    iget-object v4, v1, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {v4}, Lcom/apk/sk0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    monitor-exit v1

    .line 37
    :goto_2
    iget-object v1, p1, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    iget-object v4, p1, Lcom/apk/xi0;->native:Lcom/apk/lj0;

    .line 38
    monitor-enter v1

    :try_start_2
    const-string v5, "settings"

    invoke-static {v4, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-boolean v5, v1, Lcom/apk/hj0;->for:Z

    if-nez v5, :cond_a

    .line 40
    iget v5, v4, Lcom/apk/lj0;->do:I

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    .line 41
    invoke-virtual {v1, v3, v5, v2, v3}, Lcom/apk/hj0;->break(IIII)V

    const/16 v5, 0xa

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_8

    shl-int v8, v6, v7

    .line 42
    iget v9, v4, Lcom/apk/lj0;->do:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_5

    goto :goto_6

    :cond_5
    if-eq v7, v2, :cond_7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_6

    move v8, v7

    goto :goto_5

    :cond_6
    const/4 v8, 0x4

    goto :goto_5

    :cond_7
    const/4 v8, 0x3

    .line 43
    :goto_5
    iget-object v9, v1, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {v9, v8}, Lcom/apk/sk0;->writeShort(I)Lcom/apk/sk0;

    .line 44
    iget-object v8, v1, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    .line 45
    iget-object v9, v4, Lcom/apk/lj0;->if:[I

    aget v9, v9, v7

    .line 46
    invoke-interface {v8, v9}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 47
    :cond_8
    iget-object v2, v1, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {v2}, Lcom/apk/sk0;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    monitor-exit v1

    .line 49
    iget-object v1, p1, Lcom/apk/xi0;->native:Lcom/apk/lj0;

    invoke-virtual {v1}, Lcom/apk/lj0;->do()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_9

    .line 50
    iget-object v4, p1, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v4, v3, v1, v2}, Lcom/apk/hj0;->finally(IJ)V

    .line 51
    :cond_9
    invoke-virtual {v0}, Lcom/apk/sh0;->case()Lcom/apk/rh0;

    move-result-object v0

    iget-object v5, p1, Lcom/apk/xi0;->new:Ljava/lang/String;

    iget-object v2, p1, Lcom/apk/xi0;->finally:Lcom/apk/xi0$new;

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 52
    new-instance p1, Lcom/apk/qh0;

    move-object v1, p1

    move-object v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Lcom/apk/qh0;-><init>(Lcom/apk/hd0;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v0, p1, v7, v8}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void

    .line 53
    :cond_a
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 54
    :cond_b
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public for(Lcom/apk/gj0;)V
    .locals 2
    .param p1    # Lcom/apk/gj0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/apk/gj0;->for(Lcom/apk/ti0;Ljava/io/IOException;)V

    return-void
.end method

.method public final goto(Lcom/apk/uh0;ILcom/apk/zf0;Lcom/apk/og0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p4, Lcom/apk/yg0;->case:Lcom/apk/yg0;

    sget-object v0, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    iget-object v1, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 2
    iget-object v1, v1, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 3
    iget-object v2, v1, Lcom/apk/uf0;->case:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_1

    .line 4
    iget-object p1, v1, Lcom/apk/uf0;->if:Ljava/util/List;

    .line 5
    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    iput-object p1, p0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    .line 7
    iput-object p4, p0, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    .line 8
    invoke-virtual {p0, p2}, Lcom/apk/bi0;->final(I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    iput-object p1, p0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    .line 10
    iput-object v0, p0, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    return-void

    :cond_1
    const/4 p4, 0x0

    const-string v1, "call"

    .line 11
    invoke-static {p3, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 13
    iget-object v2, v2, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 14
    iget-object v3, v2, Lcom/apk/uf0;->case:Ljavax/net/ssl/SSLSocketFactory;

    .line 15
    :try_start_0
    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 16
    iget-object v4, p0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    .line 17
    iget-object v5, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 18
    iget-object v5, v5, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 19
    iget-object v6, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 20
    iget v6, v6, Lcom/apk/tg0;->case:I

    const/4 v7, 0x1

    .line 21
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-virtual {p1, v3}, Lcom/apk/uh0;->do(Ljavax/net/ssl/SSLSocket;)Lcom/apk/hg0;

    move-result-object p1

    .line 23
    iget-boolean v4, p1, Lcom/apk/hg0;->if:Z

    if-eqz v4, :cond_2

    .line 24
    sget-object v4, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 25
    sget-object v4, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 26
    iget-object v5, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 27
    iget-object v5, v5, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 28
    iget-object v6, v2, Lcom/apk/uf0;->if:Ljava/util/List;

    .line 29
    invoke-virtual {v4, v3, v5, v6}, Lcom/apk/uj0;->new(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    :cond_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 31
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    const-string v5, "sslSocketSession"

    .line 32
    invoke-static {v4, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/apk/rg0;->do(Ljavax/net/ssl/SSLSession;)Lcom/apk/rg0;

    move-result-object v5

    .line 33
    iget-object v6, v2, Lcom/apk/uf0;->else:Ljavax/net/ssl/HostnameVerifier;

    .line 34
    invoke-static {v6}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 35
    iget-object v8, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 36
    iget-object v8, v8, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 37
    invoke-interface {v6, v8, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 38
    invoke-virtual {v5}, Lcom/apk/rg0;->for()Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v7

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 41
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n              |Hostname "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 43
    iget-object v0, v0, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    sget-object v0, Lcom/apk/bg0;->new:Lcom/apk/bg0$do;

    invoke-virtual {v0, p1}, Lcom/apk/bg0$do;->do(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    const-string v1, "cert.subjectDN"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v0, Lcom/apk/lk0;->do:Lcom/apk/lk0;

    const-string v1, "certificate"

    .line 48
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 49
    invoke-virtual {v0, p1, v1}, Lcom/apk/lk0;->if(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    .line 50
    invoke-virtual {v0, p1, v2}, Lcom/apk/lk0;->if(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-static {v1, p1}, Lcom/apk/uc0;->else(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1, p4, v7}, Lcom/apk/ie0;->default(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 55
    :cond_4
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hostname "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p3, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 58
    iget-object p3, p3, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified (no certificates)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_5
    iget-object v4, v2, Lcom/apk/uf0;->goto:Lcom/apk/bg0;

    .line 62
    invoke-static {v4}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 63
    new-instance v6, Lcom/apk/rg0;

    .line 64
    iget-object v7, v5, Lcom/apk/rg0;->if:Lcom/apk/gh0;

    .line 65
    iget-object v8, v5, Lcom/apk/rg0;->for:Lcom/apk/eg0;

    .line 66
    iget-object v9, v5, Lcom/apk/rg0;->new:Ljava/util/List;

    .line 67
    new-instance v10, Lcom/apk/zh0;

    invoke-direct {v10, v4, v5, v2}, Lcom/apk/zh0;-><init>(Lcom/apk/bg0;Lcom/apk/rg0;Lcom/apk/uf0;)V

    .line 68
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/apk/rg0;-><init>(Lcom/apk/gh0;Lcom/apk/eg0;Ljava/util/List;Lcom/apk/hd0;)V

    iput-object v6, p0, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    .line 69
    iget-object v2, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 70
    iget-object v2, v2, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 71
    new-instance v5, Lcom/apk/ai0;

    invoke-direct {v5, p0}, Lcom/apk/ai0;-><init>(Lcom/apk/bi0;)V

    invoke-virtual {v4, v2, v5}, Lcom/apk/bg0;->do(Ljava/lang/String;Lcom/apk/hd0;)V

    .line 72
    iget-boolean p1, p1, Lcom/apk/hg0;->if:Z

    if-eqz p1, :cond_6

    .line 73
    sget-object p1, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 74
    sget-object p1, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 75
    invoke-virtual {p1, v3}, Lcom/apk/uj0;->case(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p4

    .line 76
    :cond_6
    iput-object v3, p0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    .line 77
    invoke-static {v3}, Lcom/apk/bl0;->try(Ljava/net/Socket;)Lcom/apk/ll0;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/apk/sb0;->class(Lcom/apk/ll0;)Lcom/apk/tk0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    .line 79
    invoke-static {v3}, Lcom/apk/bl0;->if(Ljava/net/Socket;)Lcom/apk/jl0;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/apk/sb0;->catch(Lcom/apk/jl0;)Lcom/apk/sk0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/bi0;->goto:Lcom/apk/sk0;

    if-eqz p4, :cond_7

    .line 81
    sget-object p1, Lcom/apk/yg0;->this:Lcom/apk/yg0$do;

    invoke-virtual {p1, p4}, Lcom/apk/yg0$do;->do(Ljava/lang/String;)Lcom/apk/yg0;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/apk/bi0;->try:Lcom/apk/yg0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    sget-object p1, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 83
    sget-object p1, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 84
    invoke-virtual {p1, v3}, Lcom/apk/uj0;->do(Ljavax/net/ssl/SSLSocket;)V

    .line 85
    invoke-static {p3, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    sget-object p3, Lcom/apk/yg0;->try:Lcom/apk/yg0;

    if-ne p1, p3, :cond_8

    .line 87
    invoke-virtual {p0, p2}, Lcom/apk/bi0;->final(I)V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    move-object p4, v3

    goto :goto_0

    .line 88
    :cond_9
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p4, :cond_a

    .line 89
    sget-object p2, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 90
    sget-object p2, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 91
    invoke-virtual {p2, p4}, Lcom/apk/uj0;->do(Ljavax/net/ssl/SSLSocket;)V

    :cond_a
    if-eqz p4, :cond_b

    .line 92
    invoke-static {p4}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    :cond_b
    throw p1
.end method

.method public declared-synchronized if(Lcom/apk/xi0;Lcom/apk/lj0;)V
    .locals 1
    .param p1    # Lcom/apk/xi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/lj0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, Lcom/apk/lj0;->do:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/apk/lj0;->if:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 2
    :goto_0
    iput p1, p0, Lcom/apk/bi0;->final:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final new(IIIIZLcom/apk/zf0;Lcom/apk/og0;)V
    .locals 16
    .param p6    # Lcom/apk/zf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/apk/og0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v10, "proxy"

    const-string v11, "inetSocketAddress"

    const-string v12, "call"

    invoke-static {v8, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_13

    .line 2
    iget-object v0, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 3
    iget-object v0, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 4
    iget-object v0, v0, Lcom/apk/uf0;->for:Ljava/util/List;

    .line 5
    new-instance v13, Lcom/apk/uh0;

    invoke-direct {v13, v0}, Lcom/apk/uh0;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v1, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 7
    iget-object v1, v1, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 8
    iget-object v2, v1, Lcom/apk/uf0;->case:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_3

    .line 9
    sget-object v1, Lcom/apk/hg0;->goto:Lcom/apk/hg0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 11
    iget-object v0, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 12
    iget-object v0, v0, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 13
    iget-object v0, v0, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 15
    sget-object v1, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 16
    invoke-virtual {v1, v0}, Lcom/apk/uj0;->goto(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lcom/apk/ei0;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    .line 18
    invoke-static {v3, v0, v4}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/apk/ei0;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 20
    :cond_2
    new-instance v0, Lcom/apk/ei0;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apk/ei0;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 21
    :cond_3
    iget-object v0, v1, Lcom/apk/uf0;->if:Ljava/util/List;

    .line 22
    sget-object v1, Lcom/apk/yg0;->case:Lcom/apk/yg0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_1
    const/4 v14, 0x0

    move-object v15, v14

    .line 23
    :goto_2
    :try_start_0
    iget-object v0, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    invoke-virtual {v0}, Lcom/apk/fh0;->do()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/apk/bi0;->else(IIILcom/apk/zf0;Lcom/apk/og0;)V

    .line 25
    iget-object v0, v7, Lcom/apk/bi0;->if:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_4

    :goto_3
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_7

    :cond_5
    move/from16 v1, p1

    move/from16 v2, p2

    .line 26
    :try_start_1
    invoke-virtual {v7, v1, v2, v8, v9}, Lcom/apk/bi0;->case(IILcom/apk/zf0;Lcom/apk/og0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move/from16 v3, p4

    .line 27
    :try_start_2
    invoke-virtual {v7, v13, v3, v8, v9}, Lcom/apk/bi0;->goto(Lcom/apk/uh0;ILcom/apk/zf0;Lcom/apk/og0;)V

    .line 28
    iget-object v0, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 29
    iget-object v0, v0, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 30
    iget-object v4, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 31
    iget-object v4, v4, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 32
    invoke-static {v8, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :goto_5
    iget-object v0, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    invoke-virtual {v0}, Lcom/apk/fh0;->do()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/apk/bi0;->if:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_6

    .line 34
    :cond_6
    new-instance v0, Lcom/apk/ei0;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apk/ei0;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 35
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/apk/bi0;->throw:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_7
    move/from16 v3, p4

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_3

    .line 36
    :goto_8
    iget-object v4, v7, Lcom/apk/bi0;->for:Ljava/net/Socket;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    .line 37
    :cond_8
    iget-object v4, v7, Lcom/apk/bi0;->if:Ljava/net/Socket;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    .line 38
    :cond_9
    iput-object v14, v7, Lcom/apk/bi0;->for:Ljava/net/Socket;

    .line 39
    iput-object v14, v7, Lcom/apk/bi0;->if:Ljava/net/Socket;

    .line 40
    iput-object v14, v7, Lcom/apk/bi0;->else:Lcom/apk/tk0;

    .line 41
    iput-object v14, v7, Lcom/apk/bi0;->goto:Lcom/apk/sk0;

    .line 42
    iput-object v14, v7, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    .line 43
    iput-object v14, v7, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    .line 44
    iput-object v14, v7, Lcom/apk/bi0;->case:Lcom/apk/xi0;

    const/4 v4, 0x1

    .line 45
    iput v4, v7, Lcom/apk/bi0;->final:I

    .line 46
    iget-object v4, v7, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 47
    iget-object v5, v4, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 48
    iget-object v4, v4, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 49
    invoke-static {v8, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ioe"

    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "e"

    if-nez v15, :cond_a

    .line 50
    new-instance v15, Lcom/apk/ei0;

    invoke-direct {v15, v0}, Lcom/apk/ei0;-><init>(Ljava/io/IOException;)V

    goto :goto_9

    .line 51
    :cond_a
    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v5, v15, Lcom/apk/ei0;->if:Ljava/io/IOException;

    invoke-static {v5, v0}, Lcom/apk/sb0;->try(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 53
    iput-object v0, v15, Lcom/apk/ei0;->do:Ljava/io/IOException;

    :goto_9
    if-eqz p5, :cond_11

    .line 54
    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 55
    iput-boolean v4, v13, Lcom/apk/uh0;->for:Z

    .line 56
    iget-boolean v4, v13, Lcom/apk/uh0;->if:Z

    if-nez v4, :cond_b

    goto :goto_a

    .line 57
    :cond_b
    instance-of v4, v0, Ljava/net/ProtocolException;

    if-eqz v4, :cond_c

    goto :goto_a

    .line 58
    :cond_c
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_d

    goto :goto_a

    .line 59
    :cond_d
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_e

    goto :goto_a

    .line 60
    :cond_e
    instance-of v4, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v4, :cond_f

    goto :goto_a

    .line 61
    :cond_f
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_11

    goto/16 :goto_2

    .line 62
    :cond_11
    throw v15

    .line 63
    :cond_12
    new-instance v0, Lcom/apk/ei0;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apk/ei0;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 64
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final this(Lcom/apk/uf0;Ljava/util/List;)Z
    .locals 8
    .param p1    # Lcom/apk/uf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/uf0;",
            "Ljava/util/List<",
            "Lcom/apk/fh0;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    const-string v1, " MUST hold lock on "

    const-string v2, "Thread.currentThread()"

    const-string v3, "Thread "

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/bi0;->super:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/apk/bi0;->final:I

    const/4 v5, 0x0

    if-ge v0, v4, :cond_14

    iget-boolean v0, p0, Lcom/apk/bi0;->this:Z

    if-eqz v0, :cond_2

    goto/16 :goto_9

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 5
    iget-object v0, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 6
    invoke-virtual {v0, p1}, Lcom/apk/uf0;->do(Lcom/apk/uf0;)Z

    move-result v0

    if-nez v0, :cond_3

    return v5

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 8
    iget-object v0, v0, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 10
    iget-object v4, v4, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 11
    iget-object v4, v4, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 12
    iget-object v4, v4, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 13
    invoke-static {v0, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    return v4

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/apk/bi0;->case:Lcom/apk/xi0;

    if-nez v0, :cond_5

    return v5

    :cond_5
    if-eqz p2, :cond_14

    .line 15
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/fh0;

    .line 17
    iget-object v6, v0, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 18
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_8

    .line 19
    iget-object v6, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 20
    iget-object v6, v6, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 21
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 22
    iget-object v6, v6, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    iget-object v0, v0, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 23
    invoke-static {v6, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    const/4 p2, 0x1

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_a

    goto/16 :goto_9

    .line 24
    :cond_a
    iget-object p2, p1, Lcom/apk/uf0;->else:Ljavax/net/ssl/HostnameVerifier;

    .line 25
    sget-object v0, Lcom/apk/lk0;->do:Lcom/apk/lk0;

    if-eq p2, v0, :cond_b

    return v5

    .line 26
    :cond_b
    iget-object p2, p1, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 27
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 28
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 29
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 30
    iget-object v0, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 31
    iget-object v0, v0, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 32
    iget v1, p2, Lcom/apk/tg0;->case:I

    iget v2, v0, Lcom/apk/tg0;->case:I

    if-eq v1, v2, :cond_e

    goto :goto_7

    .line 33
    :cond_e
    iget-object v1, p2, Lcom/apk/tg0;->try:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 34
    invoke-static {v1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    .line 35
    :cond_f
    iget-boolean v0, p0, Lcom/apk/bi0;->break:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lcom/apk/rg0;->for()Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_11

    sget-object v1, Lcom/apk/lk0;->do:Lcom/apk/lk0;

    .line 38
    iget-object p2, p2, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 39
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 40
    invoke-virtual {v1, p2, v0}, Lcom/apk/lk0;->new(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p2, 0x1

    goto :goto_5

    .line 41
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_12

    :goto_6
    const/4 p2, 0x1

    goto :goto_8

    :cond_12
    :goto_7
    const/4 p2, 0x0

    :goto_8
    if-nez p2, :cond_13

    return v5

    .line 42
    :cond_13
    :try_start_0
    iget-object p2, p1, Lcom/apk/uf0;->goto:Lcom/apk/bg0;

    .line 43
    invoke-static {p2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p1, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 45
    iget-object p1, p1, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    .line 47
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/apk/rg0;->for()Ljava/util/List;

    move-result-object v0

    const-string v1, "hostname"

    .line 48
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "peerCertificates"

    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/apk/cg0;

    invoke-direct {v1, p2, v0, p1}, Lcom/apk/cg0;-><init>(Lcom/apk/bg0;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v1}, Lcom/apk/bg0;->do(Ljava/lang/String;Lcom/apk/hd0;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    :cond_14
    :goto_9
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 2
    iget-object v1, v1, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 3
    iget-object v1, v1, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 4
    iget-object v1, v1, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 6
    iget-object v1, v1, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 7
    iget-object v1, v1, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 8
    iget v1, v1, Lcom/apk/tg0;->case:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 11
    iget-object v1, v1, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 14
    iget-object v1, v1, Lcom/apk/fh0;->for:Ljava/net/InetSocketAddress;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, v1, Lcom/apk/rg0;->for:Lcom/apk/eg0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/apk/bi0;->try:Lcom/apk/yg0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try(Lcom/apk/xg0;Lcom/apk/fh0;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lcom/apk/xg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/fh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p2, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 4
    iget-object v1, v0, Lcom/apk/uf0;->catch:Ljava/net/ProxySelector;

    .line 5
    iget-object v0, v0, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 6
    invoke-virtual {v0}, Lcom/apk/tg0;->else()Ljava/net/URI;

    move-result-object v0

    .line 7
    iget-object v2, p2, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 8
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/apk/xg0;->private:Lcom/apk/di0;

    .line 11
    monitor-enter p1

    :try_start_0
    const-string p3, "failedRoute"

    invoke-static {p2, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p3, p1, Lcom/apk/di0;->do:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
