.class public final Lcom/apk/mh0;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lcom/apk/ug0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/mh0$do;
    }
.end annotation


# static fields
.field public static final if:Lcom/apk/mh0$do;


# instance fields
.field public final do:Lcom/apk/xf0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/mh0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/mh0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    return-void
.end method

.method public constructor <init>(Lcom/apk/xf0;)V
    .locals 0
    .param p1    # Lcom/apk/xf0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/mh0;->do:Lcom/apk/xf0;

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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->call()Lcom/apk/zf0;

    move-result-object v2

    .line 2
    iget-object v3, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    const/4 v4, 0x0

    if-nez v3, :cond_22

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->for()Lcom/apk/zg0;

    move-result-object v3

    const-string v5, "request"

    .line 5
    invoke-static {v3, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Lcom/apk/nh0;

    invoke-direct {v5, v3, v4}, Lcom/apk/nh0;-><init>(Lcom/apk/zg0;Lcom/apk/ch0;)V

    .line 7
    iget-object v6, v5, Lcom/apk/nh0;->do:Lcom/apk/zg0;

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/apk/zg0;->do()Lcom/apk/yf0;

    move-result-object v3

    .line 9
    iget-boolean v3, v3, Lcom/apk/yf0;->break:Z

    if-eqz v3, :cond_0

    .line 10
    new-instance v5, Lcom/apk/nh0;

    invoke-direct {v5, v4, v4}, Lcom/apk/nh0;-><init>(Lcom/apk/zg0;Lcom/apk/ch0;)V

    .line 11
    :cond_0
    iget-object v3, v5, Lcom/apk/nh0;->do:Lcom/apk/zg0;

    .line 12
    iget-object v6, v5, Lcom/apk/nh0;->if:Lcom/apk/ch0;

    .line 13
    iget-object v7, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 14
    monitor-enter v7

    :try_start_0
    const-string v9, "cacheStrategy"

    invoke-static {v5, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget v9, v7, Lcom/apk/xf0;->for:I

    add-int/2addr v9, v8

    iput v9, v7, Lcom/apk/xf0;->for:I

    .line 16
    iget-object v9, v5, Lcom/apk/nh0;->do:Lcom/apk/zg0;

    if-eqz v9, :cond_1

    .line 17
    iget v5, v7, Lcom/apk/xf0;->do:I

    add-int/2addr v5, v8

    iput v5, v7, Lcom/apk/xf0;->do:I

    goto :goto_0

    .line 18
    :cond_1
    iget-object v5, v5, Lcom/apk/nh0;->if:Lcom/apk/ch0;

    if-eqz v5, :cond_2

    .line 19
    iget v5, v7, Lcom/apk/xf0;->if:I

    add-int/2addr v5, v8

    iput v5, v7, Lcom/apk/xf0;->if:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_2
    :goto_0
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 21
    :cond_3
    :goto_1
    instance-of v5, v2, Lcom/apk/xh0;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    check-cast v4, Lcom/apk/xh0;

    if-nez v3, :cond_5

    if-nez v6, :cond_5

    .line 22
    new-instance v3, Lcom/apk/ch0$do;

    invoke-direct {v3}, Lcom/apk/ch0$do;-><init>()V

    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->for()Lcom/apk/zg0;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/apk/ch0$do;->else(Lcom/apk/zg0;)Lcom/apk/ch0$do;

    .line 24
    sget-object v0, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    invoke-virtual {v3, v0}, Lcom/apk/ch0$do;->case(Lcom/apk/yg0;)Lcom/apk/ch0$do;

    const/16 v0, 0x1f8

    .line 25
    iput v0, v3, Lcom/apk/ch0$do;->for:I

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 26
    invoke-virtual {v3, v0}, Lcom/apk/ch0$do;->try(Ljava/lang/String;)Lcom/apk/ch0$do;

    .line 27
    sget-object v0, Lcom/apk/jh0;->for:Lcom/apk/dh0;

    .line 28
    iput-object v0, v3, Lcom/apk/ch0$do;->else:Lcom/apk/dh0;

    const-wide/16 v4, -0x1

    .line 29
    iput-wide v4, v3, Lcom/apk/ch0$do;->catch:J

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 31
    iput-wide v4, v3, Lcom/apk/ch0$do;->class:J

    .line 32
    invoke-virtual {v3}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v0

    const-string v3, "call"

    .line 33
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    if-nez v3, :cond_6

    .line 34
    invoke-static {v6}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lcom/apk/ch0$do;

    invoke-direct {v0, v6}, Lcom/apk/ch0$do;-><init>(Lcom/apk/ch0;)V

    .line 36
    sget-object v3, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    invoke-static {v3, v6}, Lcom/apk/mh0$do;->do(Lcom/apk/mh0$do;Lcom/apk/ch0;)Lcom/apk/ch0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/apk/ch0$do;->if(Lcom/apk/ch0;)Lcom/apk/ch0$do;

    .line 37
    invoke-virtual {v0}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v0

    const-string v3, "call"

    .line 38
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_6
    if-eqz v6, :cond_7

    const-string v4, "call"

    .line 39
    invoke-static {v2, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cachedResponse"

    invoke-static {v6, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_7
    iget-object v4, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    if-eqz v4, :cond_8

    const-string v4, "call"

    .line 41
    invoke-static {v2, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :cond_8
    :goto_3
    :try_start_1
    invoke-interface {v0, v3}, Lcom/apk/ug0$do;->do(Lcom/apk/zg0;)Lcom/apk/ch0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_14

    if-eqz v0, :cond_13

    .line 43
    iget v4, v0, Lcom/apk/ch0;->try:I

    const/16 v5, 0x130

    if-ne v4, v5, :cond_13

    .line 44
    new-instance v3, Lcom/apk/ch0$do;

    invoke-direct {v3, v6}, Lcom/apk/ch0$do;-><init>(Lcom/apk/ch0;)V

    .line 45
    sget-object v4, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    .line 46
    iget-object v5, v6, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    iget-object v7, v0, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-virtual {v5}, Lcom/apk/sg0;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    const-string v12, "value"

    const-string v13, "name"

    if-ge v11, v10, :cond_d

    .line 49
    invoke-virtual {v5, v11}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v14

    .line 50
    invoke-virtual {v5, v11}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v5

    const-string v5, "Warning"

    .line 51
    invoke-static {v5, v14, v8}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    const-string v8, "1"

    move/from16 v16, v10

    const/4 v10, 0x0

    invoke-static {v15, v8, v10, v5}, Lcom/apk/ie0;->static(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_9
    move/from16 v16, v10

    .line 52
    :cond_a
    invoke-virtual {v4, v14}, Lcom/apk/mh0$do;->if(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 53
    invoke-virtual {v4, v14}, Lcom/apk/mh0$do;->for(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 54
    invoke-virtual {v7, v14}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    .line 55
    :cond_b
    invoke-static {v14, v13}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v15}, Lcom/apk/ie0;->throws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    move-object/from16 v5, p1

    move/from16 v10, v16

    goto :goto_4

    .line 58
    :cond_d
    invoke-virtual {v7}, Lcom/apk/sg0;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_f

    .line 59
    invoke-virtual {v7, v8}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-virtual {v4, v10}, Lcom/apk/mh0$do;->if(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v4, v10}, Lcom/apk/mh0$do;->for(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 61
    invoke-virtual {v7, v8}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v11

    .line 62
    invoke-static {v10, v13}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v11}, Lcom/apk/ie0;->throws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 65
    :cond_f
    new-instance v4, Lcom/apk/sg0;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 66
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 67
    invoke-direct {v4, v5, v7}, Lcom/apk/sg0;-><init>([Ljava/lang/String;Lcom/apk/md0;)V

    .line 68
    invoke-virtual {v3, v4}, Lcom/apk/ch0$do;->new(Lcom/apk/sg0;)Lcom/apk/ch0$do;

    .line 69
    iget-wide v4, v0, Lcom/apk/ch0;->class:J

    .line 70
    iput-wide v4, v3, Lcom/apk/ch0$do;->catch:J

    .line 71
    iget-wide v4, v0, Lcom/apk/ch0;->const:J

    .line 72
    iput-wide v4, v3, Lcom/apk/ch0$do;->class:J

    .line 73
    sget-object v4, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    invoke-static {v4, v6}, Lcom/apk/mh0$do;->do(Lcom/apk/mh0$do;Lcom/apk/ch0;)Lcom/apk/ch0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/ch0$do;->if(Lcom/apk/ch0;)Lcom/apk/ch0$do;

    .line 74
    sget-object v4, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    invoke-static {v4, v0}, Lcom/apk/mh0$do;->do(Lcom/apk/mh0$do;Lcom/apk/ch0;)Lcom/apk/ch0;

    move-result-object v4

    const-string v5, "networkResponse"

    .line 75
    invoke-virtual {v3, v5, v4}, Lcom/apk/ch0$do;->for(Ljava/lang/String;Lcom/apk/ch0;)V

    .line 76
    iput-object v4, v3, Lcom/apk/ch0$do;->goto:Lcom/apk/ch0;

    .line 77
    invoke-virtual {v3}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v3

    .line 78
    iget-object v0, v0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    .line 79
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/apk/dh0;->close()V

    .line 80
    iget-object v4, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    invoke-static {v4}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 81
    monitor-enter v4

    .line 82
    :try_start_2
    iget v0, v4, Lcom/apk/xf0;->if:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/apk/xf0;->if:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    monitor-exit v4

    .line 84
    iget-object v0, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    if-eqz v0, :cond_11

    const-string v0, "cached"

    .line 85
    invoke-static {v6, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/apk/xf0$if;

    invoke-direct {v0, v3}, Lcom/apk/xf0$if;-><init>(Lcom/apk/ch0;)V

    .line 87
    iget-object v0, v6, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-nez v0, :cond_10

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    check-cast v0, Lcom/apk/xf0$do;

    .line 89
    iget-object v0, v0, Lcom/apk/xf0$do;->new:Lcom/apk/oh0$if;

    .line 90
    :try_start_3
    iget-object v4, v0, Lcom/apk/oh0$if;->for:Lcom/apk/oh0;

    iget-object v5, v0, Lcom/apk/oh0$if;->do:Ljava/lang/String;

    iget-wide v6, v0, Lcom/apk/oh0$if;->if:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/apk/oh0;->try(Ljava/lang/String;J)Lcom/apk/oh0$do;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    const-string v0, "call"

    .line 91
    invoke-static {v2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_11
    const/4 v0, 0x0

    .line 92
    throw v0

    :catchall_1
    move-exception v0

    .line 93
    monitor-exit v4

    throw v0

    .line 94
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v4, 0x0

    .line 95
    iget-object v5, v6, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v5, :cond_15

    .line 96
    invoke-static {v5}, Lcom/apk/jh0;->case(Ljava/io/Closeable;)V

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    .line 97
    :cond_15
    :goto_7
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 98
    new-instance v5, Lcom/apk/ch0$do;

    invoke-direct {v5, v0}, Lcom/apk/ch0$do;-><init>(Lcom/apk/ch0;)V

    .line 99
    sget-object v7, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    invoke-static {v7, v6}, Lcom/apk/mh0$do;->do(Lcom/apk/mh0$do;Lcom/apk/ch0;)Lcom/apk/ch0;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/apk/ch0$do;->if(Lcom/apk/ch0;)Lcom/apk/ch0$do;

    .line 100
    sget-object v7, Lcom/apk/mh0;->if:Lcom/apk/mh0$do;

    invoke-static {v7, v0}, Lcom/apk/mh0$do;->do(Lcom/apk/mh0$do;Lcom/apk/ch0;)Lcom/apk/ch0;

    move-result-object v0

    const-string v7, "networkResponse"

    .line 101
    invoke-virtual {v5, v7, v0}, Lcom/apk/ch0$do;->for(Ljava/lang/String;Lcom/apk/ch0;)V

    .line 102
    iput-object v0, v5, Lcom/apk/ch0$do;->goto:Lcom/apk/ch0;

    .line 103
    invoke-virtual {v5}, Lcom/apk/ch0$do;->do()Lcom/apk/ch0;

    move-result-object v0

    .line 104
    iget-object v5, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    if-eqz v5, :cond_21

    .line 105
    invoke-static {v0}, Lcom/apk/ki0;->for(Lcom/apk/ch0;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v0, v3}, Lcom/apk/nh0;->do(Lcom/apk/ch0;Lcom/apk/zg0;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 106
    iget-object v3, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    if-eqz v3, :cond_1c

    const-string v5, "response"

    .line 107
    invoke-static {v0, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v5, v0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 109
    iget-object v5, v5, Lcom/apk/zg0;->for:Ljava/lang/String;

    const-string v7, "method"

    .line 110
    invoke-static {v5, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "POST"

    .line 111
    invoke-static {v5, v7}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "PATCH"

    invoke-static {v5, v7}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "PUT"

    invoke-static {v5, v7}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "DELETE"

    invoke-static {v5, v7}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "MOVE"

    invoke-static {v5, v7}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    const/4 v4, 0x1

    :cond_17
    if-nez v4, :cond_1a

    const-string v3, "GET"

    .line 112
    invoke-static {v5, v3}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_18

    goto :goto_8

    :cond_18
    const-string v3, "$this$hasVaryAll"

    .line 113
    invoke-static {v0, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v3, v0, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 115
    invoke-static {v3}, Lcom/apk/xf0;->try(Lcom/apk/sg0;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_8

    .line 116
    :cond_19
    new-instance v3, Lcom/apk/xf0$if;

    invoke-direct {v3, v0}, Lcom/apk/xf0$if;-><init>(Lcom/apk/ch0;)V

    .line 117
    :try_start_4
    iget-object v3, v0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 118
    iget-object v3, v3, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    const-string v4, "url"

    .line 119
    invoke-static {v3, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v4, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    .line 121
    iget-object v3, v3, Lcom/apk/tg0;->this:Ljava/lang/String;

    .line 122
    invoke-virtual {v4, v3}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v3

    const-string v4, "MD5"

    .line 123
    invoke-virtual {v3, v4}, Lcom/apk/uk0;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/apk/uk0;->new()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x0

    .line 125
    throw v0

    .line 126
    :cond_1a
    :try_start_5
    iget-object v4, v0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 127
    invoke-virtual {v3, v4}, Lcom/apk/xf0;->for(Lcom/apk/zg0;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    throw v0

    :catch_1
    nop

    :goto_8
    if-eqz v6, :cond_1b

    const-string v3, "call"

    .line 128
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    .line 129
    throw v0

    .line 130
    :cond_1d
    iget-object v2, v3, Lcom/apk/zg0;->for:Ljava/lang/String;

    const-string v4, "method"

    .line 131
    invoke-static {v2, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "POST"

    .line 132
    invoke-static {v2, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "PATCH"

    invoke-static {v2, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "PUT"

    invoke-static {v2, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "DELETE"

    invoke-static {v2, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "MOVE"

    invoke-static {v2, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_9

    :cond_1e
    const/4 v2, 0x0

    goto :goto_a

    :cond_1f
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-nez v2, :cond_20

    goto :goto_b

    .line 133
    :cond_20
    :try_start_6
    iget-object v2, v1, Lcom/apk/mh0;->do:Lcom/apk/xf0;

    invoke-virtual {v2, v3}, Lcom/apk/xf0;->for(Lcom/apk/zg0;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v0, 0x0

    throw v0

    :catch_2
    :cond_21
    :goto_b
    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 134
    throw v2

    .line 135
    :cond_22
    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->for()Lcom/apk/zg0;

    move-result-object v0

    const-string v2, "request"

    .line 136
    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, v0, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    const-string v2, "url"

    .line 138
    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v2, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    .line 140
    iget-object v0, v0, Lcom/apk/tg0;->this:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v0}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    const-string v2, "MD5"

    .line 142
    invoke-virtual {v0, v2}, Lcom/apk/uk0;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/apk/uk0;->new()Ljava/lang/String;

    const/4 v0, 0x0

    .line 144
    throw v0
.end method
