.class public final Lcom/apk/gi0;
.super Ljava/lang/Object;
.source "BridgeInterceptor.kt"

# interfaces
.implements Lcom/apk/ug0;


# instance fields
.field public final do:Lcom/apk/kg0;


# direct methods
.method public constructor <init>(Lcom/apk/kg0;)V
    .locals 1
    .param p1    # Lcom/apk/kg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/gi0;->do:Lcom/apk/kg0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ug0$do;)Lcom/apk/ch0;
    .locals 17
    .param p1    # Lcom/apk/ug0$do;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "chain"

    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->for()Lcom/apk/zg0;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 2
    new-instance v4, Lcom/apk/zg0$do;

    invoke-direct {v4, v2}, Lcom/apk/zg0$do;-><init>(Lcom/apk/zg0;)V

    .line 3
    iget-object v5, v2, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    const-string v6, "Content-Type"

    const-wide/16 v7, -0x1

    const-string v9, "Content-Length"

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v5}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 5
    iget-object v10, v10, Lcom/apk/vg0;->do:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v6, v10}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 7
    :cond_0
    invoke-virtual {v5}, Lcom/apk/bh0;->do()J

    move-result-wide v10

    const-string v5, "Transfer-Encoding"

    cmp-long v12, v10, v7

    if-eqz v12, :cond_1

    .line 8
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 9
    invoke-virtual {v4, v5}, Lcom/apk/zg0$do;->case(Ljava/lang/String;)Lcom/apk/zg0$do;

    goto :goto_0

    :cond_1
    const-string v10, "chunked"

    .line 10
    invoke-virtual {v4, v5, v10}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 11
    invoke-virtual {v4, v9}, Lcom/apk/zg0$do;->case(Ljava/lang/String;)Lcom/apk/zg0$do;

    :cond_2
    :goto_0
    const-string v5, "Host"

    .line 12
    invoke-virtual {v2, v5}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_3

    .line 13
    iget-object v10, v2, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 14
    invoke-static {v10, v11}, Lcom/apk/jh0;->abstract(Lcom/apk/tg0;Z)Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-virtual {v4, v5, v10}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    :cond_3
    const-string v5, "Connection"

    .line 16
    invoke-virtual {v2, v5}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v10, "Keep-Alive"

    .line 17
    invoke-virtual {v4, v5, v10}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    :cond_4
    const-string v5, "Accept-Encoding"

    .line 18
    invoke-virtual {v2, v5}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "gzip"

    const/4 v13, 0x1

    if-nez v10, :cond_5

    const-string v10, "Range"

    invoke-virtual {v2, v10}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 19
    invoke-virtual {v4, v5, v12}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 20
    :goto_1
    iget-object v10, v0, Lcom/apk/gi0;->do:Lcom/apk/kg0;

    .line 21
    iget-object v14, v2, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 22
    invoke-interface {v10, v14}, Lcom/apk/kg0;->if(Lcom/apk/tg0;)Ljava/util/List;

    move-result-object v10

    .line 23
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v13

    if-eqz v14, :cond_9

    .line 24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v11, 0x1

    if-ltz v11, :cond_7

    check-cast v15, Lcom/apk/ig0;

    if-lez v11, :cond_6

    const-string v11, "; "

    .line 26
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_6
    iget-object v11, v15, Lcom/apk/ig0;->do:Ljava/lang/String;

    .line 28
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3d

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    iget-object v11, v15, Lcom/apk/ig0;->if:Ljava/lang/String;

    .line 30
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v16

    goto :goto_2

    .line 31
    :cond_7
    invoke-static {}, Lcom/apk/sb0;->n()V

    throw v3

    .line 32
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v10, v11}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "Cookie"

    .line 33
    invoke-virtual {v4, v11, v10}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    :cond_9
    const-string v10, "User-Agent"

    .line 34
    invoke-virtual {v2, v10}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    const-string v11, "okhttp/4.9.3"

    .line 35
    invoke-virtual {v4, v10, v11}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 36
    :cond_a
    invoke-virtual {v4}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/apk/ug0$do;->do(Lcom/apk/zg0;)Lcom/apk/ch0;

    move-result-object v1

    .line 37
    iget-object v4, v0, Lcom/apk/gi0;->do:Lcom/apk/kg0;

    .line 38
    iget-object v10, v2, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 39
    iget-object v11, v1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 40
    invoke-static {v4, v10, v11}, Lcom/apk/ki0;->case(Lcom/apk/kg0;Lcom/apk/tg0;Lcom/apk/sg0;)V

    .line 41
    new-instance v4, Lcom/apk/ch0$do;

    invoke-direct {v4, v1}, Lcom/apk/ch0$do;-><init>(Lcom/apk/ch0;)V

    .line 42
    invoke-virtual {v4, v2}, Lcom/apk/ch0$do;->else(Lcom/apk/zg0;)Lcom/apk/ch0$do;

    if-eqz v5, :cond_b

    const-string v2, "Content-Encoding"

    const/4 v5, 0x2

    .line 43
    invoke-static {v1, v2, v3, v5}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10, v13}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 44
    invoke-static {v1}, Lcom/apk/ki0;->for(Lcom/apk/ch0;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 45
    iget-object v10, v1, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v10, :cond_b

    .line 46
    new-instance v11, Lcom/apk/yk0;

    invoke-virtual {v10}, Lcom/apk/dh0;->extends()Lcom/apk/tk0;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/apk/yk0;-><init>(Lcom/apk/ll0;)V

    .line 47
    iget-object v10, v1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 48
    invoke-virtual {v10}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object v10

    .line 49
    invoke-virtual {v10, v2}, Lcom/apk/sg0$do;->try(Ljava/lang/String;)Lcom/apk/sg0$do;

    .line 50
    invoke-virtual {v10, v9}, Lcom/apk/sg0$do;->try(Ljava/lang/String;)Lcom/apk/sg0$do;

    .line 51
    invoke-virtual {v10}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v2

    .line 52
    invoke-virtual {v4, v2}, Lcom/apk/ch0$do;->new(Lcom/apk/sg0;)Lcom/apk/ch0$do;

    .line 53
    invoke-static {v1, v6, v3, v5}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/apk/ni0;

    invoke-static {v11}, Lcom/apk/sb0;->class(Lcom/apk/ll0;)Lcom/apk/tk0;

    move-result-object v3

    invoke-direct {v2, v1, v7, v8, v3}, Lcom/apk/ni0;-><init>(Ljava/lang/String;JLcom/apk/tk0;)V

    .line 55
    iput-object v2, v4, Lcom/apk/ch0$do;->else:Lcom/apk/dh0;

    .line 56
    :cond_b
    invoke-virtual {v4}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v1

    return-object v1

    .line 57
    :cond_c
    throw v3
.end method
