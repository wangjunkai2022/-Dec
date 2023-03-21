.class public final Lcom/apk/ri0$if;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/apk/jl0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/xk0;

.field public final synthetic for:Lcom/apk/ri0;

.field public if:Z


# direct methods
.method public constructor <init>(Lcom/apk/ri0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/xk0;

    .line 3
    iget-object p1, p1, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 4
    invoke-interface {p1}, Lcom/apk/jl0;->if()Lcom/apk/ml0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apk/xk0;-><init>(Lcom/apk/ml0;)V

    iput-object v0, p0, Lcom/apk/ri0$if;->do:Lcom/apk/xk0;

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 3
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/ri0$if;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    .line 3
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 4
    invoke-interface {v0, p2, p3}, Lcom/apk/sk0;->final(J)Lcom/apk/sk0;

    .line 5
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    .line 6
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    const-string v1, "\r\n"

    .line 7
    invoke-interface {v0, v1}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    .line 8
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    .line 9
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V

    .line 11
    iget-object p1, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    .line 12
    iget-object p1, p1, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 13
    invoke-interface {p1, v1}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/ri0$if;->if:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lcom/apk/ri0$if;->if:Z

    .line 3
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    .line 4
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    const-string v1, "0\r\n\r\n"

    .line 5
    invoke-interface {v0, v1}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    .line 6
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    iget-object v1, p0, Lcom/apk/ri0$if;->do:Lcom/apk/xk0;

    invoke-static {v0, v1}, Lcom/apk/ri0;->this(Lcom/apk/ri0;Lcom/apk/xk0;)V

    .line 7
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    const/4 v1, 0x3

    .line 8
    iput v1, v0, Lcom/apk/ri0;->do:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/ri0$if;->if:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/apk/ri0$if;->for:Lcom/apk/ri0;

    .line 3
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 4
    invoke-interface {v0}, Lcom/apk/sk0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ri0$if;->do:Lcom/apk/xk0;

    return-object v0
.end method
