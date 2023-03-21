.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u000bJ#\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "",
        "domainLabels",
        "findMatchingRule",
        "(Ljava/util/List;)Ljava/util/List;",
        "domain",
        "getEffectiveTldPlusOne",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "readTheList",
        "()V",
        "readTheListUninterruptibly",
        "",
        "publicSuffixListBytes",
        "publicSuffixExceptionListBytes",
        "setListBytes",
        "([B[B)V",
        "splitDomain",
        "(Ljava/lang/String;)Ljava/util/List;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "listRead",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "[B",
        "Ljava/util/concurrent/CountDownLatch;",
        "readCompleteLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "<init>",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# static fields
.field public static final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final else:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

.field public static final goto:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

.field public static final try:[B


# instance fields
.field public final do:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public for:[B

.field public final if:Ljava/util/concurrent/CountDownLatch;

.field public new:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->goto:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->try:[B

    const-string v0, "*"

    .line 2
    invoke-static {v0}, Lcom/apk/sb0;->continue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->case:Ljava/util/List;

    .line 3
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->else:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->if:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final do(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "domain"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unicodeDomain"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->if()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 5
    :try_start_1
    sget-object v5, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 6
    sget-object v5, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    const-string v6, "Failed to read public suffix list"

    const/4 v7, 0x5

    .line 7
    invoke-virtual {v5, v6, v7, v4}, Lcom/apk/uj0;->this(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 8
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 9
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p1

    .line 11
    :cond_1
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->if:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 12
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    :cond_2
    :goto_3
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->for:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_1c

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [[B

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v8, "UTF_8"

    invoke-static {v7, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string v7, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v6, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v5, 0x0

    :goto_6
    const-string v6, "publicSuffixListBytes"

    const/4 v7, 0x0

    if-ge v5, v1, :cond_8

    .line 15
    sget-object v8, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->goto:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->for:[B

    if-eqz v9, :cond_7

    invoke-static {v8, v9, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;->do(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;[B[[BI)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    invoke-static {v6}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v7

    :cond_8
    move-object v8, v7

    :goto_7
    if-le v1, v2, :cond_b

    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    .line 17
    array-length v9, v5

    sub-int/2addr v9, v2

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_b

    .line 18
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->try:[B

    aput-object v11, v5, v10

    .line 19
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->goto:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

    iget-object v12, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->for:[B

    if-eqz v12, :cond_a

    invoke-static {v11, v12, v5, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;->do(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;[B[[BI)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    invoke-static {v6}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v7

    :cond_b
    move-object v11, v7

    :goto_9
    if-eqz v11, :cond_e

    sub-int/2addr v1, v2

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_e

    .line 20
    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->goto:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->new:[B

    if-eqz v9, :cond_d

    invoke-static {v6, v9, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;->do(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;[B[[BI)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    const-string p1, "publicSuffixExceptionListBytes"

    invoke-static {p1}, Lcom/apk/nd0;->this(Ljava/lang/String;)V

    throw v7

    :cond_e
    move-object v6, v7

    :goto_b
    const/4 v1, 0x6

    const/16 v4, 0x2e

    const/16 v5, 0x21

    if-eqz v6, :cond_f

    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [C

    aput-char v4, v8, v3

    .line 22
    invoke-static {v6, v8, v3, v3, v1}, Lcom/apk/ie0;->import(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v1

    goto :goto_e

    :cond_f
    if-nez v8, :cond_10

    if-nez v11, :cond_10

    .line 23
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->case:Ljava/util/List;

    goto :goto_e

    :cond_10
    if-eqz v8, :cond_11

    new-array v6, v2, [C

    aput-char v4, v6, v3

    .line 24
    invoke-static {v8, v6, v3, v3, v1}, Lcom/apk/ie0;->import(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v6

    goto :goto_c

    .line 25
    :cond_11
    sget-object v6, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    :goto_c
    if-eqz v11, :cond_12

    new-array v8, v2, [C

    aput-char v4, v8, v3

    .line 26
    invoke-static {v11, v8, v3, v3, v1}, Lcom/apk/ie0;->import(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v1

    goto :goto_d

    .line 27
    :cond_12
    sget-object v1, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    .line 28
    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v4, v8, :cond_13

    move-object v1, v6

    .line 29
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_14

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_14

    return-object v7

    .line 30
    :cond_14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_15

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_f

    .line 32
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_f
    sub-int/2addr v0, v1

    .line 33
    invoke-virtual {p0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v1, "$this$asSequence"

    .line 34
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/apk/vc0;

    invoke-direct {v1, p1}, Lcom/apk/vc0;-><init>(Ljava/lang/Iterable;)V

    const-string p1, "$this$drop"

    .line 36
    invoke-static {v1, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v0, :cond_16

    const/4 p1, 0x1

    goto :goto_10

    :cond_16
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_1b

    if-nez v0, :cond_17

    goto :goto_11

    .line 37
    :cond_17
    instance-of p1, v1, Lcom/apk/ae0;

    if-eqz p1, :cond_18

    check-cast v1, Lcom/apk/ae0;

    invoke-interface {v1, v0}, Lcom/apk/ae0;->do(I)Lcom/apk/be0;

    move-result-object v1

    goto :goto_11

    .line 38
    :cond_18
    new-instance p1, Lcom/apk/zd0;

    invoke-direct {p1, v1, v0}, Lcom/apk/zd0;-><init>(Lcom/apk/be0;I)V

    move-object v1, p1

    :goto_11
    const-string p1, "."

    const-string v0, ""

    const-string v4, "..."

    const-string v5, "$this$joinToString"

    .line 39
    invoke-static {v1, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "separator"

    invoke-static {p1, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "prefix"

    invoke-static {v0, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "postfix"

    invoke-static {v0, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "truncated"

    invoke-static {v4, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "$this$joinTo"

    .line 41
    invoke-static {v1, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "buffer"

    invoke-static {v10, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 43
    invoke-interface {v1}, Lcom/apk/be0;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, v2

    if-le v3, v2, :cond_19

    .line 44
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 45
    :cond_19
    invoke-static {v10, v4, v7}, Lcom/apk/sb0;->case(Ljava/lang/Appendable;Ljava/lang/Object;Lcom/apk/id0;)V

    goto :goto_12

    .line 46
    :cond_1a
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 47
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "joinTo(StringBuilder(), \u2026ed, transform).toString()"

    invoke-static {p1, v0}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1b
    const-string p1, "Requested element count "

    const-string v1, " is less than zero."

    .line 48
    invoke-static {p1, v0, v1}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final for(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    const/4 v3, 0x6

    .line 1
    invoke-static {p1, v1, v2, v2, v3}, Lcom/apk/ie0;->import(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    const-string v1, "$this$last"

    .line 2
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "$this$lastIndex"

    .line 4
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "$this$dropLast"

    .line 8
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v3, "$this$take"

    .line 10
    invoke-static {p1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    if-nez v1, :cond_2

    .line 11
    sget-object p1, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    invoke-static {p1}, Lcom/apk/uc0;->this(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_4

    const-string v0, "$this$first"

    .line 13
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/apk/uc0;->try(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/apk/sb0;->continue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    if-ne v2, v1, :cond_5

    .line 19
    :cond_6
    invoke-static {v3}, Lcom/apk/sb0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_7
    const-string p1, "Requested element count "

    const-string v0, " is less than zero."

    .line 20
    invoke-static {p1, v1, v0}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object p1

    .line 21
    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "List is empty."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final if()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/yk0;

    .line 3
    invoke-static {v0}, Lcom/apk/bl0;->new(Ljava/io/InputStream;)Lcom/apk/ll0;

    move-result-object v0

    .line 4
    invoke-direct {v1, v0}, Lcom/apk/yk0;-><init>(Lcom/apk/ll0;)V

    invoke-static {v1}, Lcom/apk/sb0;->class(Lcom/apk/ll0;)Lcom/apk/tk0;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/apk/fl0;

    :try_start_0
    invoke-virtual {v2}, Lcom/apk/fl0;->readInt()I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/apk/fl0;->try(J)[B

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/apk/fl0;->readInt()I

    move-result v4

    int-to-long v4, v4

    .line 8
    invoke-virtual {v2, v4, v5}, Lcom/apk/fl0;->try(J)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    invoke-static {v0, v1}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    monitor-enter p0

    .line 11
    :try_start_1
    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iput-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->for:[B

    .line 12
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->new:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->if:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v1

    .line 16
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method
