.class public final Lcom/apk/wh0;
.super Ljava/lang/Object;
.source "ExchangeFinder.kt"


# instance fields
.field public final break:Lcom/apk/og0;

.field public case:Lcom/apk/fh0;

.field public do:Lcom/apk/fi0$do;

.field public final else:Lcom/apk/ci0;

.field public for:I

.field public final goto:Lcom/apk/uf0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public if:Lcom/apk/fi0;

.field public new:I

.field public final this:Lcom/apk/xh0;

.field public try:I


# direct methods
.method public constructor <init>(Lcom/apk/ci0;Lcom/apk/uf0;Lcom/apk/xh0;Lcom/apk/og0;)V
    .locals 1
    .param p1    # Lcom/apk/ci0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/xh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/og0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/wh0;->else:Lcom/apk/ci0;

    iput-object p2, p0, Lcom/apk/wh0;->goto:Lcom/apk/uf0;

    iput-object p3, p0, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    iput-object p4, p0, Lcom/apk/wh0;->break:Lcom/apk/og0;

    return-void
.end method


# virtual methods
.method public final do(IIIIZZ)Lcom/apk/bi0;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 2
    iget-boolean v0, v0, Lcom/apk/xh0;->const:Z

    if-nez v0, :cond_26

    .line 3
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 4
    iget-object v2, v0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-boolean v5, v2, Lcom/apk/bi0;->this:Z

    if-nez v5, :cond_1

    .line 7
    iget-object v5, v2, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 8
    iget-object v5, v5, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 9
    iget-object v5, v5, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 10
    invoke-virtual {p0, v5}, Lcom/apk/wh0;->if(Lcom/apk/tg0;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v3

    goto :goto_2

    .line 11
    :cond_1
    :goto_1
    iget-object v5, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v5}, Lcom/apk/xh0;->class()Ljava/net/Socket;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_2
    monitor-exit v2

    .line 13
    iget-object v6, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 14
    iget-object v6, v6, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const-string v0, "Check failed."

    .line 15
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eqz v5, :cond_5

    .line 16
    invoke-static {v5}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    .line 17
    :cond_5
    iget-object v5, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    iget-object v6, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    if-eqz v5, :cond_6

    const-string v5, "call"

    .line 18
    invoke-static {v6, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "connection"

    invoke-static {v2, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    throw v3

    :catchall_0
    move-exception v0

    .line 19
    monitor-exit v2

    throw v0

    .line 20
    :cond_7
    :goto_3
    iput v0, v1, Lcom/apk/wh0;->for:I

    .line 21
    iput v0, v1, Lcom/apk/wh0;->new:I

    .line 22
    iput v0, v1, Lcom/apk/wh0;->try:I

    .line 23
    iget-object v2, v1, Lcom/apk/wh0;->else:Lcom/apk/ci0;

    iget-object v5, v1, Lcom/apk/wh0;->goto:Lcom/apk/uf0;

    iget-object v6, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v2, v5, v6, v3, v0}, Lcom/apk/ci0;->do(Lcom/apk/uf0;Lcom/apk/xh0;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 25
    iget-object v2, v0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    .line 26
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 27
    iget-object v0, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    iget-object v3, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v0, v3, v2}, Lcom/apk/og0;->do(Lcom/apk/zf0;Lcom/apk/fg0;)V

    :goto_4
    move/from16 v0, p6

    goto/16 :goto_e

    .line 28
    :cond_8
    iget-object v2, v1, Lcom/apk/wh0;->case:Lcom/apk/fh0;

    if-eqz v2, :cond_9

    .line 29
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 30
    iput-object v3, v1, Lcom/apk/wh0;->case:Lcom/apk/fh0;

    goto :goto_5

    .line 31
    :cond_9
    iget-object v2, v1, Lcom/apk/wh0;->do:Lcom/apk/fi0$do;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/apk/fi0$do;->do()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 32
    iget-object v0, v1, Lcom/apk/wh0;->do:Lcom/apk/fi0$do;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/apk/fi0$do;->if()Lcom/apk/fh0;

    move-result-object v2

    :goto_5
    move-object v5, v3

    goto/16 :goto_d

    .line 33
    :cond_a
    iget-object v2, v1, Lcom/apk/wh0;->if:Lcom/apk/fi0;

    if-nez v2, :cond_b

    .line 34
    new-instance v2, Lcom/apk/fi0;

    iget-object v5, v1, Lcom/apk/wh0;->goto:Lcom/apk/uf0;

    iget-object v6, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 35
    iget-object v7, v6, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 36
    iget-object v7, v7, Lcom/apk/xg0;->private:Lcom/apk/di0;

    .line 37
    iget-object v8, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    invoke-direct {v2, v5, v7, v6, v8}, Lcom/apk/fi0;-><init>(Lcom/apk/uf0;Lcom/apk/di0;Lcom/apk/zf0;Lcom/apk/og0;)V

    .line 38
    iput-object v2, v1, Lcom/apk/wh0;->if:Lcom/apk/fi0;

    .line 39
    :cond_b
    invoke-virtual {v2}, Lcom/apk/fi0;->do()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :cond_c
    invoke-virtual {v2}, Lcom/apk/fi0;->if()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 42
    invoke-virtual {v2}, Lcom/apk/fi0;->if()Z

    move-result v6

    const-string v7, "No route to "

    if-eqz v6, :cond_19

    .line 43
    iget-object v6, v2, Lcom/apk/fi0;->do:Ljava/util/List;

    iget v8, v2, Lcom/apk/fi0;->if:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lcom/apk/fi0;->if:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v8, v2, Lcom/apk/fi0;->for:Ljava/util/List;

    .line 46
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_10

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_d

    goto :goto_7

    .line 47
    :cond_d
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    .line 48
    instance-of v10, v9, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_f

    .line 49
    check-cast v9, Ljava/net/InetSocketAddress;

    const-string v10, "$this$socketHost"

    .line 50
    invoke-static {v9, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 52
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "address.hostAddress"

    invoke-static {v10, v11}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 53
    :cond_e
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hostName"

    invoke-static {v10, v11}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :goto_6
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    goto :goto_8

    :cond_f
    const-string v0, "Proxy.address() is not an InetSocketAddress: "

    .line 55
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_10
    :goto_7
    iget-object v9, v2, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    .line 58
    iget-object v9, v9, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 59
    iget-object v10, v9, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 60
    iget v9, v9, Lcom/apk/tg0;->case:I

    :goto_8
    const v11, 0xffff

    if-gt v4, v9, :cond_18

    if-lt v11, v9, :cond_18

    .line 61
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v7, v11, :cond_11

    .line 62
    invoke-static {v10, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 63
    :cond_11
    iget-object v7, v2, Lcom/apk/fi0;->goto:Lcom/apk/og0;

    iget-object v11, v2, Lcom/apk/fi0;->else:Lcom/apk/zf0;

    if-eqz v7, :cond_17

    const-string v7, "call"

    .line 64
    invoke-static {v11, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "domainName"

    invoke-static {v10, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v12, v2, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    .line 66
    iget-object v12, v12, Lcom/apk/uf0;->new:Lcom/apk/ng0;

    .line 67
    invoke-interface {v12, v10}, Lcom/apk/ng0;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 68
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_16

    .line 69
    iget-object v13, v2, Lcom/apk/fi0;->goto:Lcom/apk/og0;

    iget-object v14, v2, Lcom/apk/fi0;->else:Lcom/apk/zf0;

    if-eqz v13, :cond_15

    .line 70
    invoke-static {v14, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "inetAddressList"

    invoke-static {v12, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 72
    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v10, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 73
    :cond_12
    :goto_a
    iget-object v7, v2, Lcom/apk/fi0;->for:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 74
    new-instance v9, Lcom/apk/fh0;

    iget-object v10, v2, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    invoke-direct {v9, v10, v6, v8}, Lcom/apk/fh0;-><init>(Lcom/apk/uf0;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 75
    iget-object v8, v2, Lcom/apk/fi0;->case:Lcom/apk/di0;

    .line 76
    monitor-enter v8

    :try_start_1
    const-string v10, "route"

    invoke-static {v9, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v10, v8, Lcom/apk/di0;->do:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    if-eqz v10, :cond_13

    .line 78
    iget-object v8, v2, Lcom/apk/fi0;->new:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 79
    :cond_13
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_1
    move-exception v0

    .line 80
    monitor-exit v8

    throw v0

    .line 81
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_c

    goto :goto_c

    .line 82
    :cond_15
    throw v3

    .line 83
    :cond_16
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    .line 84
    iget-object v2, v2, Lcom/apk/uf0;->new:Lcom/apk/ng0;

    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_17
    throw v3

    .line 87
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; port is out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_19
    new-instance v0, Ljava/net/SocketException;

    .line 89
    invoke-static {v7}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    .line 90
    iget-object v4, v4, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 91
    iget-object v4, v4, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; exhausted proxy configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/apk/fi0;->do:Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1a
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 95
    iget-object v6, v2, Lcom/apk/fi0;->new:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/apk/sb0;->new(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 96
    iget-object v2, v2, Lcom/apk/fi0;->new:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 97
    :cond_1b
    new-instance v2, Lcom/apk/fi0$do;

    invoke-direct {v2, v5}, Lcom/apk/fi0$do;-><init>(Ljava/util/List;)V

    .line 98
    iput-object v2, v1, Lcom/apk/wh0;->do:Lcom/apk/fi0$do;

    .line 99
    iget-object v5, v2, Lcom/apk/fi0$do;->if:Ljava/util/List;

    .line 100
    iget-object v6, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 101
    iget-boolean v6, v6, Lcom/apk/xh0;->const:Z

    if-nez v6, :cond_24

    .line 102
    iget-object v6, v1, Lcom/apk/wh0;->else:Lcom/apk/ci0;

    iget-object v7, v1, Lcom/apk/wh0;->goto:Lcom/apk/uf0;

    iget-object v8, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v6, v7, v8, v5, v0}, Lcom/apk/ci0;->do(Lcom/apk/uf0;Lcom/apk/xh0;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 104
    iget-object v2, v0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    .line 105
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 106
    iget-object v0, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    iget-object v3, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v0, v3, v2}, Lcom/apk/og0;->do(Lcom/apk/zf0;Lcom/apk/fg0;)V

    goto/16 :goto_4

    .line 107
    :cond_1c
    invoke-virtual {v2}, Lcom/apk/fi0$do;->if()Lcom/apk/fh0;

    move-result-object v2

    .line 108
    :goto_d
    new-instance v14, Lcom/apk/bi0;

    iget-object v0, v1, Lcom/apk/wh0;->else:Lcom/apk/ci0;

    invoke-direct {v14, v0, v2}, Lcom/apk/bi0;-><init>(Lcom/apk/ci0;Lcom/apk/fh0;)V

    .line 109
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 110
    iput-object v14, v0, Lcom/apk/xh0;->super:Lcom/apk/bi0;

    .line 111
    :try_start_2
    iget-object v12, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 112
    iget-object v13, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    move-object v6, v14

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 113
    invoke-virtual/range {v6 .. v13}, Lcom/apk/bi0;->new(IIIIZLcom/apk/zf0;Lcom/apk/og0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 114
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 115
    iput-object v3, v0, Lcom/apk/xh0;->super:Lcom/apk/bi0;

    .line 116
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 117
    iget-object v0, v0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 118
    iget-object v3, v0, Lcom/apk/xg0;->private:Lcom/apk/di0;

    .line 119
    iget-object v0, v14, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 120
    monitor-enter v3

    :try_start_3
    const-string v6, "route"

    invoke-static {v0, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v6, v3, Lcom/apk/di0;->do:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 122
    monitor-exit v3

    .line 123
    iget-object v0, v1, Lcom/apk/wh0;->else:Lcom/apk/ci0;

    iget-object v3, v1, Lcom/apk/wh0;->goto:Lcom/apk/uf0;

    iget-object v6, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v0, v3, v6, v5, v4}, Lcom/apk/ci0;->do(Lcom/apk/uf0;Lcom/apk/xh0;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 124
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 125
    iget-object v0, v0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    .line 126
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 127
    iput-object v2, v1, Lcom/apk/wh0;->case:Lcom/apk/fh0;

    .line 128
    iget-object v2, v14, Lcom/apk/bi0;->for:Ljava/net/Socket;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 129
    invoke-static {v2}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    .line 130
    iget-object v2, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    iget-object v3, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v2, v3, v0}, Lcom/apk/og0;->do(Lcom/apk/zf0;Lcom/apk/fg0;)V

    move-object v2, v0

    goto/16 :goto_4

    .line 131
    :cond_1d
    monitor-enter v14

    .line 132
    :try_start_4
    iget-object v0, v1, Lcom/apk/wh0;->else:Lcom/apk/ci0;

    invoke-virtual {v0, v14}, Lcom/apk/ci0;->for(Lcom/apk/bi0;)V

    .line 133
    iget-object v0, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v0, v14}, Lcom/apk/xh0;->if(Lcom/apk/bi0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 134
    monitor-exit v14

    .line 135
    iget-object v0, v1, Lcom/apk/wh0;->break:Lcom/apk/og0;

    iget-object v2, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    invoke-virtual {v0, v2, v14}, Lcom/apk/og0;->do(Lcom/apk/zf0;Lcom/apk/fg0;)V

    move/from16 v0, p6

    move-object v2, v14

    .line 136
    :goto_e
    invoke-virtual {v2, v0}, Lcom/apk/bi0;->break(Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object v2

    .line 137
    :cond_1e
    invoke-virtual {v2}, Lcom/apk/bi0;->const()V

    .line 138
    iget-object v2, v1, Lcom/apk/wh0;->case:Lcom/apk/fh0;

    if-eqz v2, :cond_1f

    goto/16 :goto_0

    .line 139
    :cond_1f
    iget-object v2, v1, Lcom/apk/wh0;->do:Lcom/apk/fi0$do;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/apk/fi0$do;->do()Z

    move-result v2

    goto :goto_f

    :cond_20
    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_21

    goto/16 :goto_0

    .line 140
    :cond_21
    iget-object v2, v1, Lcom/apk/wh0;->if:Lcom/apk/fi0;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/apk/fi0;->do()Z

    move-result v4

    :cond_22
    if-eqz v4, :cond_23

    goto/16 :goto_0

    .line 141
    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v2, "exhausted all routes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 142
    monitor-exit v14

    throw v0

    :catchall_3
    move-exception v0

    .line 143
    monitor-exit v3

    throw v0

    :catchall_4
    move-exception v0

    .line 144
    iget-object v2, v1, Lcom/apk/wh0;->this:Lcom/apk/xh0;

    .line 145
    iput-object v3, v2, Lcom/apk/xh0;->super:Lcom/apk/bi0;

    .line 146
    throw v0

    .line 147
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 149
    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final for(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/apk/wh0;->case:Lcom/apk/fh0;

    .line 2
    instance-of v0, p1, Lcom/apk/mj0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/apk/mj0;

    iget-object v0, v0, Lcom/apk/mj0;->do:Lcom/apk/ti0;

    sget-object v1, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lcom/apk/wh0;->for:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apk/wh0;->for:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Lcom/apk/si0;

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lcom/apk/wh0;->new:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apk/wh0;->new:I

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/apk/wh0;->try:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apk/wh0;->try:I

    :goto_0
    return-void
.end method

.method public final if(Lcom/apk/tg0;)Z
    .locals 3
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/wh0;->goto:Lcom/apk/uf0;

    .line 2
    iget-object v0, v0, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 3
    iget v1, p1, Lcom/apk/tg0;->case:I

    iget v2, v0, Lcom/apk/tg0;->case:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/apk/tg0;->try:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
