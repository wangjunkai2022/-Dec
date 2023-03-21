.class public Lcom/apk/di$else;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation


# instance fields
.field public final do:Lcom/apk/di$catch;

.field public for:Ljava/io/OutputStream;

.field public if:Ljava/io/InputStream;

.field public final synthetic new:Lcom/apk/di;


# direct methods
.method public constructor <init>(Lcom/apk/di;Lcom/apk/di$catch;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/di$else;->new:Lcom/apk/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/di$else;->do:Lcom/apk/di$catch;

    .line 3
    iput-object p3, p0, Lcom/apk/di$else;->if:Ljava/io/InputStream;

    .line 4
    iput-object p4, p0, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final case(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 3

    if-lez p3, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/di$else;->do:Lcom/apk/di$catch;

    check-cast v0, Lcom/apk/di$try;

    .line 2
    new-instance v1, Lcom/apk/di$new;

    iget-object v2, v0, Lcom/apk/di$try;->do:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/apk/di$new;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/apk/di$try;->if:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/apk/di$new;->do()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int/2addr p2, p3

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 9
    invoke-virtual {v1}, Lcom/apk/di$new;->do()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p3, "Error: "

    invoke-static {p3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final do(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/di$this$do;->this:Lcom/apk/di$this$do;

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "method"

    .line 4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/apk/di$else;->for(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    iget-object p3, p0, Lcom/apk/di$else;->new:Lcom/apk/di;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/apk/di;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/apk/di$else;->new:Lcom/apk/di;

    invoke-virtual {p3, v0}, Lcom/apk/di;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 11
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x3a

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 15
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string p1, "uri"

    .line 20
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string p2, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-static {p1, v0, p2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string p2, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-static {p1, v0, p2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    sget-object p3, Lcom/apk/di$this$do;->final:Lcom/apk/di$this$do;

    const-string p4, "SERVER INTERNAL ERROR: IOException: "

    invoke-static {p4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p2, p3, p1}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final for(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "NanoHttpd.QUERY_STRING"

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3d

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/apk/di$else;->new:Lcom/apk/di;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/di;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/apk/di$else;->new:Lcom/apk/di;

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/apk/di;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/apk/di$else;->new:Lcom/apk/di;

    invoke-virtual {v2, p1}, Lcom/apk/di;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iget-object p1, p0, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    sget-object p2, Lcom/apk/di$this$do;->this:Lcom/apk/di$this$do;

    const-string v0, "BAD REQUEST: Bad percent-encoding."

    invoke-static {p1, p2, v0}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final if(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lcom/apk/di$this$do;->this:Lcom/apk/di$this$do;

    sget-object v4, Lcom/apk/di$this$do;->final:Lcom/apk/di$this$do;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    const/4 v13, 0x1

    if-ge v9, v12, :cond_3

    .line 4
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    aget-byte v14, v5, v10

    if-ne v12, v14, :cond_1

    if-nez v10, :cond_0

    move v11, v9

    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 5
    array-length v12, v5

    if-ne v10, v12, :cond_2

    .line 6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sub-int/2addr v9, v10

    :goto_1
    const/4 v10, 0x0

    const/4 v11, -0x1

    :cond_2
    add-int/2addr v9, v13

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v9, v5, [I

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_4

    .line 8
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    :goto_3
    if-eqz v6, :cond_15

    .line 10
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    add-int/2addr v10, v13

    .line 11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    :goto_4
    if-eqz v11, :cond_6

    .line 13
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    const/16 v12, 0x3a

    .line 14
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v7, :cond_5

    .line 15
    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 16
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 18
    invoke-virtual {v6, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_6
    if-eqz v11, :cond_13

    const-string v12, "content-disposition"

    .line 20
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_12

    .line 21
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, "; "

    invoke-direct {v13, v12, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 23
    :goto_5
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 24
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x3d

    .line 25
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v7, :cond_7

    .line 26
    invoke-virtual {v14, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 29
    invoke-virtual {v12, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    const-string v8, "name"

    .line 30
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 31
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v8, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v13, ""

    const-string v14, "content-type"

    .line 32
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    :cond_9
    :goto_6
    if-eqz v11, :cond_b

    .line 33
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 34
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 35
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_a

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 37
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_b
    move-object/from16 v12, p4

    move-object v6, v13

    move-object/from16 v13, p5

    goto :goto_9

    :cond_c
    if-gt v10, v5, :cond_11

    add-int/lit8 v6, v10, -0x2

    .line 38
    aget v6, v9, v6

    .line 39
    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    if-ge v6, v11, :cond_e

    .line 40
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v13, 0xd

    if-ne v11, v13, :cond_d

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v14, 0xa

    if-ne v11, v14, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 41
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    if-ne v11, v13, :cond_d

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    if-ne v11, v14, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v10, -0x1

    .line 42
    aget v11, v9, v11

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v1, v2, v6, v11}, Lcom/apk/di$else;->case(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, p5

    .line 43
    invoke-interface {v13, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "filename"

    .line 44
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 45
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v6, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 46
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 47
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_10
    move-object/from16 v12, p4

    .line 48
    :goto_9
    invoke-interface {v12, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 49
    :cond_11
    iget-object v0, v1, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string v2, "Error processing request"

    invoke-static {v0, v4, v2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 51
    :cond_12
    iget-object v0, v1, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-static {v0, v3, v2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_13
    move-object/from16 v12, p4

    move-object/from16 v13, p5

    :goto_a
    move-object v6, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 53
    :cond_14
    iget-object v0, v1, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-static {v0, v3, v2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    return-void

    :catch_0
    move-exception v0

    .line 55
    iget-object v2, v1, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v2, v4, v0}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final new(Ljava/util/Map;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string v0, "content-length"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public run()V
    .locals 24

    move-object/from16 v7, p0

    const-string v0, "\""

    .line 1
    sget-object v1, Lcom/apk/di$this$do;->this:Lcom/apk/di$this$do;

    :try_start_0
    iget-object v2, v7, Lcom/apk/di$else;->if:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2
    iget-object v0, v7, Lcom/apk/di$else;->do:Lcom/apk/di$catch;

    check-cast v0, Lcom/apk/di$try;

    invoke-virtual {v0}, Lcom/apk/di$try;->do()V

    return-void

    :cond_0
    const/16 v2, 0x2000

    :try_start_1
    new-array v3, v2, [B

    .line 3
    iget-object v4, v7, Lcom/apk/di$else;->if:Ljava/io/InputStream;

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lez v2, :cond_4

    add-int/2addr v4, v2

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, v2, 0x3

    if-ge v5, v4, :cond_2

    .line 4
    aget-byte v6, v3, v2

    const/16 v9, 0xd

    if-ne v6, v9, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    const/16 v10, 0xa

    if-ne v6, v10, :cond_1

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    if-ne v6, v9, :cond_1

    aget-byte v5, v3, v5

    if-ne v5, v10, :cond_1

    add-int/lit8 v2, v2, 0x4

    move v5, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-lez v5, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    iget-object v2, v7, Lcom/apk/di$else;->if:Ljava/io/InputStream;

    rsub-int v6, v4, 0x2000

    invoke-virtual {v2, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 6
    :cond_4
    :goto_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3, v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v7, v2, v6, v13, v12}, Lcom/apk/di$else;->do(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    const-string v2, "method"

    .line 12
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/apk/di$goto;->do(Ljava/lang/String;)Lcom/apk/di$goto;

    move-result-object v11

    if-eqz v11, :cond_12

    const-string v2, "uri"

    .line 13
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 14
    invoke-virtual {v7, v12}, Lcom/apk/di$else;->new(Ljava/util/Map;)J

    move-result-wide v15

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/apk/di$else;->try()Ljava/io/RandomAccessFile;

    move-result-object v2

    if-ge v5, v4, :cond_5

    sub-int v6, v4, v5

    .line 16
    invoke-virtual {v2, v3, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_5
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    if-ge v5, v4, :cond_6

    sub-int v5, v4, v5

    add-int/2addr v5, v3

    int-to-long v5, v5

    sub-long/2addr v15, v5

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v17, v15, v5

    if-nez v17, :cond_8

    :cond_7
    move-wide v15, v8

    :cond_8
    :goto_4
    const/16 v5, 0x200

    new-array v6, v5, [B

    :goto_5
    if-ltz v4, :cond_a

    cmp-long v4, v15, v8

    if-lez v4, :cond_a

    .line 17
    iget-object v4, v7, Lcom/apk/di$else;->if:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v4, v6, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v8, v4

    sub-long/2addr v15, v8

    if-lez v4, :cond_9

    .line 18
    invoke-virtual {v2, v6, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_9
    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    goto :goto_5

    .line 19
    :cond_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    sget-object v19, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v20, 0x0

    .line 20
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v22

    .line 21
    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    const-wide/16 v3, 0x0

    .line 22
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 23
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 24
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    sget-object v2, Lcom/apk/di$goto;->for:Lcom/apk/di$goto;

    invoke-virtual {v2, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "content-type"

    .line 26
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v2, :cond_b

    .line 27
    :try_start_2
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ",; "

    invoke-direct {v3, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_b
    move-object v6, v4

    :goto_6
    const-string v9, "multipart/form-data"

    .line 30
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 31
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v1, "boundary="

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 34
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 38
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_7

    :cond_c
    move-object v2, v1

    :goto_7
    move-object/from16 v1, p0

    move-object v3, v8

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/apk/di$else;->if(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_9

    .line 40
    :cond_d
    iget-object v0, v7, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-static {v0, v1, v2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_e
    new-array v0, v5, [C

    .line 42
    invoke-virtual {v15, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    :goto_8
    if-ltz v1, :cond_f

    const-string v2, "\r\n"

    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v15, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    goto :goto_8

    .line 46
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v7, v0, v13}, Lcom/apk/di$else;->for(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    :cond_10
    :goto_9
    sget-object v0, Lcom/apk/di$goto;->if:Lcom/apk/di$goto;

    invoke-virtual {v0, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "content"

    .line 49
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v7, v8, v2, v1}, Lcom/apk/di$else;->case(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_11
    iget-object v9, v7, Lcom/apk/di$else;->new:Lcom/apk/di;

    invoke-virtual/range {v9 .. v14}, Lcom/apk/di;->if(Ljava/lang/String;Lcom/apk/di$goto;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/apk/di$this;

    move-result-object v0

    .line 51
    iget-object v1, v7, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    .line 52
    invoke-virtual {v0, v1}, Lcom/apk/di$this;->if(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 54
    iget-object v0, v7, Lcom/apk/di$else;->if:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .line 55
    :cond_12
    iget-object v0, v7, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    const-string v2, "BAD REQUEST: Syntax error."

    invoke-static {v0, v1, v2}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 57
    iget-object v1, v7, Lcom/apk/di$else;->do:Lcom/apk/di$catch;

    check-cast v1, Lcom/apk/di$try;

    invoke-virtual {v1}, Lcom/apk/di$try;->do()V

    .line 58
    throw v0

    .line 59
    :catch_1
    :catchall_1
    :goto_a
    iget-object v0, v7, Lcom/apk/di$else;->do:Lcom/apk/di$catch;

    check-cast v0, Lcom/apk/di$try;

    invoke-virtual {v0}, Lcom/apk/di$try;->do()V

    goto :goto_c

    .line 60
    :goto_b
    :try_start_3
    iget-object v1, v7, Lcom/apk/di$else;->for:Ljava/io/OutputStream;

    sget-object v2, Lcom/apk/di$this$do;->final:Lcom/apk/di$this$do;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v1, v2, v0}, Lcom/apk/di$this;->do(Ljava/io/OutputStream;Lcom/apk/di$this$do;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_c
    return-void
.end method

.method public final try()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/di$else;->do:Lcom/apk/di$catch;

    check-cast v0, Lcom/apk/di$try;

    .line 2
    new-instance v1, Lcom/apk/di$new;

    iget-object v2, v0, Lcom/apk/di$try;->do:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/apk/di$new;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/apk/di$try;->if:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Lcom/apk/di$new;->do()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
