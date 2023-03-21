.class public Lcom/apk/hk;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/apk/uj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/hk$do;,
        Lcom/apk/hk$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/uj<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/net/Uri;

.field public for:Ljava/io/InputStream;

.field public final if:Lcom/apk/jk;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/apk/jk;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/hk;->do:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/apk/hk;->if:Lcom/apk/jk;

    return-void
.end method

.method public static for(Landroid/content/Context;Landroid/net/Uri;Lcom/apk/ik;)Lcom/apk/hk;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/ii;->case:Lcom/apk/nl;

    .line 3
    new-instance v1, Lcom/apk/jk;

    .line 4
    invoke-static {p0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/apk/ii;->try:Lcom/apk/oi;

    .line 6
    invoke-virtual {v2}, Lcom/apk/oi;->try()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lcom/apk/jk;-><init>(Ljava/util/List;Lcom/apk/ik;Lcom/apk/nl;Landroid/content/ContentResolver;)V

    .line 8
    new-instance p0, Lcom/apk/hk;

    invoke-direct {p0, p1, v1}, Lcom/apk/hk;-><init>(Landroid/net/Uri;Lcom/apk/jk;)V

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 2
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            "Lcom/apk/uj$do<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/hk;->new()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/hk;->for:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-interface {p2, p1}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 4
    invoke-interface {p2, p1}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V

    return-void
.end method

.method public do()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hk;->for:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final new()Ljava/io/InputStream;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "ThumbStreamOpener"

    .line 1
    iget-object v1, p0, Lcom/apk/hk;->if:Lcom/apk/jk;

    iget-object v2, p0, Lcom/apk/hk;->do:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 2
    :try_start_0
    iget-object v6, v1, Lcom/apk/jk;->if:Lcom/apk/ik;

    invoke-interface {v6, v2}, Lcom/apk/ik;->query(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v6

    goto/16 :goto_8

    :cond_0
    if-eqz v6, :cond_2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-object v6, v3

    .line 6
    :catch_1
    :try_start_2
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to query for thumbnail for Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    .line 8
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v3

    .line 9
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move-object v1, v3

    goto :goto_4

    .line 10
    :cond_3
    iget-object v6, v1, Lcom/apk/jk;->do:Lcom/apk/gk;

    if-eqz v6, :cond_e

    .line 11
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v7, v1, Lcom/apk/jk;->do:Lcom/apk/gk;

    if-eqz v7, :cond_d

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    const-wide/16 v7, 0x0

    .line 14
    iget-object v9, v1, Lcom/apk/jk;->do:Lcom/apk/gk;

    if-eqz v9, :cond_4

    .line 15
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    throw v3

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 17
    :try_start_3
    iget-object v1, v1, Lcom/apk/jk;->new:Landroid/content/ContentResolver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    const/4 v2, -0x1

    if-eqz v1, :cond_a

    .line 18
    iget-object v4, p0, Lcom/apk/hk;->if:Lcom/apk/jk;

    iget-object v6, p0, Lcom/apk/hk;->do:Landroid/net/Uri;

    if-eqz v4, :cond_9

    .line 19
    :try_start_4
    iget-object v7, v4, Lcom/apk/jk;->new:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 20
    iget-object v7, v4, Lcom/apk/jk;->try:Ljava/util/List;

    iget-object v4, v4, Lcom/apk/jk;->for:Lcom/apk/nl;

    invoke-static {v7, v3, v4}, Lcom/apk/ij;->do(Ljava/util/List;Ljava/io/InputStream;Lcom/apk/nl;)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_b

    .line 21
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    nop

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 22
    :catch_3
    :try_start_6
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open uri: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    if-eqz v3, :cond_a

    .line 24
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :goto_5
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 25
    :catch_4
    :cond_8
    throw v0

    .line 26
    :cond_9
    throw v3

    :catch_5
    :cond_a
    :goto_6
    const/4 v0, -0x1

    :cond_b
    :goto_7
    if-eq v0, v2, :cond_c

    .line 27
    new-instance v2, Lcom/apk/xj;

    invoke-direct {v2, v1, v0}, Lcom/apk/xj;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v2

    :cond_c
    return-object v1

    :catch_6
    move-exception v0

    .line 28
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE opening uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0

    .line 30
    :cond_d
    throw v3

    .line 31
    :cond_e
    throw v3

    :goto_8
    if-eqz v3, :cond_f

    .line 32
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    .line 33
    :cond_10
    throw v3
.end method

.method public try()Lcom/apk/dj;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/dj;->do:Lcom/apk/dj;

    return-object v0
.end method
