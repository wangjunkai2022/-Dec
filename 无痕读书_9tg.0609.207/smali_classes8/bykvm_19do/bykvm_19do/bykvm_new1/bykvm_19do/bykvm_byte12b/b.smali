.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;
.super Ljava/lang/Object;
.source "CrashUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;,
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/c;


# direct methods
.method public static a(JLjava/lang/String;[BLbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;Ljava/lang/String;Z)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 p1, 0xc9

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(I)V

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x0

    new-array p3, p0, [B

    .line 2
    :cond_1
    array-length p0, p3

    const/4 p1, 0x0

    .line 3
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;

    const/16 v1, 0x80

    if-ne v0, p4, :cond_2

    if-le p0, v1, :cond_2

    .line 4
    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->c([B)[B

    move-result-object p3

    const-string p1, "gzip"

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;

    if-ne v0, p4, :cond_3

    if-le p0, v1, :cond_3

    .line 6
    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->b([B)[B

    move-result-object p3

    const-string p1, "deflate"

    :cond_3
    :goto_0
    move-object v3, p1

    move-object v1, p3

    if-nez v1, :cond_4

    .line 7
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 p1, 0xca

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(I)V

    return-object p0

    :cond_4
    if-eqz p6, :cond_8

    .line 8
    array-length p0, v1

    invoke-static {v1, p0}, Lcom/bytedance/mapplog/util/TTEncryptUtils;->do([BI)[B

    move-result-object p0

    if-eqz p0, :cond_7

    .line 9
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "?"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 11
    invoke-static {p2, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    const-string p1, "&"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 13
    invoke-static {p2, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_1
    const-string p1, "tt_data=a"

    .line 14
    invoke-static {p2, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "application/octet-stream;tt-data=a"

    move-object v1, p0

    :cond_7
    move-object v0, p2

    move-object v2, p5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v4, "POST"

    .line 15
    invoke-static/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "POST"

    move-object v0, p2

    move-object v2, p5

    .line 16
    invoke-static/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;
    .locals 1

    .line 69
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;
    .locals 8

    .line 71
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x200000

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;

    const-string v6, "application/json; charset=utf-8"

    move-object v3, p0

    move v7, p2

    invoke-static/range {v1 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(JLjava/lang/String;[BLbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$a;Ljava/lang/String;Z)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object p0

    return-object p0

    .line 73
    :cond_1
    :goto_0
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 p1, 0xc9

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 74
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V

    .line 75
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 p2, 0xcf

    invoke-direct {p1, p2, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(ILjava/lang/Throwable;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;
    .locals 5

    const-string v0, "gzip"

    const/4 v1, 0x0

    .line 17
    :try_start_0
    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/c;

    if-eqz v2, :cond_0

    .line 18
    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/c;

    invoke-interface {v2, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 19
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-eqz p6, :cond_1

    .line 20
    new-instance v3, Ljava/net/URL;

    invoke-static {p0, v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_if122/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz p6, :cond_3

    .line 23
    :try_start_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_3

    .line 24
    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v4

    goto/16 :goto_7

    :cond_3
    if-eqz p5, :cond_4

    const/4 p5, 0x1

    .line 26
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_2

    :cond_4
    const/4 p5, 0x0

    .line 27
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_2
    if-eqz p2, :cond_5

    const-string p5, "Content-Type"

    .line 28
    invoke-virtual {p0, p5, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    const-string p2, "Content-Encoding"

    .line 29
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p2, "Accept-Encoding"

    .line 30
    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_a

    .line 31
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 32
    array-length p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p2, :cond_7

    .line 33
    :try_start_2
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 34
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 35
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :try_start_4
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v1

    :goto_3
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    .line 37
    throw p1

    .line 38
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_9

    .line 39
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz p2, :cond_8

    .line 42
    :try_start_6
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 43
    :try_start_7
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 44
    :try_start_8
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_3
    move-exception p3

    move-object v1, p2

    goto :goto_5

    :catchall_4
    move-exception p2

    move-object p3, p2

    :goto_5
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    .line 45
    throw p3

    .line 46
    :cond_8
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 47
    :goto_6
    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a([B)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 48
    :try_start_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 49
    :catch_0
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    return-object p2

    :catchall_5
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    goto :goto_7

    .line 50
    :cond_9
    :try_start_a
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 p3, 0xce

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "http response code "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 51
    :try_start_b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 52
    :catch_1
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    return-object p2

    .line 53
    :cond_a
    :try_start_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request method is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_6
    move-exception p0

    move-object p1, v1

    .line 54
    :goto_7
    :try_start_d
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V

    .line 55
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 p3, 0xcf

    invoke-direct {p2, p3, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(ILjava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v1, :cond_b

    .line 56
    :try_start_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 57
    :catch_2
    :cond_b
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    return-object p2

    :catchall_7
    move-exception p0

    if-eqz v1, :cond_c

    .line 58
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 59
    :catch_3
    :cond_c
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    .line 60
    throw p0
.end method

.method public static a([B)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;
    .locals 4

    if-eqz p0, :cond_2

    .line 61
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 p0, 0xcc

    .line 63
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 65
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(ILorg/json/JSONObject;)V

    return-object v2

    .line 66
    :cond_1
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    invoke-direct {v1, p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 67
    :catch_0
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    invoke-direct {v1, p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 68
    :cond_2
    :goto_0
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;-><init>(I)V

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->f()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 77
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 80
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;->a(Ljava/io/Closeable;)V

    .line 82
    throw p0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b([B)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 3
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 4
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    new-array p0, v1, [B

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, p0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static c([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 8
    throw p0
.end method
