.class public final Lcom/apk/hi0;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lcom/apk/ug0;


# instance fields
.field public final do:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/apk/hi0;->do:Z

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ug0$do;)Lcom/apk/ch0;
    .locals 27
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

    move-object/from16 v0, p1

    const-string v1, "call"

    const-string v2, "chain"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast v0, Lcom/apk/mi0;

    .line 2
    iget-object v2, v0, Lcom/apk/mi0;->try:Lcom/apk/vh0;

    .line 3
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lcom/apk/mi0;->case:Lcom/apk/zg0;

    .line 5
    iget-object v3, v0, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "request"

    .line 7
    invoke-static {v0, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v7, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v8, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    const/4 v9, 0x0

    if-eqz v7, :cond_1a

    .line 9
    invoke-static {v8, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v7, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v7, v0}, Lcom/apk/ji0;->if(Lcom/apk/zg0;)V

    .line 11
    iget-object v7, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v8, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz v7, :cond_19

    .line 12
    invoke-static {v8, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 13
    iget-object v6, v0, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 14
    invoke-static {v6}, Lcom/apk/li0;->do(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    const-string v6, "Expect"

    .line 15
    invoke-virtual {v0, v6}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "100-continue"

    invoke-static {v10, v6, v8}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 16
    :try_start_1
    iget-object v6, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v6}, Lcom/apk/ji0;->case()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    invoke-virtual {v2, v8}, Lcom/apk/vh0;->for(Z)Lcom/apk/ch0$do;

    move-result-object v6

    .line 18
    invoke-virtual {v2}, Lcom/apk/vh0;->new()V

    const/4 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    iget-object v1, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v3, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v1, v3, v0}, Lcom/apk/og0;->if(Lcom/apk/zf0;Ljava/io/IOException;)V

    .line 20
    invoke-virtual {v2, v0}, Lcom/apk/vh0;->try(Ljava/io/IOException;)V

    .line 21
    throw v0

    :cond_0
    const/4 v10, 0x1

    move-object v6, v9

    :goto_0
    if-nez v6, :cond_1

    .line 22
    invoke-virtual {v2, v0, v7}, Lcom/apk/vh0;->if(Lcom/apk/zg0;Z)Lcom/apk/jl0;

    move-result-object v8

    invoke-static {v8}, Lcom/apk/sb0;->catch(Lcom/apk/jl0;)Lcom/apk/sk0;

    move-result-object v8

    .line 23
    invoke-virtual {v3, v8}, Lcom/apk/bh0;->for(Lcom/apk/sk0;)V

    .line 24
    check-cast v8, Lcom/apk/el0;

    invoke-virtual {v8}, Lcom/apk/el0;->close()V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v3, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v3, v2, v8, v7, v9}, Lcom/apk/xh0;->this(Lcom/apk/vh0;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 26
    iget-object v3, v2, Lcom/apk/vh0;->if:Lcom/apk/bi0;

    .line 27
    invoke-virtual {v3}, Lcom/apk/bi0;->catch()Z

    move-result v3

    if-nez v3, :cond_3

    .line 28
    iget-object v3, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v3}, Lcom/apk/ji0;->try()Lcom/apk/bi0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/bi0;->const()V

    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v3, v2, v8, v7, v9}, Lcom/apk/xh0;->this(Lcom/apk/vh0;ZZLjava/io/IOException;)Ljava/io/IOException;

    const/4 v10, 0x1

    move-object v6, v9

    .line 30
    :cond_3
    :goto_1
    :try_start_2
    iget-object v3, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v3}, Lcom/apk/ji0;->do()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_4

    .line 31
    invoke-virtual {v2, v7}, Lcom/apk/vh0;->for(Z)Lcom/apk/ch0$do;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    .line 32
    invoke-virtual {v2}, Lcom/apk/vh0;->new()V

    const/4 v10, 0x0

    .line 33
    :cond_4
    invoke-virtual {v6, v0}, Lcom/apk/ch0$do;->else(Lcom/apk/zg0;)Lcom/apk/ch0$do;

    .line 34
    iget-object v3, v2, Lcom/apk/vh0;->if:Lcom/apk/bi0;

    .line 35
    iget-object v3, v3, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    .line 36
    iput-object v3, v6, Lcom/apk/ch0$do;->try:Lcom/apk/rg0;

    .line 37
    iput-wide v4, v6, Lcom/apk/ch0$do;->catch:J

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 39
    iput-wide v11, v6, Lcom/apk/ch0$do;->class:J

    .line 40
    invoke-virtual {v6}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v3

    .line 41
    iget v6, v3, Lcom/apk/ch0;->try:I

    const/16 v8, 0x64

    if-ne v6, v8, :cond_6

    .line 42
    invoke-virtual {v2, v7}, Lcom/apk/vh0;->for(Z)Lcom/apk/ch0$do;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    if-eqz v10, :cond_5

    .line 43
    invoke-virtual {v2}, Lcom/apk/vh0;->new()V

    .line 44
    :cond_5
    invoke-virtual {v3, v0}, Lcom/apk/ch0$do;->else(Lcom/apk/zg0;)Lcom/apk/ch0$do;

    .line 45
    iget-object v0, v2, Lcom/apk/vh0;->if:Lcom/apk/bi0;

    .line 46
    iget-object v0, v0, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    .line 47
    iput-object v0, v3, Lcom/apk/ch0$do;->try:Lcom/apk/rg0;

    .line 48
    iput-wide v4, v3, Lcom/apk/ch0$do;->catch:J

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    iput-wide v4, v3, Lcom/apk/ch0$do;->class:J

    .line 51
    invoke-virtual {v3}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v3

    .line 52
    iget v6, v3, Lcom/apk/ch0;->try:I

    :cond_6
    const-string v0, "response"

    .line 53
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v4, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v5, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz v4, :cond_18

    .line 55
    invoke-static {v5, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 56
    iget-boolean v4, v1, Lcom/apk/hi0;->do:Z

    const-string v5, "message == null"

    const-string v7, "protocol == null"

    const-string v8, "request == null"

    const-string v9, "code < 0: "

    if-eqz v4, :cond_c

    const/16 v4, 0x65

    if-ne v6, v4, :cond_c

    .line 57
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v11, v3, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 59
    iget-object v12, v3, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    .line 60
    iget v14, v3, Lcom/apk/ch0;->try:I

    .line 61
    iget-object v13, v3, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 62
    iget-object v15, v3, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    .line 63
    iget-object v0, v3, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 64
    invoke-virtual {v0}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object v0

    .line 65
    iget-object v4, v3, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    .line 66
    iget-object v10, v3, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    .line 67
    iget-object v1, v3, Lcom/apk/ch0;->catch:Lcom/apk/ch0;

    move-object/from16 p1, v8

    move-object/from16 v16, v9

    .line 68
    iget-wide v8, v3, Lcom/apk/ch0;->class:J

    move/from16 v26, v6

    move-object/from16 v17, v7

    .line 69
    iget-wide v6, v3, Lcom/apk/ch0;->const:J

    .line 70
    iget-object v3, v3, Lcom/apk/ch0;->final:Lcom/apk/vh0;

    .line 71
    sget-object v18, Lcom/apk/jh0;->for:Lcom/apk/dh0;

    if-ltz v14, :cond_7

    const/16 v19, 0x1

    goto :goto_2

    :cond_7
    const/16 v19, 0x0

    :goto_2
    if-eqz v19, :cond_b

    if-eqz v11, :cond_a

    if-eqz v12, :cond_9

    if-eqz v13, :cond_8

    .line 72
    invoke-virtual {v0}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v16

    .line 73
    new-instance v0, Lcom/apk/ch0;

    move-object v5, v10

    move-object v10, v0

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v1

    move-wide/from16 v21, v8

    move-wide/from16 v23, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lcom/apk/ch0;-><init>(Lcom/apk/zg0;Lcom/apk/yg0;Ljava/lang/String;ILcom/apk/rg0;Lcom/apk/sg0;Lcom/apk/dh0;Lcom/apk/ch0;Lcom/apk/ch0;Lcom/apk/ch0;JJLcom/apk/vh0;)V

    goto/16 :goto_4

    .line 74
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v1, v16

    .line 77
    invoke-static {v1, v14}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move/from16 v26, v6

    move-object/from16 v17, v7

    move-object/from16 p1, v8

    move-object v1, v9

    .line 78
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v4, v3, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 80
    iget-object v6, v3, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    .line 81
    iget v7, v3, Lcom/apk/ch0;->try:I

    .line 82
    iget-object v8, v3, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 83
    iget-object v9, v3, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    .line 84
    iget-object v10, v3, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 85
    invoke-virtual {v10}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object v10

    .line 86
    iget-object v11, v3, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    .line 87
    iget-object v12, v3, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    .line 88
    iget-object v13, v3, Lcom/apk/ch0;->catch:Lcom/apk/ch0;

    .line 89
    iget-wide v14, v3, Lcom/apk/ch0;->class:J

    move-wide/from16 v18, v14

    .line 90
    iget-wide v14, v3, Lcom/apk/ch0;->const:J

    move-object/from16 v16, v1

    .line 91
    iget-object v1, v3, Lcom/apk/ch0;->final:Lcom/apk/vh0;

    .line 92
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3
    const-string v0, "Content-Type"

    move-wide/from16 v20, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 93
    invoke-static {v3, v0, v15, v14}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v14, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v14, v3}, Lcom/apk/ji0;->else(Lcom/apk/ch0;)J

    move-result-wide v14

    move-object/from16 v22, v5

    .line 95
    iget-object v5, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v5, v3}, Lcom/apk/ji0;->for(Lcom/apk/ch0;)Lcom/apk/ll0;

    move-result-object v3

    .line 96
    new-instance v5, Lcom/apk/vh0$if;

    invoke-direct {v5, v2, v3, v14, v15}, Lcom/apk/vh0$if;-><init>(Lcom/apk/vh0;Lcom/apk/ll0;J)V

    .line 97
    new-instance v3, Lcom/apk/ni0;

    invoke-static {v5}, Lcom/apk/sb0;->class(Lcom/apk/ll0;)Lcom/apk/tk0;

    move-result-object v5

    invoke-direct {v3, v0, v14, v15, v5}, Lcom/apk/ni0;-><init>(Ljava/lang/String;JLcom/apk/tk0;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-ltz v7, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_17

    if-eqz v4, :cond_16

    if-eqz v6, :cond_15

    if-eqz v8, :cond_14

    .line 98
    invoke-virtual {v10}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v0

    .line 99
    new-instance v22, Lcom/apk/ch0;

    move-object v10, v3

    move-object/from16 v3, v22

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    move-object v9, v0

    move-wide/from16 v16, v20

    move-wide/from16 v14, v18

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Lcom/apk/ch0;-><init>(Lcom/apk/zg0;Lcom/apk/yg0;Ljava/lang/String;ILcom/apk/rg0;Lcom/apk/sg0;Lcom/apk/dh0;Lcom/apk/ch0;Lcom/apk/ch0;Lcom/apk/ch0;JJLcom/apk/vh0;)V

    move-object/from16 v0, v22

    .line 100
    :goto_4
    iget-object v1, v0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    const-string v3, "Connection"

    .line 101
    invoke-virtual {v1, v3}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x2

    const/4 v6, 0x0

    .line 102
    invoke-static {v0, v3, v6, v1}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 103
    :cond_e
    iget-object v1, v2, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v1}, Lcom/apk/ji0;->try()Lcom/apk/bi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/bi0;->const()V

    :cond_f
    const/16 v1, 0xcc

    move/from16 v6, v26

    if-eq v6, v1, :cond_10

    const/16 v1, 0xcd

    if-ne v6, v1, :cond_13

    .line 104
    :cond_10
    iget-object v1, v0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v1, :cond_11

    .line 105
    invoke-virtual {v1}, Lcom/apk/dh0;->throw()J

    move-result-wide v1

    goto :goto_5

    :cond_11
    const-wide/16 v1, -0x1

    :goto_5
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    .line 106
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "HTTP "

    const-string v3, " had non-zero Content-Length: "

    .line 107
    invoke-static {v2, v6, v3}, Lcom/apk/goto;->throw(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    iget-object v0, v0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v0, :cond_12

    .line 109
    invoke-virtual {v0}, Lcom/apk/dh0;->throw()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    return-object v0

    .line 111
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v0, v16

    .line 114
    invoke-static {v0, v7}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 115
    iget-object v1, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v3, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v1, v3, v0}, Lcom/apk/og0;->for(Lcom/apk/zf0;Ljava/io/IOException;)V

    .line 116
    invoke-virtual {v2, v0}, Lcom/apk/vh0;->try(Ljava/io/IOException;)V

    .line 117
    throw v0

    .line 118
    :cond_18
    throw v9

    :catch_2
    move-exception v0

    .line 119
    iget-object v1, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v3, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v1, v3, v0}, Lcom/apk/og0;->if(Lcom/apk/zf0;Ljava/io/IOException;)V

    .line 120
    invoke-virtual {v2, v0}, Lcom/apk/vh0;->try(Ljava/io/IOException;)V

    .line 121
    throw v0

    .line 122
    :cond_19
    :try_start_4
    throw v9

    .line 123
    :cond_1a
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    .line 124
    iget-object v1, v2, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v3, v2, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v1, v3, v0}, Lcom/apk/og0;->if(Lcom/apk/zf0;Ljava/io/IOException;)V

    .line 125
    invoke-virtual {v2, v0}, Lcom/apk/vh0;->try(Ljava/io/IOException;)V

    .line 126
    throw v0
.end method
