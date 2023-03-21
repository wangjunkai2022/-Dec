.class public abstract Lcom/apk/my;
.super Lcom/apk/qy;
.source "BodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/apk/my;",
        ">",
        "Lcom/apk/qy<",
        "TT;TR;>;",
        "Ljava/lang/Object<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public import:Z

.field public transient super:Lcom/apk/vg0;

.field public throw:Ljava/lang/String;

.field public while:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/qy;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/my;->while:Z

    .line 3
    iput-boolean p1, p0, Lcom/apk/my;->import:Z

    return-void
.end method


# virtual methods
.method public const(Lcom/apk/bh0;)Lcom/apk/zg0$do;
    .locals 3

    :try_start_0
    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {p1}, Lcom/apk/bh0;->do()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    invoke-virtual {v1, v0, p1}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    new-instance p1, Lcom/apk/zg0$do;

    invoke-direct {p1}, Lcom/apk/zg0$do;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    invoke-static {p1, v0}, Lcom/apk/mu;->for(Lcom/apk/zg0$do;Lcom/apk/fy;)Lcom/apk/zg0$do;

    move-result-object p1

    return-object p1
.end method

.method public final(Lorg/json/JSONObject;)Lcom/apk/my;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/my;->throw:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/apk/gy;->for:Lcom/apk/vg0;

    iput-object p1, p0, Lcom/apk/my;->super:Lcom/apk/vg0;

    return-object p0
.end method

.method public goto()Lcom/apk/bh0;
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/apk/my;->import:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/apk/qy;->if:Ljava/lang/String;

    iget-object v2, v0, Lcom/apk/qy;->this:Lcom/apk/gy;

    iget-object v2, v2, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/apk/mu;->throw(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/apk/my;->throw:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/apk/my;->super:Lcom/apk/vg0;

    if-eqz v2, :cond_1

    .line 3
    sget-object v3, Lcom/apk/bh0;->do:Lcom/apk/bh0$do;

    const-string v4, "content"

    .line 4
    invoke-static {v1, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v1, v2}, Lcom/apk/bh0$do;->do(Ljava/lang/String;Lcom/apk/vg0;)Lcom/apk/bh0;

    move-result-object v1

    return-object v1

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/apk/qy;->this:Lcom/apk/gy;

    iget-boolean v2, v0, Lcom/apk/my;->while:Z

    .line 7
    iget-object v3, v1, Lcom/apk/gy;->if:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    const-string v4, "value"

    const-string v5, "name"

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v6, v1, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    .line 11
    iget-object v6, v1, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 13
    invoke-static {v14, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v18, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v26, 0x0

    const/16 v28, 0x53

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v27, 0x0

    const-string v22, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object/from16 v19, v14

    invoke-static/range {v18 .. v28}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v6, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/16 v16, 0x0

    const/16 v18, 0x53

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move/from16 v14, v16

    move-object/from16 v30, v15

    move-object v15, v2

    move/from16 v16, v18

    invoke-static/range {v6 .. v16}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v30

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v7

    move-object/from16 v14, v19

    goto :goto_0

    :cond_3
    move-object v7, v15

    .line 16
    new-instance v1, Lcom/apk/pg0;

    invoke-direct {v1, v3, v7}, Lcom/apk/pg0;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_3

    .line 17
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UUID.randomUUID().toString()"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "boundary"

    .line 18
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v3, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    invoke-virtual {v3, v2}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v2

    .line 20
    sget-object v3, Lcom/apk/wg0;->else:Lcom/apk/vg0;

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v6, Lcom/apk/wg0;->goto:Lcom/apk/vg0;

    const-string v7, "type"

    .line 23
    invoke-static {v6, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v7, v6, Lcom/apk/vg0;->if:Ljava/lang/String;

    const-string v8, "multipart"

    .line 25
    invoke-static {v7, v8}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 26
    iget-object v7, v1, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    const-string v8, "part"

    if-nez v7, :cond_6

    .line 27
    iget-object v7, v1, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 29
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 30
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 31
    invoke-static {v12, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v12, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v13, Lcom/apk/bh0;->do:Lcom/apk/bh0$do;

    const/4 v14, 0x0

    .line 34
    invoke-virtual {v13, v11, v14}, Lcom/apk/bh0$do;->do(Ljava/lang/String;Lcom/apk/vg0;)Lcom/apk/bh0;

    move-result-object v11

    .line 35
    invoke-static {v12, v14, v11}, Lcom/apk/wg0$if;->do(Ljava/lang/String;Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/wg0$if;

    move-result-object v11

    .line 36
    invoke-static {v11, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_6
    iget-object v1, v1, Lcom/apk/gy;->if:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 40
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/apk/gy$do;

    .line 41
    iget-object v10, v9, Lcom/apk/gy$do;->for:Lcom/apk/vg0;

    iget-object v11, v9, Lcom/apk/gy$do;->do:Ljava/io/File;

    const-string v12, "file"

    .line 42
    invoke-static {v11, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "$this$asRequestBody"

    .line 43
    invoke-static {v11, v12}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v12, Lcom/apk/ah0;

    invoke-direct {v12, v11, v10}, Lcom/apk/ah0;-><init>(Ljava/io/File;Lcom/apk/vg0;)V

    .line 45
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v9, v9, Lcom/apk/gy$do;->if:Ljava/lang/String;

    .line 46
    invoke-static {v10, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "body"

    invoke-static {v12, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {v10, v9, v12}, Lcom/apk/wg0$if;->do(Ljava/lang/String;Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/wg0$if;

    move-result-object v9

    .line 48
    invoke-static {v9, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 51
    new-instance v1, Lcom/apk/wg0;

    invoke-static {v3}, Lcom/apk/jh0;->continue(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v6, v3}, Lcom/apk/wg0;-><init>(Lcom/apk/uk0;Lcom/apk/vg0;Ljava/util/List;)V

    :goto_3
    return-object v1

    .line 52
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multipart body must have at least one part."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
