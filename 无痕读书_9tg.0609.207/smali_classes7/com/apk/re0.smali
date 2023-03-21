.class public Lcom/apk/re0;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field public case:Z

.field public do:Ljava/lang/String;

.field public for:Lcom/apk/of0;

.field public if:I

.field public new:Z

.field public try:Lcom/apk/pf0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/re0;->do:Ljava/lang/String;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/apk/re0;->if:I

    .line 5
    new-instance p1, Lcom/apk/pf0;

    invoke-direct {p1}, Lcom/apk/pf0;-><init>()V

    iput-object p1, p0, Lcom/apk/re0;->try:Lcom/apk/pf0;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/apk/re0;->case:Z

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "output folder is not valid"

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/apk/af0;

    const-string v2, "no write access to output folder"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    new-instance v1, Lcom/apk/af0;

    invoke-direct {v1, v3}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_b

    .line 12
    :goto_0
    iget-object v1, v0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-nez v1, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/apk/re0;->for()V

    .line 14
    :cond_3
    iget-object v1, v0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-eqz v1, :cond_a

    .line 15
    iget-object v2, v0, Lcom/apk/re0;->try:Lcom/apk/pf0;

    .line 16
    iget v2, v2, Lcom/apk/pf0;->do:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 17
    new-instance v2, Lcom/apk/rf0;

    invoke-direct {v2, v1}, Lcom/apk/rf0;-><init>(Lcom/apk/of0;)V

    .line 18
    iget-object v5, v0, Lcom/apk/re0;->try:Lcom/apk/pf0;

    iget-boolean v1, v0, Lcom/apk/re0;->case:Z

    .line 19
    iget-object v4, v2, Lcom/apk/rf0;->do:Lcom/apk/of0;

    .line 20
    iget-object v4, v4, Lcom/apk/of0;->do:Lcom/apk/ff0;

    if-eqz v4, :cond_8

    .line 21
    iget-object v4, v4, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-wide v11, v9

    .line 22
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_5

    .line 23
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/apk/if0;

    .line 24
    iget-object v14, v13, Lcom/apk/if0;->throw:Lcom/apk/nf0;

    move-object v15, v4

    if-eqz v14, :cond_4

    .line 25
    iget-wide v3, v14, Lcom/apk/nf0;->if:J

    cmp-long v16, v3, v9

    if-lez v16, :cond_4

    .line 26
    iget-wide v3, v14, Lcom/apk/nf0;->do:J

    goto :goto_2

    .line 27
    :cond_4
    iget-wide v3, v13, Lcom/apk/if0;->try:J

    :goto_2
    add-long/2addr v11, v3

    add-int/lit8 v8, v8, 0x1

    move-object v4, v15

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move-object v15, v4

    .line 28
    iput-wide v11, v5, Lcom/apk/pf0;->if:J

    const/4 v3, 0x1

    .line 29
    iput v3, v5, Lcom/apk/pf0;->do:I

    if-eqz v1, :cond_6

    .line 30
    new-instance v7, Lcom/apk/qf0;

    const-string v3, "Zip4j"

    move-object v1, v7

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/apk/qf0;-><init>(Lcom/apk/rf0;Ljava/lang/String;Ljava/util/ArrayList;Lcom/apk/pf0;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_6
    move-object v1, v15

    .line 32
    invoke-virtual {v2, v1, v7, v5, v6}, Lcom/apk/rf0;->if(Ljava/util/ArrayList;Lcom/apk/kf0;Lcom/apk/pf0;Ljava/lang/String;)V

    :goto_3
    return-void

    .line 33
    :cond_7
    throw v7

    .line 34
    :cond_8
    new-instance v1, Lcom/apk/af0;

    const-string v2, "invalid central directory in zipModel"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_9
    new-instance v1, Lcom/apk/af0;

    const-string v2, "invalid operation - Zip4j is in busy state"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_a
    new-instance v1, Lcom/apk/af0;

    const-string v2, "Internal error occurred when extracting zip file"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_b
    :try_start_1
    new-instance v1, Lcom/apk/af0;

    const-string v2, "no write access to destination folder"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_c
    new-instance v1, Lcom/apk/af0;

    invoke-direct {v1, v3}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :catch_0
    new-instance v1, Lcom/apk/af0;

    const-string v2, "Cannot create destination folder"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_d
    new-instance v1, Lcom/apk/af0;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "output path is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :cond_e
    new-instance v1, Lcom/apk/af0;

    const-string v2, "output path is null or invalid"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final for()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/re0;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/sb0;->super(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/apk/re0;->do:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-static {v0}, Lcom/apk/sb0;->super(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Lcom/apk/re0;->if:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 8
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/apk/re0;->do:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object v2, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Lcom/apk/qe0;

    invoke-direct {v2, v1}, Lcom/apk/qe0;-><init>(Ljava/io/RandomAccessFile;)V

    .line 11
    invoke-virtual {v2, v0}, Lcom/apk/qe0;->for(Ljava/lang/String;)Lcom/apk/of0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-eqz v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/apk/re0;->do:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Lcom/apk/of0;->case:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 15
    :goto_0
    :try_start_4
    new-instance v2, Lcom/apk/af0;

    invoke-direct {v2, v0}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_1

    .line 16
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 17
    :catch_3
    :cond_1
    throw v1

    .line 18
    :cond_2
    new-instance v0, Lcom/apk/af0;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    new-instance v0, Lcom/apk/af0;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :catch_4
    new-instance v0, Lcom/apk/af0;

    const-string v1, "cannot read zip file"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_4
    new-instance v1, Lcom/apk/af0;

    const-string v2, "file does not exist: "

    invoke-static {v2, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_5
    new-instance v0, Lcom/apk/af0;

    const-string v1, "path is null"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_6
    new-instance v0, Lcom/apk/af0;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/apk/re0;->for()V

    .line 3
    iget-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/af0;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 6
    iget-object v0, v0, Lcom/apk/of0;->do:Lcom/apk/ff0;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, v0, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/if0;

    if-eqz v2, :cond_2

    .line 10
    iget-boolean v2, v2, Lcom/apk/if0;->const:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/apk/re0;->new:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/apk/re0;->new:Z

    return v0

    .line 13
    :cond_4
    new-instance v0, Lcom/apk/af0;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/apk/re0;->for()V

    .line 5
    iget-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/apk/af0;

    const-string v0, "Zip Model is null"

    invoke-direct {p1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 8
    iget-object v0, v0, Lcom/apk/of0;->do:Lcom/apk/ff0;

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, v0, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 11
    iget-object v1, v1, Lcom/apk/of0;->do:Lcom/apk/ff0;

    .line 12
    iget-object v1, v1, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 15
    iget-object v1, v1, Lcom/apk/of0;->do:Lcom/apk/ff0;

    .line 16
    iget-object v1, v1, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 19
    iget-object v1, v1, Lcom/apk/of0;->do:Lcom/apk/ff0;

    .line 20
    iget-object v1, v1, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/if0;

    .line 22
    iget-boolean v1, v1, Lcom/apk/if0;->const:Z

    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p0, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 24
    iget-object v1, v1, Lcom/apk/of0;->do:Lcom/apk/ff0;

    .line 25
    iget-object v1, v1, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/if0;

    .line 27
    iput-object p1, v1, Lcom/apk/if0;->super:[C

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 28
    :cond_4
    new-instance p1, Lcom/apk/af0;

    const-string v0, "invalid zip file"

    invoke-direct {p1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 29
    throw p1
.end method
