.class public final Lcom/apk/xi0$new$for;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xi0$new;->for(ZLcom/apk/lj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic case:Z

.field public final synthetic else:Lcom/apk/lj0;

.field public final synthetic try:Lcom/apk/xi0$new;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0$new;ZLcom/apk/lj0;)V
    .locals 0

    iput-object p5, p0, Lcom/apk/xi0$new$for;->try:Lcom/apk/xi0$new;

    iput-boolean p6, p0, Lcom/apk/xi0$new$for;->case:Z

    iput-object p7, p0, Lcom/apk/xi0$new$for;->else:Lcom/apk/lj0;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget-object v13, v1, Lcom/apk/xi0$new$for;->try:Lcom/apk/xi0$new;

    iget-boolean v9, v1, Lcom/apk/xi0$new$for;->case:Z

    iget-object v10, v1, Lcom/apk/xi0$new$for;->else:Lcom/apk/lj0;

    const/4 v0, 0x0

    if-eqz v13, :cond_7

    const-string v2, "settings"

    .line 2
    invoke-static {v10, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v14, Lcom/apk/pd0;

    invoke-direct {v14}, Lcom/apk/pd0;-><init>()V

    .line 4
    new-instance v15, Lcom/apk/qd0;

    invoke-direct {v15}, Lcom/apk/qd0;-><init>()V

    .line 5
    new-instance v12, Lcom/apk/qd0;

    invoke-direct {v12}, Lcom/apk/qd0;-><init>()V

    .line 6
    iget-object v2, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 7
    iget-object v11, v2, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    .line 8
    monitor-enter v11

    .line 9
    :try_start_0
    iget-object v8, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 10
    :try_start_1
    iget-object v2, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 11
    iget-object v2, v2, Lcom/apk/xi0;->public:Lcom/apk/lj0;

    if-eqz v9, :cond_0

    move-object v3, v10

    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Lcom/apk/lj0;

    invoke-direct {v3}, Lcom/apk/lj0;-><init>()V

    .line 13
    invoke-virtual {v3, v2}, Lcom/apk/lj0;->if(Lcom/apk/lj0;)V

    .line 14
    invoke-virtual {v3, v10}, Lcom/apk/lj0;->if(Lcom/apk/lj0;)V

    .line 15
    :goto_0
    iput-object v3, v12, Lcom/apk/qd0;->do:Ljava/lang/Object;

    .line 16
    invoke-virtual {v3}, Lcom/apk/lj0;->do()I

    move-result v3

    int-to-long v3, v3

    .line 17
    invoke-virtual {v2}, Lcom/apk/lj0;->do()I

    move-result v2

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, v14, Lcom/apk/pd0;->do:J

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    cmp-long v2, v3, v6

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 19
    iget-object v2, v2, Lcom/apk/xi0;->for:Ljava/util/Map;

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iget-object v2, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 22
    iget-object v2, v2, Lcom/apk/xi0;->for:Ljava/util/Map;

    .line 23
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v5, [Lcom/apk/gj0;

    .line 24
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, [Lcom/apk/gj0;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object v2, v0

    .line 25
    :goto_2
    iput-object v2, v15, Lcom/apk/qd0;->do:Ljava/lang/Object;

    .line 26
    iget-object v2, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    iget-object v3, v12, Lcom/apk/qd0;->do:Ljava/lang/Object;

    check-cast v3, Lcom/apk/lj0;

    if-eqz v2, :cond_6

    const-string v0, "<set-?>"

    .line 27
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object v3, v2, Lcom/apk/xi0;->public:Lcom/apk/lj0;

    .line 29
    iget-object v0, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 30
    iget-object v0, v0, Lcom/apk/xi0;->catch:Lcom/apk/rh0;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 32
    iget-object v3, v3, Lcom/apk/xi0;->new:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    .line 34
    new-instance v4, Lcom/apk/yi0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v18, v4

    move/from16 v4, v17

    const/16 v19, 0x0

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object v7, v13

    move-object/from16 v16, v8

    move-object v8, v12

    move-object/from16 v17, v11

    move-object v11, v14

    move-object v1, v12

    move-object v12, v15

    :try_start_2
    invoke-direct/range {v2 .. v12}, Lcom/apk/yi0;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0$new;Lcom/apk/qd0;ZLcom/apk/lj0;Lcom/apk/pd0;Lcom/apk/qd0;)V

    move-object/from16 v2, v18

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 36
    :try_start_4
    iget-object v0, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 37
    iget-object v0, v0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    .line 38
    iget-object v1, v1, Lcom/apk/qd0;->do:Ljava/lang/Object;

    check-cast v1, Lcom/apk/lj0;

    invoke-virtual {v0, v1}, Lcom/apk/hj0;->for(Lcom/apk/lj0;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    :try_start_5
    iget-object v1, v13, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 40
    sget-object v2, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {v1, v2, v2, v0}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 41
    :goto_3
    monitor-exit v17

    .line 42
    iget-object v0, v15, Lcom/apk/qd0;->do:Ljava/lang/Object;

    check-cast v0, [Lcom/apk/gj0;

    if-eqz v0, :cond_5

    .line 43
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_5

    aget-object v2, v0, v5

    .line 44
    monitor-enter v2

    .line 45
    :try_start_6
    iget-wide v6, v14, Lcom/apk/pd0;->do:J

    .line 46
    iget-wide v8, v2, Lcom/apk/gj0;->new:J

    add-long/2addr v8, v6

    iput-wide v8, v2, Lcom/apk/gj0;->new:J

    cmp-long v8, v6, v3

    if-lez v8, :cond_4

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    :cond_4
    monitor-exit v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_6
    move-object/from16 v16, v8

    move-object/from16 v17, v11

    .line 49
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v11

    .line 50
    :goto_5
    :try_start_8
    monitor-exit v16

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v17, v11

    .line 51
    :goto_6
    monitor-exit v17

    throw v0

    .line 52
    :cond_7
    throw v0
.end method
