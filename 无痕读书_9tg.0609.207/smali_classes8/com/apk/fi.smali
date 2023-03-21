.class public Lcom/apk/fi;
.super Lcom/apk/di;
.source "SimpleFileServer.java"


# static fields
.field public static else:Lcom/apk/fi;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/di;-><init>(I)V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/String;Lcom/apk/di$goto;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/apk/di$this;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apk/di$goto;",
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
            ">;)",
            "Lcom/apk/di$this;"
        }
    .end annotation

    const-string v1, ")"

    const-string v2, "("

    .line 1
    sget-object v3, Lcom/apk/di$this$do;->for:Lcom/apk/di$this$do;

    const/4 v4, 0x1

    sput-boolean v4, Lcom/apk/ei;->if:Z

    .line 2
    sget-object v0, Lcom/apk/di$goto;->do:Lcom/apk/di$goto;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "."

    const-string v9, "text/html"

    const-string v10, ".txt"

    const-string v11, "/"

    if-eqz v0, :cond_8

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v12, "UTF-8"

    invoke-direct {v0, v1, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v2, p1

    :catch_1
    move-object v0, v2

    :goto_0
    const-string v1, "index.html"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "/files/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/apk/di$this;

    new-instance v2, Ljava/lang/String;

    .line 8
    new-instance v7, Ljava/io/File;

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->do()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {v7}, Lcom/apk/ze;->const(Ljava/io/File;)Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    .line 13
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x3e8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v8, v8, [B

    .line 15
    :goto_1
    invoke-virtual {v4, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-eq v9, v5, :cond_2

    .line 16
    invoke-virtual {v7, v8, v6, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    :catch_2
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "file"

    invoke-direct {v1, v3, v0, v2}, Lcom/apk/di$this;-><init>(Lcom/apk/di$this$do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 21
    :cond_3
    sget-object v1, Lcom/apk/ci;->do:Ljava/util/Map;

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    new-instance v0, Lcom/apk/di$this;

    .line 24
    invoke-direct {v0, v3, v9, v7}, Lcom/apk/di$this;-><init>(Lcom/apk/di$this$do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_4
    invoke-static {v0}, Lcom/apk/ze;->T(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 26
    array-length v2, v0

    if-ge v2, v4, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    new-instance v2, Lcom/apk/di$this;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v1, v4}, Lcom/apk/di$this;-><init>(Lcom/apk/di$this$do;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2

    .line 28
    :cond_6
    :goto_2
    new-instance v0, Lcom/apk/di$this;

    .line 29
    invoke-direct {v0, v3, v9, v7}, Lcom/apk/di$this;-><init>(Lcom/apk/di$this$do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_7
    :goto_3
    new-instance v0, Lcom/apk/di$this;

    new-instance v1, Ljava/lang/String;

    const-string v2, "/index.html"

    invoke-static {v2}, Lcom/apk/ze;->T(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3, v9, v1}, Lcom/apk/di$this;-><init>(Lcom/apk/di$this$do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 31
    :cond_8
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    :try_start_3
    new-instance v13, Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    move-object/from16 v14, p5

    :try_start_4
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "fileName"
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f

    move-object/from16 v15, p4

    .line 33
    :try_start_5
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_9

    .line 36
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_9
    invoke-static {}, Lcom/apk/ze;->super()Ljava/io/File;

    move-result-object v4

    .line 38
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    new-array v5, v5, [B
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    move-object/from16 v17, v8

    .line 39
    :goto_5
    :try_start_6
    invoke-virtual {v13, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v8
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    move-object/from16 p1, v12

    const/4 v12, -0x1

    if-ne v8, v12, :cond_c

    .line 40
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->do()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    if-eqz v5, :cond_a

    .line 44
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->do()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 47
    :goto_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v8, :cond_a

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 48
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->do()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-object v6, v8

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_7
    const/16 v16, 0x1

    goto/16 :goto_f

    :catch_4
    move-exception v0

    :goto_8
    const/16 v16, 0x1

    goto/16 :goto_10

    :cond_a
    const/16 v16, 0x1

    .line 51
    :try_start_a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    if-nez v0, :cond_b

    .line 52
    :try_start_b
    invoke-static {v6}, Lcom/apk/ze;->const(Ljava/io/File;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 53
    :cond_b
    :try_start_c
    invoke-static {v4, v6}, Lcom/apk/ze;->static(Ljava/io/File;Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-object/from16 v5, p0

    .line 54
    :try_start_d
    invoke-virtual {v5, v6}, Lcom/apk/fi;->new(Ljava/io/File;)V

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_11

    :catch_5
    move-exception v0

    :goto_9
    move-object/from16 v5, p0

    goto :goto_f

    :catch_6
    move-exception v0

    :goto_a
    move-object/from16 v5, p0

    goto :goto_10

    :catch_7
    move-exception v0

    const/16 v16, 0x1

    goto :goto_9

    :catch_8
    move-exception v0

    const/16 v16, 0x1

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    const/16 v16, 0x1

    .line 56
    invoke-virtual {v6, v5, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-object/from16 v12, p1

    goto/16 :goto_5

    :catch_9
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    :goto_b
    move-object/from16 p1, v12

    goto :goto_7

    :catch_c
    move-exception v0

    :goto_c
    move-object/from16 p1, v12

    goto :goto_8

    :catch_d
    move-exception v0

    :goto_d
    move-object/from16 v17, v8

    goto :goto_b

    :catch_e
    move-exception v0

    :goto_e
    move-object/from16 v17, v8

    goto :goto_c

    :catch_f
    move-exception v0

    move-object/from16 v15, p4

    goto :goto_d

    :catch_10
    move-exception v0

    move-object/from16 v15, p4

    goto :goto_e

    :catch_11
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    goto :goto_d

    .line 57
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :catch_12
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    goto :goto_e

    .line 58
    :goto_10
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_11
    move-object/from16 v12, p1

    move-object/from16 v8, v17

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x0

    .line 59
    sput-boolean v4, Lcom/apk/ei;->if:Z

    .line 60
    new-instance v0, Lcom/apk/di$this;

    .line 61
    invoke-direct {v0, v3, v9, v7}, Lcom/apk/di$this;-><init>(Lcom/apk/di$this$do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final new(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, p1, v2}, Lcom/apk/n2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object p1

    .line 4
    invoke-static {v2}, Lcom/apk/ze;->Y(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI_TRANSFER_FILE_KEY"

    invoke-static {v0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
