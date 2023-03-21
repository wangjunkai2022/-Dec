.class final Lcom/wrapper/proxyapplication/MultiDexForMemoryDex$V26;
.super Ljava/lang/Object;
.source "MultiDexForMemoryDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V26"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;[Ljava/nio/ByteBuffer;ZZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 299
    invoke-static {p0, p1, p2, p3, p4}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex$V26;->install(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;[Ljava/nio/ByteBuffer;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;[Ljava/nio/ByteBuffer;ZZ)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/reflect/Field;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 311
    nop

    move-result-object p0

    .line 312
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-static {p0, p2, p1}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex$V26;->makeDexElements(Ljava/lang/Object;[Ljava/nio/ByteBuffer;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 315
    array-length v2, v0

    array-length p2, p2

    if-eq v2, p2, :cond_0

    goto/16 :goto_4

    .line 322
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    const-string v6, "dexFile"

    .line 325
    invoke-static {v5, v6}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->access$100(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 326
    nop

    move-result-object v5

    const-string v6, "mCookie"

    .line 328
    invoke-static {v5, v6}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->access$100(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 330
    nop

    move-result-object v7

    nop

    move-result-object v7

    const-string v8, "int"

    nop

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    nop

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 333
    nop

    goto :goto_1

    .line 335
    :cond_1
    nop

    move-result-object v7

    nop

    move-result-object v7

    const-string v8, "long"

    nop

    move-result v7

    if-eqz v7, :cond_2

    .line 338
    nop

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 339
    nop

    if-eqz p3, :cond_4

    const-wide/16 v7, 0x0

    .line 341
    nop

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 347
    nop

    .line 350
    :cond_3
    nop

    move-result-object v7

    .line 351
    nop

    if-eqz p3, :cond_4

    .line 354
    nop

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p3, "dexElements"

    .line 360
    invoke-static {p0, p3, v0}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    nop

    move-result p3

    if-lez p3, :cond_8

    .line 362
    nop

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/IOException;

    goto :goto_2

    :cond_6
    const-string p3, "dexElementsSuppressedExceptions"

    .line 365
    invoke-static {p0, p3}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->access$100(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    .line 367
    nop

    move-result-object p4

    check-cast p4, [Ljava/io/IOException;

    nop

    nop

    if-nez p4, :cond_7

    .line 371
    nop

    move-result p4

    new-array p4, p4, [Ljava/io/IOException;

    nop

    move-result-object p1

    check-cast p1, [Ljava/io/IOException;

    goto :goto_3

    .line 373
    :cond_7
    nop

    move-result v0

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/io/IOException;

    .line 375
    nop

    .line 376
    nop

    move-result p1

    array-length v1, p4

    invoke-static {p4, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 381
    :goto_3
    nop

    :cond_8
    const/4 p0, 0x1

    .line 384
    sput p0, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->hasInjected:I

    return-object p2

    :cond_9
    :goto_4
    return-object v1
.end method

.method private static makeDexElements(Ljava/lang/Object;[Ljava/nio/ByteBuffer;Ljava/util/List;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "makeInMemoryDexElements"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 397
    const-class v4, [Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/List;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p0, v1, v3}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->access$300(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    .line 399
    nop

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    return-object p0

    :catch_0
    move-exception p0

    .line 411
    :try_start_2
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    .line 408
    nop

    goto :goto_0

    :catch_2
    move-exception p0

    .line 405
    nop

    goto :goto_0

    :catch_3
    move-exception p0

    .line 402
    nop
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    :goto_0
    return-object v0
.end method
