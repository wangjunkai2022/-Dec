.class public final Lcom/apk/ej0;
.super Ljava/lang/Object;
.source "Http2ExchangeCodec.kt"

# interfaces
.implements Lcom/apk/ji0;


# static fields
.field public static final else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final case:Lcom/apk/xi0;

.field public volatile do:Lcom/apk/gj0;

.field public volatile for:Z

.field public final if:Lcom/apk/yg0;

.field public final new:Lcom/apk/bi0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final try:Lcom/apk/mi0;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/apk/jh0;->super([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/apk/ej0;->else:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 3
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/apk/jh0;->super([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/apk/ej0;->goto:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/apk/xg0;Lcom/apk/bi0;Lcom/apk/mi0;Lcom/apk/xi0;)V
    .locals 2
    .param p1    # Lcom/apk/xg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/bi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/mi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/xi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/apk/yg0;->case:Lcom/apk/yg0;

    const-string v1, "client"

    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connection"

    invoke-static {p2, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "chain"

    invoke-static {p3, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "http2Connection"

    invoke-static {p4, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apk/ej0;->new:Lcom/apk/bi0;

    iput-object p3, p0, Lcom/apk/ej0;->try:Lcom/apk/mi0;

    iput-object p4, p0, Lcom/apk/ej0;->case:Lcom/apk/xi0;

    .line 2
    iget-object p1, p1, Lcom/apk/xg0;->public:Ljava/util/List;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/apk/yg0;->try:Lcom/apk/yg0;

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/apk/ej0;->if:Lcom/apk/yg0;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/ej0;->for:Z

    .line 2
    iget-object v0, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    invoke-virtual {v0, v1}, Lcom/apk/gj0;->try(Lcom/apk/ti0;)V

    :cond_0
    return-void
.end method

.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ej0;->case:Lcom/apk/xi0;

    .line 2
    iget-object v0, v0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {v0}, Lcom/apk/hj0;->flush()V

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/apk/gj0;->else()Lcom/apk/jl0;

    move-result-object v0

    check-cast v0, Lcom/apk/gj0$do;

    invoke-virtual {v0}, Lcom/apk/gj0$do;->close()V

    return-void
.end method

.method public else(Lcom/apk/ch0;)J
    .locals 2
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/apk/ki0;->for(Lcom/apk/ch0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/apk/jh0;->final(Lcom/apk/ch0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public for(Lcom/apk/ch0;)Lcom/apk/ll0;
    .locals 1
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    return-object p1
.end method

.method public goto(Lcom/apk/zg0;J)Lcom/apk/jl0;
    .locals 0
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "request"

    invoke-static {p1, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/apk/gj0;->else()Lcom/apk/jl0;

    move-result-object p1

    return-object p1
.end method

.method public if(Lcom/apk/zg0;)V
    .locals 14
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "request"

    .line 3
    invoke-static {p1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p1, Lcom/apk/zg0;->new:Lcom/apk/sg0;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/apk/sg0;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v5, Lcom/apk/ui0;

    sget-object v6, Lcom/apk/ui0;->case:Lcom/apk/uk0;

    .line 7
    iget-object v7, p1, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 8
    invoke-direct {v5, v6, v7}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v5, Lcom/apk/ui0;

    sget-object v6, Lcom/apk/ui0;->else:Lcom/apk/uk0;

    .line 10
    iget-object v7, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    const-string v8, "url"

    .line 11
    invoke-static {v7, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7}, Lcom/apk/tg0;->if()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v7}, Lcom/apk/tg0;->new()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 15
    :cond_2
    invoke-direct {v5, v6, v8}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    .line 16
    invoke-virtual {p1, v5}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 17
    new-instance v6, Lcom/apk/ui0;

    sget-object v7, Lcom/apk/ui0;->this:Lcom/apk/uk0;

    invoke-direct {v6, v7, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    new-instance v5, Lcom/apk/ui0;

    sget-object v6, Lcom/apk/ui0;->goto:Lcom/apk/uk0;

    .line 19
    iget-object p1, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 20
    iget-object p1, p1, Lcom/apk/tg0;->if:Ljava/lang/String;

    .line 21
    invoke-direct {v5, v6, p1}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v3}, Lcom/apk/sg0;->size()I

    move-result p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_7

    .line 23
    invoke-virtual {v3, v5}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Locale.US"

    invoke-static {v7, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v7, Lcom/apk/ej0;->else:Ljava/util/List;

    .line 25
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-static {v6, v7}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 26
    invoke-virtual {v3, v5}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 27
    :cond_4
    new-instance v7, Lcom/apk/ui0;

    invoke-virtual {v3, v5}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/apk/ej0;->case:Lcom/apk/xi0;

    if-eqz p1, :cond_f

    const-string v3, "requestHeaders"

    .line 30
    invoke-static {v4, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, v0, 0x1

    const/4 v9, 0x0

    .line 31
    iget-object v11, p1, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    monitor-enter v11

    .line 32
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    iget v5, p1, Lcom/apk/xi0;->case:I

    const v6, 0x3fffffff    # 1.9999999f

    if-le v5, v6, :cond_8

    .line 34
    sget-object v5, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    invoke-virtual {p1, v5}, Lcom/apk/xi0;->throws(Lcom/apk/ti0;)V

    .line 35
    :cond_8
    iget-boolean v5, p1, Lcom/apk/xi0;->else:Z

    if-nez v5, :cond_e

    .line 36
    iget v12, p1, Lcom/apk/xi0;->case:I

    .line 37
    iget v5, p1, Lcom/apk/xi0;->case:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p1, Lcom/apk/xi0;->case:I

    .line 38
    new-instance v13, Lcom/apk/gj0;

    const/4 v10, 0x0

    move-object v5, v13

    move v6, v12

    move-object v7, p1

    move v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/apk/gj0;-><init>(ILcom/apk/xi0;ZZLcom/apk/sg0;)V

    if-eqz v0, :cond_9

    .line 39
    iget-wide v5, p1, Lcom/apk/xi0;->switch:J

    iget-wide v7, p1, Lcom/apk/xi0;->throws:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_9

    .line 40
    iget-wide v5, v13, Lcom/apk/gj0;->for:J

    .line 41
    iget-wide v7, v13, Lcom/apk/gj0;->new:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 42
    :cond_a
    invoke-virtual {v13}, Lcom/apk/gj0;->this()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, p1, Lcom/apk/xi0;->for:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_b
    :try_start_2
    monitor-exit p1

    .line 45
    iget-object v0, p1, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {v0, v3, v12, v4}, Lcom/apk/hj0;->throws(ZILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    monitor-exit v11

    if-eqz v1, :cond_c

    .line 47
    iget-object p1, p1, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {p1}, Lcom/apk/hj0;->flush()V

    .line 48
    :cond_c
    iput-object v13, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    .line 49
    iget-boolean p1, p0, Lcom/apk/ej0;->for:Z

    if-nez p1, :cond_d

    .line 50
    iget-object p1, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p1, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    .line 52
    iget-object v0, p0, Lcom/apk/ej0;->try:Lcom/apk/mi0;

    .line 53
    iget v0, v0, Lcom/apk/mi0;->goto:I

    int-to-long v0, v0

    .line 54
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    .line 55
    iget-object p1, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p1, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 57
    iget-object v0, p0, Lcom/apk/ej0;->try:Lcom/apk/mi0;

    .line 58
    iget v0, v0, Lcom/apk/mi0;->this:I

    int-to-long v0, v0

    .line 59
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    return-void

    .line 60
    :cond_d
    iget-object p1, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    sget-object v0, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    invoke-virtual {p1, v0}, Lcom/apk/gj0;->try(Lcom/apk/ti0;)V

    .line 61
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_e
    :try_start_3
    new-instance v0, Lcom/apk/si0;

    invoke-direct {v0}, Lcom/apk/si0;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 63
    :try_start_4
    monitor-exit p1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 64
    monitor-exit v11

    throw p1

    :cond_f
    const/4 p1, 0x0

    .line 65
    throw p1
.end method

.method public new(Z)Lcom/apk/ch0$do;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ej0;->do:Lcom/apk/gj0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    invoke-virtual {v1}, Lcom/apk/ok0;->goto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/apk/gj0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/apk/gj0;->class()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    invoke-virtual {v1}, Lcom/apk/gj0$for;->class()V

    .line 7
    iget-object v1, v0, Lcom/apk/gj0;->try:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 8
    iget-object v1, v0, Lcom/apk/gj0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "headersQueue.removeFirst()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/apk/sg0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lcom/apk/ej0;->if:Lcom/apk/yg0;

    const-string v2, "headerBlock"

    .line 10
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "protocol"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v1}, Lcom/apk/sg0;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v4

    :goto_1
    if-ge v6, v3, :cond_3

    .line 13
    invoke-virtual {v1, v6}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v1, v6}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":status"

    .line 15
    invoke-static {v8, v10}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/apk/pi0;->do(Ljava/lang/String;)Lcom/apk/pi0;

    move-result-object v7

    goto :goto_2

    .line 17
    :cond_1
    sget-object v10, Lcom/apk/ej0;->goto:Ljava/util/List;

    .line 18
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "name"

    .line 19
    invoke-static {v8, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v9}, Lcom/apk/ie0;->throws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_6

    .line 22
    new-instance v1, Lcom/apk/ch0$do;

    invoke-direct {v1}, Lcom/apk/ch0$do;-><init>()V

    .line 23
    invoke-virtual {v1, v0}, Lcom/apk/ch0$do;->case(Lcom/apk/yg0;)Lcom/apk/ch0$do;

    .line 24
    iget v0, v7, Lcom/apk/pi0;->if:I

    .line 25
    iput v0, v1, Lcom/apk/ch0$do;->for:I

    .line 26
    iget-object v0, v7, Lcom/apk/pi0;->for:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apk/ch0$do;->try(Ljava/lang/String;)Lcom/apk/ch0$do;

    .line 27
    new-instance v0, Lcom/apk/sg0;

    new-array v3, v5, [Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, [Ljava/lang/String;

    .line 29
    invoke-direct {v0, v2, v4}, Lcom/apk/sg0;-><init>([Ljava/lang/String;Lcom/apk/md0;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/apk/ch0$do;->new(Lcom/apk/sg0;)Lcom/apk/ch0$do;

    if-eqz p1, :cond_4

    .line 31
    iget p1, v1, Lcom/apk/ch0$do;->for:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    return-object v4

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_7
    :try_start_3
    iget-object p1, v0, Lcom/apk/gj0;->class:Ljava/io/IOException;

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Lcom/apk/mj0;

    iget-object v1, v0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/apk/mj0;-><init>(Lcom/apk/ti0;)V

    :goto_4
    throw p1

    :catchall_0
    move-exception p1

    .line 35
    iget-object v1, v0, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    invoke-virtual {v1}, Lcom/apk/gj0$for;->class()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public try()Lcom/apk/bi0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ej0;->new:Lcom/apk/bi0;

    return-object v0
.end method
