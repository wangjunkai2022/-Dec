.class public final Lcom/apk/gj0$for;
.super Lcom/apk/ok0;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/gj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field public final synthetic class:Lcom/apk/gj0;


# direct methods
.method public constructor <init>(Lcom/apk/gj0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/gj0$for;->class:Lcom/apk/gj0;

    invoke-direct {p0}, Lcom/apk/ok0;-><init>()V

    return-void
.end method


# virtual methods
.method public break(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public catch()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$for;->class:Lcom/apk/gj0;

    sget-object v1, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    invoke-virtual {v0, v1}, Lcom/apk/gj0;->try(Lcom/apk/ti0;)V

    .line 2
    iget-object v0, p0, Lcom/apk/gj0$for;->class:Lcom/apk/gj0;

    .line 3
    iget-object v6, v0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 4
    monitor-enter v6

    .line 5
    :try_start_0
    iget-wide v0, v6, Lcom/apk/xi0;->throw:J

    iget-wide v2, v6, Lcom/apk/xi0;->super:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit v6

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    iget-wide v0, v6, Lcom/apk/xi0;->super:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/apk/xi0;->super:J

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/apk/xi0;->import:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v6

    .line 9
    iget-object v0, v6, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/apk/xi0;->new:Ljava/lang/String;

    const-string v3, " ping"

    invoke-static {v1, v2, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    const/4 v5, 0x1

    .line 10
    new-instance v9, Lcom/apk/dj0;

    move-object v1, v9

    move-object v2, v4

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lcom/apk/dj0;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;)V

    invoke-virtual {v0, v9, v7, v8}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v6

    throw v0
.end method

.method public final class()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/ok0;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0

    :cond_0
    return-void
.end method
