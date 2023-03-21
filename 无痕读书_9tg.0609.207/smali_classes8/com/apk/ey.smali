.class public Lcom/apk/ey;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lcom/apk/ug0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ey$do;
    }
.end annotation


# static fields
.field public static final new:Ljava/nio/charset/Charset;


# instance fields
.field public volatile do:Lcom/apk/ey$do;

.field public for:Ljava/util/logging/Logger;

.field public if:Ljava/util/logging/Level;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/apk/ey$do;->do:Lcom/apk/ey$do;

    iput-object v0, p0, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    .line 3
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    return-void
.end method

.method public static for(Lcom/apk/vg0;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/apk/vg0;->if:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "text"

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/apk/vg0;->for:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "x-www-form-urlencoded"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public do(Lcom/apk/ug0$do;)Lcom/apk/ch0;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ": "

    const-string v4, "\t"

    const-string v5, "\tbody: maybe [binary body], omitted!"

    const-string v6, " "

    .line 1
    sget-object v7, Lcom/apk/ey$do;->for:Lcom/apk/ey$do;

    sget-object v8, Lcom/apk/ey$do;->new:Lcom/apk/ey$do;

    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->for()Lcom/apk/zg0;

    move-result-object v9

    .line 2
    iget-object v0, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    sget-object v10, Lcom/apk/ey$do;->do:Lcom/apk/ey$do;

    if-ne v0, v10, :cond_0

    .line 3
    invoke-interface {v2, v9}, Lcom/apk/ug0$do;->do(Lcom/apk/zg0;)Lcom/apk/ch0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/apk/ug0$do;->if()Lcom/apk/fg0;

    move-result-object v0

    const-string v10, "--> END "

    .line 5
    iget-object v11, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    if-ne v11, v8, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 6
    :goto_0
    iget-object v12, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    if-eq v12, v8, :cond_3

    iget-object v12, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    if-ne v12, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, 0x1

    .line 7
    :goto_2
    iget-object v13, v9, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    if-eqz v13, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0}, Lcom/apk/fg0;->do()Lcom/apk/yg0;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    .line 9
    :goto_4
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v7

    :try_start_1
    const-string v7, "--> "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v7, v9, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 11
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object v7, v9, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 13
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    if-eqz v12, :cond_b

    if-eqz v14, :cond_7

    .line 15
    invoke-virtual {v13}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tContent-Type: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    .line 17
    :cond_6
    invoke-virtual {v13}, Lcom/apk/bh0;->do()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v0, v17, v19

    if-eqz v0, :cond_7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tContent-Length: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v8

    :try_start_2
    invoke-virtual {v13}, Lcom/apk/bh0;->do()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v12, v8

    .line 19
    :goto_5
    iget-object v0, v9, Lcom/apk/zg0;->new:Lcom/apk/sg0;

    .line 20
    invoke-virtual {v0}, Lcom/apk/sg0;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_9

    .line 21
    invoke-virtual {v0, v8}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v7

    const-string v7, "Content-Type"

    .line 22
    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "Content-Length"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v17

    goto :goto_6

    .line 24
    :cond_9
    iget-object v0, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    invoke-virtual {v0, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz v11, :cond_c

    if-eqz v14, :cond_c

    .line 25
    invoke-virtual {v13}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ey;->for(Lcom/apk/vg0;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {v1, v9}, Lcom/apk/ey;->if(Lcom/apk/zg0;)V

    goto :goto_7

    .line 27
    :cond_a
    iget-object v0, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    invoke-virtual {v0, v7, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_b
    move-object v12, v8

    .line 28
    :cond_c
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    :goto_8
    move-object v12, v8

    .line 29
    :goto_9
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v7, v9, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 34
    :try_start_4
    invoke-interface {v2, v9}, Lcom/apk/ug0$do;->do(Lcom/apk/zg0;)Lcom/apk/ch0;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-string v9, "<-- END HTTP"

    if-eqz v2, :cond_21

    const-string v0, "response"

    .line 36
    invoke-static {v2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v10, v2, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 38
    iget-object v11, v2, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    .line 39
    iget v13, v2, Lcom/apk/ch0;->try:I

    .line 40
    iget-object v14, v2, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 41
    iget-object v15, v2, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    move-object/from16 v33, v5

    .line 42
    iget-object v5, v2, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 43
    invoke-virtual {v5}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object v5

    move-object/from16 p1, v0

    .line 44
    iget-object v0, v2, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    move-object/from16 v34, v9

    .line 45
    iget-object v9, v2, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    move-object/from16 v35, v6

    .line 46
    iget-object v6, v2, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    move-object/from16 v36, v3

    .line 47
    iget-object v3, v2, Lcom/apk/ch0;->catch:Lcom/apk/ch0;

    move-wide/from16 v37, v7

    .line 48
    iget-wide v7, v2, Lcom/apk/ch0;->class:J

    move-wide/from16 v28, v7

    .line 49
    iget-wide v7, v2, Lcom/apk/ch0;->const:J

    move-object/from16 v39, v4

    .line 50
    iget-object v4, v2, Lcom/apk/ch0;->final:Lcom/apk/vh0;

    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto :goto_b

    :cond_d
    const/16 v17, 0x0

    :goto_b
    move-object/from16 v40, v2

    const-string v2, "code < 0: "

    if-eqz v17, :cond_20

    const-string v41, "request == null"

    if-eqz v10, :cond_1f

    const-string v42, "protocol == null"

    if-eqz v11, :cond_1e

    const-string v43, "message == null"

    if-eqz v14, :cond_1d

    .line 51
    invoke-virtual {v5}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v23

    .line 52
    new-instance v5, Lcom/apk/ch0;

    move-object/from16 v17, v5

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move/from16 v21, v13

    move-object/from16 v22, v15

    move-object/from16 v24, v0

    move-object/from16 v25, v9

    move-object/from16 v26, v6

    move-object/from16 v27, v3

    move-wide/from16 v30, v7

    move-object/from16 v32, v4

    invoke-direct/range {v17 .. v32}, Lcom/apk/ch0;-><init>(Lcom/apk/zg0;Lcom/apk/yg0;Ljava/lang/String;ILcom/apk/rg0;Lcom/apk/sg0;Lcom/apk/dh0;Lcom/apk/ch0;Lcom/apk/ch0;Lcom/apk/ch0;JJLcom/apk/vh0;)V

    .line 53
    iget-object v0, v5, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    .line 54
    iget-object v3, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    if-ne v3, v12, :cond_e

    const/4 v3, 0x1

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    .line 55
    :goto_c
    iget-object v4, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    if-eq v4, v12, :cond_10

    iget-object v4, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    move-object/from16 v6, v16

    if-ne v4, v6, :cond_f

    goto :goto_d

    :cond_f
    const/4 v4, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v4, 0x1

    .line 56
    :goto_e
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<-- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v7, v5, Lcom/apk/ch0;->try:I

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v8, v5, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget-object v7, v5, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 62
    iget-object v7, v7, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v37

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms\uff09"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    if-eqz v4, :cond_1c

    .line 64
    iget-object v4, v5, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 65
    invoke-virtual {v4}, Lcom/apk/sg0;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v6, :cond_11

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v39

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v36

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v39, v9

    move-object/from16 v36, v10

    goto :goto_f

    .line 67
    :cond_11
    iget-object v4, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    move-object/from16 v7, v35

    invoke-virtual {v4, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz v3, :cond_1c

    .line 68
    invoke-static {v5}, Lcom/apk/ki0;->do(Lcom/apk/ch0;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_1c

    if-nez v0, :cond_12

    .line 69
    iget-object v0, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v2, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    move-object/from16 v3, v34

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object/from16 v4, v40

    goto/16 :goto_18

    :cond_12
    move-object/from16 v3, v34

    .line 70
    :try_start_6
    invoke-virtual {v0}, Lcom/apk/dh0;->throws()Lcom/apk/vg0;

    move-result-object v4

    invoke-static {v4}, Lcom/apk/ey;->for(Lcom/apk/vg0;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 71
    invoke-virtual {v0}, Lcom/apk/dh0;->for()Ljava/io/InputStream;

    move-result-object v4

    .line 72
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 73
    :goto_10
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_10

    .line 74
    :cond_13
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 75
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 76
    invoke-virtual {v0}, Lcom/apk/dh0;->throws()Lcom/apk/vg0;

    move-result-object v5

    .line 77
    new-instance v6, Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 78
    sget-object v7, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Lcom/apk/vg0;->do(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_11

    :cond_14
    sget-object v5, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    :goto_11
    if-nez v5, :cond_15

    .line 79
    sget-object v5, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    .line 80
    :cond_15
    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tbody:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/apk/dh0;->throws()Lcom/apk/vg0;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/apk/dh0;->default(Lcom/apk/vg0;[B)Lcom/apk/dh0;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v0, p1

    move-object/from16 v4, v40

    .line 83
    :try_start_7
    invoke-static {v4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v6, v4, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 85
    iget-object v7, v4, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    .line 86
    iget v9, v4, Lcom/apk/ch0;->try:I

    .line 87
    iget-object v8, v4, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 88
    iget-object v10, v4, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    .line 89
    iget-object v0, v4, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 90
    invoke-virtual {v0}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object v0

    .line 91
    iget-object v13, v4, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    .line 92
    iget-object v14, v4, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    .line 93
    iget-object v15, v4, Lcom/apk/ch0;->catch:Lcom/apk/ch0;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 p1, v2

    move-object/from16 v34, v3

    .line 94
    :try_start_8
    iget-wide v2, v4, Lcom/apk/ch0;->class:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide/from16 v16, v2

    .line 95
    :try_start_9
    iget-wide v1, v4, Lcom/apk/ch0;->const:J

    .line 96
    iget-object v3, v4, Lcom/apk/ch0;->final:Lcom/apk/vh0;

    if-ltz v9, :cond_16

    const/4 v5, 0x1

    goto :goto_12

    :cond_16
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_1a

    if-eqz v6, :cond_19

    if-eqz v7, :cond_18

    if-eqz v8, :cond_17

    .line 97
    invoke-virtual {v0}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v11

    .line 98
    new-instance v0, Lcom/apk/ch0;

    move-object v5, v0

    move-wide/from16 v18, v1

    move-object/from16 v20, v3

    invoke-direct/range {v5 .. v20}, Lcom/apk/ch0;-><init>(Lcom/apk/zg0;Lcom/apk/yg0;Ljava/lang/String;ILcom/apk/rg0;Lcom/apk/sg0;Lcom/apk/dh0;Lcom/apk/ch0;Lcom/apk/ch0;Lcom/apk/ch0;JJLcom/apk/vh0;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v1, p0

    .line 99
    iget-object v2, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    move-object/from16 v5, v34

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_19

    :cond_17
    move-object/from16 v1, p0

    move-object/from16 v5, v34

    .line 100
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v1, p0

    move-object/from16 v5, v34

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v1, p0

    move-object/from16 v5, v34

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v1, p0

    move-object/from16 v5, v34

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_13

    :catch_4
    move-exception v0

    :goto_13
    move-object/from16 v5, v34

    goto :goto_16

    :catch_5
    move-exception v0

    move-object v5, v3

    goto :goto_16

    :cond_1b
    move-object v5, v3

    move-object/from16 v4, v40

    .line 104
    iget-object v0, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v2, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    move-object/from16 v3, v33

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_1a

    :catch_7
    move-exception v0

    move-object v5, v3

    :goto_14
    move-object/from16 v4, v40

    goto :goto_16

    :cond_1c
    move-object/from16 v5, v34

    move-object/from16 v4, v40

    goto :goto_17

    :catchall_3
    move-exception v0

    :goto_15
    move-object/from16 v5, v34

    goto :goto_1a

    :catch_8
    move-exception v0

    move-object/from16 v5, v34

    goto :goto_14

    .line 105
    :goto_16
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 106
    :goto_17
    iget-object v0, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v2, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_18
    move-object v2, v4

    :goto_19
    return-object v2

    :catchall_4
    move-exception v0

    :goto_1a
    iget-object v2, v1, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 107
    throw v0

    .line 108
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_20
    invoke-static {v2, v13}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    const/4 v0, 0x0

    .line 112
    throw v0

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<-- HTTP FAILED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    .line 114
    throw v2

    .line 115
    :goto_1b
    invoke-static {v10}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    iget-object v3, v9, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apk/ey;->new(Ljava/lang/String;)V

    .line 118
    throw v0
.end method

.method public final if(Lcom/apk/zg0;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/zg0$do;

    invoke-direct {v0, p1}, Lcom/apk/zg0$do;-><init>(Lcom/apk/zg0;)V

    .line 2
    invoke-virtual {v0}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/rk0;

    invoke-direct {v0}, Lcom/apk/rk0;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Lcom/apk/bh0;->for(Lcom/apk/sk0;)V

    .line 6
    invoke-virtual {p1}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    sget-object v1, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Lcom/apk/vg0;->do(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    :goto_0
    if-nez p1, :cond_2

    .line 8
    sget-object p1, Lcom/apk/ey;->new:Ljava/nio/charset/Charset;

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tbody:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/apk/rk0;->catch(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/ey;->new(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final new(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ey;->for:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
