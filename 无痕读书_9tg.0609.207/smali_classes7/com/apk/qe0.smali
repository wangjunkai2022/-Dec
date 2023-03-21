.class public Lcom/apk/qe0;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field public do:Ljava/io/RandomAccessFile;

.field public if:Lcom/apk/of0;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    .line 3
    iput-object p1, p0, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final case(Ljava/io/RandomAccessFile;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p1, Lcom/apk/af0;

    const-string p2, "unexpected end of file when reading short buff"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/apk/af0;

    const-string v0, "IOException when reading short buff"

    invoke-direct {p2, v0, p1}, Lcom/apk/af0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final do([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 2
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    aput-byte p1, v0, v3

    aput-byte v2, v0, v1

    const/4 p1, 0x5

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    aput-byte v2, v0, p1

    const/4 p1, 0x7

    aput-byte v2, v0, p1

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Lcom/apk/af0;

    const-string v0, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else(Lcom/apk/if0;)Lcom/apk/jf0;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "file.separator"

    const-string v2, ":"

    if-eqz v0, :cond_14

    .line 1
    iget-object v3, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_14

    .line 2
    iget-wide v3, v0, Lcom/apk/if0;->break:J

    .line 3
    iget-object v5, v0, Lcom/apk/if0;->throw:Lcom/apk/nf0;

    const-wide/16 v11, 0x0

    cmp-long v5, v3, v11

    if-ltz v5, :cond_13

    .line 4
    :try_start_0
    iget-object v5, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    new-instance v13, Lcom/apk/jf0;

    invoke-direct {v13}, Lcom/apk/jf0;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [B

    const/4 v7, 0x4

    new-array v8, v7, [B

    .line 6
    iget-object v9, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v9, v8}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    const/4 v14, 0x0

    .line 7
    invoke-static {v8, v14}, Lcom/apk/sb0;->f([BI)I

    move-result v9

    int-to-long v11, v9

    const-wide/32 v17, 0x4034b50

    cmp-long v9, v11, v17

    if-nez v9, :cond_12

    .line 8
    iget-object v9, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v9, v6}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v6, v14}, Lcom/apk/sb0;->i([BI)I

    .line 10
    iget-object v9, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v9, v6}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 11
    invoke-static {v6, v14}, Lcom/apk/sb0;->i([BI)I

    move-result v9

    and-int/lit16 v9, v9, 0x800

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 12
    :goto_0
    iput-boolean v9, v13, Lcom/apk/jf0;->const:Z

    .line 13
    aget-byte v12, v6, v14

    and-int/lit8 v9, v12, 0x1

    if-eqz v9, :cond_1

    .line 14
    iput-boolean v11, v13, Lcom/apk/jf0;->goto:Z

    .line 15
    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v15, v7, :cond_2

    const/4 v7, 0x3

    .line 17
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    .line 18
    :cond_2
    iget-object v7, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v7, v6}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 19
    invoke-static {v6, v14}, Lcom/apk/sb0;->i([BI)I

    move-result v7

    .line 20
    iput v7, v13, Lcom/apk/jf0;->do:I

    .line 21
    iget-object v7, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v7, v8}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 22
    invoke-static {v8, v14}, Lcom/apk/sb0;->f([BI)I

    .line 23
    iget-object v7, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v7, v8}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 24
    invoke-static {v8, v14}, Lcom/apk/sb0;->f([BI)I

    move-result v7

    move/from16 v16, v12

    int-to-long v11, v7

    .line 25
    iput-wide v11, v13, Lcom/apk/jf0;->if:J

    .line 26
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 27
    iget-object v7, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v7, v8}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 28
    invoke-virtual {v10, v8}, Lcom/apk/qe0;->do([B)[B

    move-result-object v7

    .line 29
    invoke-static {v7, v14}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v11

    .line 30
    iput-wide v11, v13, Lcom/apk/jf0;->for:J

    .line 31
    iget-object v7, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v7, v8}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 32
    invoke-virtual {v10, v8}, Lcom/apk/qe0;->do([B)[B

    move-result-object v7

    .line 33
    invoke-static {v7, v14}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v7

    .line 34
    iput-wide v7, v13, Lcom/apk/jf0;->new:J

    .line 35
    iget-object v7, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v7, v6}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 36
    invoke-static {v6, v14}, Lcom/apk/sb0;->i([BI)I

    move-result v7

    .line 37
    iget-object v8, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v8, v6}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 38
    invoke-static {v6, v14}, Lcom/apk/sb0;->i([BI)I

    move-result v6

    .line 39
    iput v6, v13, Lcom/apk/jf0;->try:I

    const/16 v8, 0x1e

    if-lez v7, :cond_4

    .line 40
    new-array v9, v7, [B

    .line 41
    iget-object v11, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v11, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 42
    iget-boolean v11, v13, Lcom/apk/jf0;->const:Z

    .line 43
    invoke-static {v9, v11}, Lcom/apk/sb0;->return([BZ)Ljava/lang/String;

    move-result-object v9

    .line 44
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_3

    .line 45
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 46
    :cond_3
    iput-object v9, v13, Lcom/apk/jf0;->case:Ljava/lang/String;

    add-int/2addr v8, v7

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 47
    iput-object v1, v13, Lcom/apk/jf0;->case:Ljava/lang/String;

    .line 48
    :goto_1
    iget-object v1, v10, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_11

    .line 49
    iget v1, v13, Lcom/apk/jf0;->try:I

    if-gtz v1, :cond_5

    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual {v10, v1}, Lcom/apk/qe0;->try(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    iput-object v1, v13, Lcom/apk/jf0;->catch:Ljava/util/ArrayList;

    :goto_2
    add-int/2addr v8, v6

    int-to-long v1, v8

    add-long/2addr v3, v1

    .line 52
    iput-wide v3, v13, Lcom/apk/jf0;->else:J

    .line 53
    iget-object v1, v0, Lcom/apk/if0;->super:[C

    .line 54
    iput-object v1, v13, Lcom/apk/jf0;->break:[C

    .line 55
    iget-object v1, v13, Lcom/apk/jf0;->catch:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_6

    goto :goto_3

    .line 57
    :cond_6
    iget-object v2, v13, Lcom/apk/jf0;->catch:Ljava/util/ArrayList;

    .line 58
    iget-wide v3, v13, Lcom/apk/jf0;->new:J

    .line 59
    iget-wide v5, v13, Lcom/apk/jf0;->for:J

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object/from16 v1, p0

    .line 60
    invoke-virtual/range {v1 .. v9}, Lcom/apk/qe0;->goto(Ljava/util/ArrayList;JJJI)Lcom/apk/nf0;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 61
    iget-wide v2, v1, Lcom/apk/nf0;->if:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    .line 62
    iput-wide v2, v13, Lcom/apk/jf0;->new:J

    .line 63
    :cond_7
    iget-wide v1, v1, Lcom/apk/nf0;->do:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_8

    .line 64
    iput-wide v1, v13, Lcom/apk/jf0;->for:J

    .line 65
    :cond_8
    :goto_3
    iget-object v1, v13, Lcom/apk/jf0;->catch:Ljava/util/ArrayList;

    const/16 v2, 0x63

    if-eqz v1, :cond_a

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9

    goto :goto_4

    .line 67
    :cond_9
    iget-object v1, v13, Lcom/apk/jf0;->catch:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v10, v1}, Lcom/apk/qe0;->if(Ljava/util/ArrayList;)Lcom/apk/ef0;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 69
    iput-object v1, v13, Lcom/apk/jf0;->class:Lcom/apk/ef0;

    .line 70
    iput v2, v13, Lcom/apk/jf0;->this:I

    .line 71
    :cond_a
    :goto_4
    iget-boolean v1, v13, Lcom/apk/jf0;->goto:Z

    if-eqz v1, :cond_d

    .line 72
    iget v1, v13, Lcom/apk/jf0;->this:I

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    const/16 v1, 0x40

    and-int/lit8 v2, v16, 0x40

    if-ne v2, v1, :cond_c

    const/4 v1, 0x1

    .line 73
    iput v1, v13, Lcom/apk/jf0;->this:I

    goto :goto_5

    .line 74
    :cond_c
    iput v14, v13, Lcom/apk/jf0;->this:I

    .line 75
    :cond_d
    :goto_5
    iget-wide v1, v13, Lcom/apk/jf0;->if:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_e

    .line 76
    iget-wide v1, v0, Lcom/apk/if0;->for:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 77
    iput-wide v1, v13, Lcom/apk/jf0;->if:J

    .line 78
    :cond_e
    iget-wide v1, v13, Lcom/apk/jf0;->for:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_f

    .line 79
    iget-wide v1, v0, Lcom/apk/if0;->try:J

    .line 80
    iput-wide v1, v13, Lcom/apk/jf0;->for:J

    .line 81
    :cond_f
    iget-wide v1, v13, Lcom/apk/jf0;->new:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_10

    .line 82
    iget-wide v0, v0, Lcom/apk/if0;->case:J

    .line 83
    iput-wide v0, v13, Lcom/apk/jf0;->new:J

    :cond_10
    return-object v13

    .line 84
    :cond_11
    new-instance v0, Lcom/apk/af0;

    const-string v1, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_12
    new-instance v1, Lcom/apk/af0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid local header signature for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, v0, Lcom/apk/if0;->catch:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/apk/af0;

    invoke-direct {v1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :cond_13
    new-instance v0, Lcom/apk/af0;

    const-string v1, "invalid local header offset"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_14
    new-instance v0, Lcom/apk/af0;

    const-string v1, "invalid read parameters for local header"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for(Ljava/lang/String;)Lcom/apk/of0;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/apk/of0;

    invoke-direct {v0}, Lcom/apk/of0;-><init>()V

    iput-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/apk/of0;->goto:Ljava/lang/String;

    .line 3
    iget-object v3, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    const-string v5, "random access file was null"

    if-eqz v3, :cond_21

    const/4 v6, 0x4

    :try_start_0
    new-array v7, v6, [B

    .line 4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long/2addr v8, v10

    .line 5
    new-instance v3, Lcom/apk/gf0;

    invoke-direct {v3}, Lcom/apk/gf0;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 6
    :goto_0
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    const-wide/16 v15, 0x1

    sub-long v17, v8, v15

    invoke-virtual {v14, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v8, 0x1

    add-int/2addr v13, v8

    .line 7
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-static {v9, v7}, Lcom/apk/sb0;->g(Ljava/io/DataInput;[B)I

    move-result v9

    move-object v14, v5

    int-to-long v4, v9

    const-wide/32 v19, 0x6054b50

    cmp-long v9, v4, v19

    if-eqz v9, :cond_1

    const/16 v4, 0xbb8

    if-le v13, v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v14

    move-wide/from16 v8, v17

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-static {v7, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v4

    int-to-long v4, v4

    cmp-long v7, v4, v19

    if-nez v7, :cond_20

    new-array v4, v6, [B

    const/4 v5, 0x2

    new-array v7, v5, [B

    .line 9
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 10
    invoke-static {v7, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v9

    .line 11
    iput v9, v3, Lcom/apk/gf0;->do:I

    .line 12
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v7, v12}, Lcom/apk/sb0;->i([BI)I

    .line 14
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v7, v12}, Lcom/apk/sb0;->i([BI)I

    .line 16
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 17
    invoke-static {v7, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v9

    .line 18
    iput v9, v3, Lcom/apk/gf0;->if:I

    .line 19
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 20
    invoke-static {v4, v12}, Lcom/apk/sb0;->f([BI)I

    .line 21
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 22
    invoke-virtual {v1, v4}, Lcom/apk/qe0;->do([B)[B

    move-result-object v4

    .line 23
    invoke-static {v4, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v10

    .line 24
    iput-wide v10, v3, Lcom/apk/gf0;->for:J

    .line 25
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 26
    invoke-static {v7, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v4

    if-lez v4, :cond_2

    .line 27
    new-array v4, v4, [B

    .line 28
    iget-object v7, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v7, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 29
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 30
    :cond_2
    iget v4, v3, Lcom/apk/gf0;->do:I

    if-lez v4, :cond_3

    .line 31
    iget-object v4, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 32
    iput-boolean v8, v4, Lcom/apk/of0;->try:Z

    goto :goto_2

    .line 33
    :cond_3
    iget-object v4, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 34
    iput-boolean v12, v4, Lcom/apk/of0;->try:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 35
    :goto_2
    iput-object v3, v0, Lcom/apk/of0;->if:Lcom/apk/gf0;

    .line 36
    iget-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 37
    iget-object v3, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1f

    .line 38
    :try_start_1
    new-instance v3, Lcom/apk/lf0;

    invoke-direct {v3}, Lcom/apk/lf0;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-array v4, v6, [B

    .line 39
    iget-object v7, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    const-wide/16 v17, 0x16

    sub-long v9, v9, v17

    .line 40
    :goto_3
    iget-object v7, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    sub-long v17, v9, v15

    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    iget-object v7, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-static {v7, v4}, Lcom/apk/sb0;->g(Ljava/io/DataInput;[B)I

    move-result v7

    int-to-long v9, v7

    cmp-long v7, v9, v19

    if-nez v7, :cond_1e

    .line 42
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    iget-object v7, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    const-wide/16 v15, 0x4

    sub-long/2addr v9, v15

    sub-long/2addr v9, v15

    const-wide/16 v17, 0x8

    sub-long v9, v9, v17

    sub-long/2addr v9, v15

    sub-long/2addr v9, v15

    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-array v4, v6, [B

    const/16 v7, 0x8

    new-array v9, v7, [B

    .line 43
    iget-object v10, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 44
    invoke-static {v4, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v15, 0x7064b50

    cmp-long v13, v10, v15

    if-nez v13, :cond_4

    .line 45
    iget-object v10, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 46
    iput-boolean v8, v10, Lcom/apk/of0;->else:Z

    .line 47
    iget-object v10, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 48
    invoke-static {v4, v12}, Lcom/apk/sb0;->f([BI)I

    .line 49
    iget-object v10, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 50
    invoke-static {v9, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v9

    .line 51
    iput-wide v9, v3, Lcom/apk/lf0;->do:J

    .line 52
    iget-object v9, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 53
    invoke-static {v4, v12}, Lcom/apk/sb0;->f([BI)I

    goto :goto_4

    .line 54
    :cond_4
    iget-object v3, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 55
    iput-boolean v12, v3, Lcom/apk/of0;->else:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v2

    .line 56
    :goto_4
    iput-object v3, v0, Lcom/apk/of0;->for:Lcom/apk/lf0;

    .line 57
    iget-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 58
    iget-boolean v3, v0, Lcom/apk/of0;->else:Z

    if-eqz v3, :cond_a

    .line 59
    iget-object v3, v0, Lcom/apk/of0;->for:Lcom/apk/lf0;

    if-eqz v3, :cond_9

    .line 60
    iget-wide v3, v3, Lcom/apk/lf0;->do:J

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-ltz v11, :cond_8

    .line 61
    :try_start_4
    iget-object v11, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    new-instance v3, Lcom/apk/mf0;

    invoke-direct {v3}, Lcom/apk/mf0;-><init>()V

    new-array v4, v5, [B

    new-array v11, v6, [B

    new-array v7, v7, [B

    .line 63
    iget-object v13, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v13, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 64
    invoke-static {v11, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v13

    int-to-long v5, v13

    const-wide/32 v15, 0x6064b50

    cmp-long v13, v5, v15

    if-nez v13, :cond_7

    .line 65
    iget-object v5, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 66
    invoke-static {v7, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v5

    .line 67
    iput-wide v5, v3, Lcom/apk/mf0;->do:J

    .line 68
    iget-object v5, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 69
    invoke-static {v4, v12}, Lcom/apk/sb0;->i([BI)I

    .line 70
    iget-object v5, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 71
    invoke-static {v4, v12}, Lcom/apk/sb0;->i([BI)I

    .line 72
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 73
    invoke-static {v11, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v4

    .line 74
    iput v4, v3, Lcom/apk/mf0;->if:I

    .line 75
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 76
    invoke-static {v11, v12}, Lcom/apk/sb0;->f([BI)I

    .line 77
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 78
    invoke-static {v7, v12}, Lcom/apk/sb0;->h([BI)J

    .line 79
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 80
    invoke-static {v7, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v4

    .line 81
    iput-wide v4, v3, Lcom/apk/mf0;->for:J

    .line 82
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 83
    invoke-static {v7, v12}, Lcom/apk/sb0;->h([BI)J

    .line 84
    iget-object v4, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v7}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 85
    invoke-static {v7, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v4

    .line 86
    iput-wide v4, v3, Lcom/apk/mf0;->new:J

    .line 87
    iget-wide v4, v3, Lcom/apk/mf0;->do:J

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long v6, v4, v9

    if-lez v6, :cond_5

    long-to-int v5, v4

    .line 88
    new-array v4, v5, [B

    .line 89
    iget-object v5, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v4}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :cond_5
    iput-object v3, v0, Lcom/apk/of0;->new:Lcom/apk/mf0;

    .line 91
    iget-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 92
    iget-object v3, v0, Lcom/apk/of0;->new:Lcom/apk/mf0;

    if-eqz v3, :cond_6

    .line 93
    iget v3, v3, Lcom/apk/mf0;->if:I

    if-lez v3, :cond_6

    .line 94
    iput-boolean v8, v0, Lcom/apk/of0;->try:Z

    goto :goto_5

    .line 95
    :cond_6
    iget-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 96
    iput-boolean v12, v0, Lcom/apk/of0;->try:Z

    goto :goto_5

    .line 97
    :cond_7
    :try_start_5
    new-instance v0, Lcom/apk/af0;

    const-string v2, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v2, Lcom/apk/af0;

    invoke-direct {v2, v0}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 99
    :cond_8
    new-instance v0, Lcom/apk/af0;

    const-string v2, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_9
    new-instance v0, Lcom/apk/af0;

    const-string v2, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_a
    :goto_5
    iget-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    const-string v3, "file.separator"

    const-string v4, ":"

    .line 102
    iget-object v5, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_1d

    .line 103
    iget-object v5, v0, Lcom/apk/of0;->if:Lcom/apk/gf0;

    if-eqz v5, :cond_1c

    .line 104
    :try_start_6
    new-instance v5, Lcom/apk/ff0;

    invoke-direct {v5}, Lcom/apk/ff0;-><init>()V

    .line 105
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v7, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 107
    iget-object v7, v7, Lcom/apk/of0;->if:Lcom/apk/gf0;

    .line 108
    iget-wide v9, v7, Lcom/apk/gf0;->for:J

    .line 109
    iget v7, v7, Lcom/apk/gf0;->if:I

    .line 110
    iget-object v11, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 111
    iget-boolean v11, v11, Lcom/apk/of0;->else:Z

    if-eqz v11, :cond_b

    .line 112
    iget-object v7, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 113
    iget-object v7, v7, Lcom/apk/of0;->new:Lcom/apk/mf0;

    .line 114
    iget-wide v9, v7, Lcom/apk/mf0;->new:J

    .line 115
    iget-object v7, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 116
    iget-object v7, v7, Lcom/apk/of0;->new:Lcom/apk/mf0;

    .line 117
    iget-wide v13, v7, Lcom/apk/mf0;->for:J

    long-to-int v7, v13

    .line 118
    :cond_b
    iget-object v11, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v9, 0x4

    new-array v9, v9, [B

    const/4 v10, 0x2

    new-array v11, v10, [B

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v7, :cond_19

    .line 119
    new-instance v13, Lcom/apk/if0;

    invoke-direct {v13}, Lcom/apk/if0;-><init>()V

    .line 120
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 121
    invoke-static {v9, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v14

    int-to-long v14, v14

    const-wide/32 v16, 0x2014b50    # 1.6619997E-316

    cmp-long v18, v14, v16

    if-nez v18, :cond_18

    .line 122
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 123
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    .line 124
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 125
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    .line 126
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 127
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v14

    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    .line 128
    :goto_7
    iput-boolean v14, v13, Lcom/apk/if0;->native:Z

    .line 129
    aget-byte v14, v11, v12

    and-int/2addr v14, v8

    if-eqz v14, :cond_d

    .line 130
    iput-boolean v8, v13, Lcom/apk/if0;->const:Z

    .line 131
    :cond_d
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 132
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 133
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v14

    .line 134
    iput v14, v13, Lcom/apk/if0;->do:I

    .line 135
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 136
    invoke-static {v9, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v14

    .line 137
    iput v14, v13, Lcom/apk/if0;->if:I

    .line 138
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 139
    invoke-static {v9, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v14

    int-to-long v14, v14

    .line 140
    iput-wide v14, v13, Lcom/apk/if0;->for:J

    .line 141
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 142
    iput-object v14, v13, Lcom/apk/if0;->new:[B

    .line 143
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 144
    invoke-virtual {v1, v9}, Lcom/apk/qe0;->do([B)[B

    move-result-object v14

    .line 145
    invoke-static {v14, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v14

    .line 146
    iput-wide v14, v13, Lcom/apk/if0;->try:J

    .line 147
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 148
    invoke-virtual {v1, v9}, Lcom/apk/qe0;->do([B)[B

    move-result-object v14

    .line 149
    invoke-static {v14, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v14

    .line 150
    iput-wide v14, v13, Lcom/apk/if0;->case:J

    .line 151
    iget-object v14, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 152
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v14

    .line 153
    iget-object v15, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v15, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 154
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v15

    .line 155
    iput v15, v13, Lcom/apk/if0;->else:I

    .line 156
    iget-object v15, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v15, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 157
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v15

    .line 158
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>([B)V

    .line 159
    iget-object v8, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v8, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 160
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v8

    .line 161
    iput v8, v13, Lcom/apk/if0;->goto:I

    .line 162
    iget-object v8, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v8, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 163
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 164
    iget-object v8, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v8, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 165
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 166
    iput-object v8, v13, Lcom/apk/if0;->this:[B

    .line 167
    iget-object v8, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v8, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 168
    invoke-virtual {v1, v9}, Lcom/apk/qe0;->do([B)[B

    move-result-object v8

    .line 169
    invoke-static {v8, v12}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v16

    const-wide v18, 0xffffffffL

    move-object/from16 v20, v3

    and-long v2, v16, v18

    .line 170
    iput-wide v2, v13, Lcom/apk/if0;->break:J

    if-lez v14, :cond_12

    .line 171
    new-array v2, v14, [B

    .line 172
    iget-object v3, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v3, v2}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 173
    iget-object v3, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 174
    iget-object v3, v3, Lcom/apk/of0;->goto:Ljava/lang/String;

    .line 175
    invoke-static {v3}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 176
    new-instance v3, Ljava/lang/String;

    iget-object v14, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    .line 177
    iget-object v14, v14, Lcom/apk/of0;->goto:Ljava/lang/String;

    .line 178
    invoke-direct {v3, v2, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_8

    .line 179
    :cond_e
    iget-boolean v3, v13, Lcom/apk/if0;->native:Z

    .line 180
    invoke-static {v2, v3}, Lcom/apk/sb0;->return([BZ)Ljava/lang/String;

    move-result-object v3

    .line 181
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v14, 0x2

    add-int/2addr v2, v14

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_f
    const/4 v14, 0x2

    .line 183
    :goto_9
    iput-object v3, v13, Lcom/apk/if0;->catch:Ljava/lang/String;

    const-string v2, "/"

    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v2, 0x1

    .line 185
    :goto_b
    iput-boolean v2, v13, Lcom/apk/if0;->class:Z

    const/4 v2, 0x0

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    const/4 v14, 0x2

    .line 186
    iput-object v2, v13, Lcom/apk/if0;->catch:Ljava/lang/String;

    .line 187
    :goto_c
    iget-object v3, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_17

    .line 188
    iget v3, v13, Lcom/apk/if0;->else:I

    if-gtz v3, :cond_13

    goto :goto_d

    .line 189
    :cond_13
    invoke-virtual {v1, v3}, Lcom/apk/qe0;->try(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 190
    iput-object v3, v13, Lcom/apk/if0;->import:Ljava/util/ArrayList;

    .line 191
    :goto_d
    invoke-virtual {v1, v13}, Lcom/apk/qe0;->new(Lcom/apk/if0;)V

    .line 192
    iget-object v3, v13, Lcom/apk/if0;->import:Ljava/util/ArrayList;

    if-eqz v3, :cond_15

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_14

    goto :goto_e

    .line 194
    :cond_14
    iget-object v3, v13, Lcom/apk/if0;->import:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1, v3}, Lcom/apk/qe0;->if(Ljava/util/ArrayList;)Lcom/apk/ef0;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 196
    iput-object v3, v13, Lcom/apk/if0;->while:Lcom/apk/ef0;

    const/16 v3, 0x63

    .line 197
    iput v3, v13, Lcom/apk/if0;->final:I

    :cond_15
    :goto_e
    if-lez v15, :cond_16

    .line 198
    new-array v3, v15, [B

    .line 199
    iget-object v8, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v8, v3}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 200
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    .line 201
    :cond_16
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v20

    const/4 v8, 0x1

    goto/16 :goto_6

    .line 202
    :cond_17
    new-instance v0, Lcom/apk/af0;

    const-string v2, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_18
    new-instance v0, Lcom/apk/af0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected central directory entry not found (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v10, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_19
    iput-object v6, v5, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    .line 205
    iget-object v2, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, v9}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 206
    invoke-static {v9, v12}, Lcom/apk/sb0;->f([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v6, 0x5054b50

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1a

    goto :goto_f

    .line 207
    :cond_1a
    iget-object v2, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, v11}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 208
    invoke-static {v11, v12}, Lcom/apk/sb0;->i([BI)I

    move-result v2

    if-lez v2, :cond_1b

    .line 209
    new-array v2, v2, [B

    .line 210
    iget-object v3, v1, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v3, v2}, Lcom/apk/qe0;->case(Ljava/io/RandomAccessFile;[B)[B

    .line 211
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 212
    :cond_1b
    :goto_f
    iput-object v5, v0, Lcom/apk/of0;->do:Lcom/apk/ff0;

    .line 213
    iget-object v0, v1, Lcom/apk/qe0;->if:Lcom/apk/of0;

    return-object v0

    :catch_1
    move-exception v0

    .line 214
    new-instance v2, Lcom/apk/af0;

    invoke-direct {v2, v0}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 215
    :cond_1c
    new-instance v0, Lcom/apk/af0;

    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1d
    new-instance v0, Lcom/apk/af0;

    move-object v6, v14

    const/4 v2, 0x3

    invoke-direct {v0, v6, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1e
    move-object v6, v14

    move-wide/from16 v9, v17

    const/4 v6, 0x4

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 217
    :try_start_7
    new-instance v2, Lcom/apk/af0;

    invoke-direct {v2, v0}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    .line 218
    new-instance v2, Lcom/apk/af0;

    invoke-direct {v2, v0}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 219
    :cond_1f
    new-instance v0, Lcom/apk/af0;

    const-string v2, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_20
    :try_start_8
    new-instance v0, Lcom/apk/af0;

    const-string v2, "zip headers not found. probably not a zip file"

    invoke-direct {v0, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    .line 221
    new-instance v2, Lcom/apk/af0;

    const-string v3, "Probably not a zip file or a corrupted zip file"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v0, v4}, Lcom/apk/af0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :cond_21
    move-object v6, v5

    .line 222
    new-instance v0, Lcom/apk/af0;

    const/4 v2, 0x3

    invoke-direct {v0, v6, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final goto(Ljava/util/ArrayList;JJJI)Lcom/apk/nf0;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    move-object/from16 v2, p1

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/hf0;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-wide v4, v3, Lcom/apk/hf0;->do:J

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    .line 4
    new-instance v1, Lcom/apk/nf0;

    invoke-direct {v1}, Lcom/apk/nf0;-><init>()V

    .line 5
    iget-object v2, v3, Lcom/apk/hf0;->for:[B

    .line 6
    iget v4, v3, Lcom/apk/hf0;->if:I

    if-gtz v4, :cond_1

    goto :goto_4

    :cond_1
    const/16 v5, 0x8

    new-array v6, v5, [B

    const/4 v7, 0x4

    new-array v8, v7, [B

    const-wide/32 v9, 0xffff

    and-long v11, p2, v9

    const/4 v13, 0x1

    cmp-long v14, v11, v9

    if-nez v14, :cond_2

    if-lez v4, :cond_2

    .line 7
    invoke-static {v2, v0, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-static {v6, v0}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v11

    .line 9
    iput-wide v11, v1, Lcom/apk/nf0;->if:J

    const/16 v4, 0x8

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_1
    and-long v14, p4, v9

    cmp-long v12, v14, v9

    if-nez v12, :cond_3

    .line 10
    iget v12, v3, Lcom/apk/hf0;->if:I

    if-ge v4, v12, :cond_3

    .line 11
    invoke-static {v2, v4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-static {v6, v0}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v11

    .line 13
    iput-wide v11, v1, Lcom/apk/nf0;->do:J

    add-int/lit8 v4, v4, 0x8

    const/4 v11, 0x1

    :cond_3
    and-long v14, p6, v9

    cmp-long v12, v14, v9

    if-nez v12, :cond_4

    .line 14
    iget v9, v3, Lcom/apk/hf0;->if:I

    if-ge v4, v9, :cond_4

    .line 15
    invoke-static {v2, v4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {v6, v0}, Lcom/apk/sb0;->h([BI)J

    move-result-wide v5

    .line 17
    iput-wide v5, v1, Lcom/apk/nf0;->for:J

    add-int/lit8 v4, v4, 0x8

    const/4 v11, 0x1

    :cond_4
    const v5, 0xffff

    and-int v6, p8, v5

    if-ne v6, v5, :cond_5

    .line 18
    iget v3, v3, Lcom/apk/hf0;->if:I

    if-ge v4, v3, :cond_5

    .line 19
    invoke-static {v2, v4, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-static {v8, v0}, Lcom/apk/sb0;->f([BI)I

    move-result v0

    .line 21
    iput v0, v1, Lcom/apk/nf0;->new:I

    goto :goto_2

    :cond_5
    move v13, v11

    :goto_2
    if-eqz v13, :cond_7

    return-object v1

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final if(Ljava/util/ArrayList;)Lcom/apk/ef0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/hf0;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-wide v4, v3, Lcom/apk/hf0;->do:J

    const-wide/32 v6, 0x9901

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 4
    iget-object p1, v3, Lcom/apk/hf0;->for:[B

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lcom/apk/ef0;

    invoke-direct {p1}, Lcom/apk/ef0;-><init>()V

    .line 6
    iget-object v0, v3, Lcom/apk/hf0;->for:[B

    .line 7
    invoke-static {v0, v1}, Lcom/apk/sb0;->i([BI)I

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 8
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x4

    .line 10
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 11
    iput v1, p1, Lcom/apk/ef0;->do:I

    const/4 v1, 0x5

    .line 12
    invoke-static {v0, v1}, Lcom/apk/sb0;->i([BI)I

    move-result v0

    .line 13
    iput v0, p1, Lcom/apk/ef0;->if:I

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Lcom/apk/af0;

    const-string v0, "corrput AES extra data records"

    invoke-direct {p1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final new(Lcom/apk/if0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/if0;->import:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p1, Lcom/apk/if0;->import:Ljava/util/ArrayList;

    .line 4
    iget-wide v3, p1, Lcom/apk/if0;->case:J

    .line 5
    iget-wide v5, p1, Lcom/apk/if0;->try:J

    .line 6
    iget-wide v7, p1, Lcom/apk/if0;->break:J

    .line 7
    iget v9, p1, Lcom/apk/if0;->goto:I

    move-object v1, p0

    .line 8
    invoke-virtual/range {v1 .. v9}, Lcom/apk/qe0;->goto(Ljava/util/ArrayList;JJJI)Lcom/apk/nf0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    iput-object v0, p1, Lcom/apk/if0;->throw:Lcom/apk/nf0;

    .line 10
    iget-wide v1, v0, Lcom/apk/nf0;->if:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 11
    iput-wide v1, p1, Lcom/apk/if0;->case:J

    .line 12
    :cond_1
    iget-wide v1, v0, Lcom/apk/nf0;->do:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 13
    iput-wide v1, p1, Lcom/apk/if0;->try:J

    .line 14
    :cond_2
    iget-wide v1, v0, Lcom/apk/nf0;->for:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 15
    iput-wide v1, p1, Lcom/apk/if0;->break:J

    .line 16
    :cond_3
    iget v0, v0, Lcom/apk/nf0;->new:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 17
    iput v0, p1, Lcom/apk/if0;->goto:I

    :cond_4
    :goto_0
    return-void
.end method

.method public final try(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-array v1, p1, [B

    .line 2
    iget-object v2, p0, Lcom/apk/qe0;->do:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 4
    new-instance v5, Lcom/apk/hf0;

    invoke-direct {v5}, Lcom/apk/hf0;-><init>()V

    .line 5
    invoke-static {v1, v4}, Lcom/apk/sb0;->i([BI)I

    move-result v6

    int-to-long v6, v6

    .line 6
    iput-wide v6, v5, Lcom/apk/hf0;->do:J

    add-int/lit8 v4, v4, 0x2

    .line 7
    invoke-static {v1, v4}, Lcom/apk/sb0;->i([BI)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_1

    .line 8
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v3

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    add-int/lit8 v7, v4, 0x1

    .line 9
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v6, v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iput v6, v5, Lcom/apk/hf0;->if:I

    add-int/lit8 v4, v4, 0x2

    if-lez v6, :cond_2

    .line 11
    new-array v7, v6, [B

    .line 12
    invoke-static {v1, v4, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v7, v5, Lcom/apk/hf0;->for:[B

    :cond_2
    add-int/2addr v4, v6

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_4

    return-object v2

    :cond_4
    return-object v0

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lcom/apk/af0;

    invoke-direct {v0, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
