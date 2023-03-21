.class public Lcom/wrapper/proxyapplication/CustomerClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "CustomerClassLoader.java"


# static fields
.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private initialized:Z

.field private final libPath:Ljava/lang/String;

.field private final mDexOutputPath:Ljava/lang/String;

.field private mDexs:[Ldalvik/system/DexFile;

.field private mFiles:[Ljava/io/File;

.field private mLibPaths:[Ljava/lang/String;

.field private mPaths:[Ljava/lang/String;

.field private mZips:[Ljava/util/zip/ZipFile;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    nop

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, p3, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    :try_start_0
    const-string p1, "parent"

    .line 80
    invoke-static {p4, p1}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 81
    nop

    .line 82
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    throw p1

    :catch_1
    move-exception p1

    .line 84
    throw p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private native ShowLogs(Ljava/lang/String;I)I
.end method

.method private declared-synchronized ensureInit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 94
    monitor-exit p0

    nop

    :cond_0
    const/4 v0, 0x1

    .line 97
    :try_start_1
    nop

    .line 99
    nop

    const-string v1, ":"

    nop

    move-result-object v0

    nop

    .line 100
    nop

    array-length v0, v0

    .line 103
    new-array v1, v0, [Ljava/io/File;

    nop

    .line 104
    new-array v1, v0, [Ljava/util/zip/ZipFile;

    nop

    .line 105
    new-array v1, v0, [Ldalvik/system/DexFile;

    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 110
    new-instance v3, Ljava/io/File;

    nop

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    nop

    aput-object v3, v4, v2

    .line 113
    nop

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 115
    :try_start_2
    nop

    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v5, v4, v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :catch_0
    :try_start_3
    nop

    if-eqz v3, :cond_1

    .line 125
    nop

    aget-object v3, v3, v2

    nop

    invoke-static {v3, v4}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    nop

    nop

    aget-object v5, v5, v2

    invoke-static {v5, v3, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    aput-object v3, v4, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 133
    :catch_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "load dex fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :catch_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "load dex fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "java.library.path"

    const-string v2, "."

    .line 142
    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "path.separator"

    const-string v3, ":"

    .line 143
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file.separator"

    const-string v4, "/"

    .line 144
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    nop

    if-eqz v4, :cond_4

    .line 147
    nop

    move-result v4

    if-lez v4, :cond_3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    nop

    nop

    nop

    nop

    nop

    move-result-object v0

    goto :goto_2

    .line 152
    :cond_3
    nop

    .line 156
    :cond_4
    :goto_2
    nop

    move-result-object v0

    nop

    .line 157
    nop

    array-length v0, v0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 162
    nop

    aget-object v2, v2, v1

    nop

    move-result v2

    if-nez v2, :cond_5

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    nop

    aget-object v5, v4, v1

    nop

    nop

    nop

    move-result-object v2

    aput-object v2, v4, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 167
    :cond_6
    monitor-exit p0

    nop

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 493
    nop

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 495
    :try_start_0
    nop

    move-result-object v1

    .line 497
    nop

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 498
    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 493
    :catch_0
    nop

    move-result-object v0

    goto :goto_0

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    nop

    nop

    const-string p1, " not found in "

    nop

    nop

    move-result-object p0

    nop

    nop

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    nop

    const-string v1, "/"

    .line 178
    nop

    move-result p1

    if-nez p1, :cond_0

    .line 179
    nop

    .line 183
    :cond_0
    nop

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 187
    nop

    move-result-object p0

    :goto_0
    const-string p1, "."

    .line 197
    nop

    move-result p1

    if-gez p1, :cond_2

    .line 199
    nop

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 201
    nop

    :goto_1
    const-string p0, ".dex"

    .line 202
    nop

    .line 206
    nop

    move-result-object p0

    return-object p0
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 0

    .line 412
    nop

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 4

    .line 378
    nop

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 392
    :cond_0
    :try_start_0
    nop

    move-result-object p1

    .line 393
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    nop

    move-result-wide v2

    long-to-int p2, v2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p2, 0x1000

    new-array p2, p2, [B

    .line 395
    :goto_0
    nop

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 396
    nop

    goto :goto_0

    .line 398
    :cond_1
    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    nop

    move-result-object p1

    return-object p1

    :catch_0
    return-object v0
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    .line 350
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    :try_start_1
    nop

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    .line 358
    nop

    .line 359
    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    return-object p1

    :catch_1
    return-object v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    nop

    .line 230
    :goto_0
    nop

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 234
    nop

    aget-object v2, v2, v1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    if-eqz v2, :cond_1

    .line 235
    invoke-direct {p0, p1, v1}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ShowLogs(Ljava/lang/String;I)I

    .line 236
    nop

    move-result-object v2

    .line 237
    nop

    aget-object v3, v3, v1

    nop

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 244
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    return-object v2

    .line 255
    :cond_1
    nop

    aget-object v2, v2, v1

    const-string v5, ".class"

    if-eqz v2, :cond_2

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    nop

    move-result-object v3

    nop

    nop

    nop

    move-result-object v2

    .line 257
    nop

    aget-object v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    goto :goto_2

    .line 259
    :cond_2
    nop

    aget-object v2, v2, v1

    .line 260
    nop

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    nop

    aget-object v6, v6, v1

    nop

    const-string v6, "/"

    nop

    nop

    move-result-object v3

    nop

    nop

    nop

    move-result-object v2

    .line 262
    invoke-direct {p0, v2}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->loadFromDirectory(Ljava/lang/String;)[B

    :catch_1
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    :cond_4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    nop

    const-string p1, " in loader "

    nop

    nop

    nop

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 428
    nop

    .line 431
    :goto_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 432
    :goto_1
    nop

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    nop

    aget-object v3, v3, v1

    nop

    nop

    nop

    move-result-object v2

    .line 434
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    nop

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 439
    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    .line 302
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 308
    :cond_0
    nop

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 311
    nop

    aget-object v2, v2, v1

    .line 312
    nop

    aget-object v3, v3, v1

    .line 313
    nop

    aget-object v4, v4, v1

    const-string v5, ".dex"

    nop

    move-result v4

    if-nez v4, :cond_1

    .line 314
    nop

    move-result-object v3

    if-eqz v3, :cond_1

    .line 322
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar:"

    nop

    nop

    move-result-object v2

    nop

    const-string v2, "!/"

    nop

    nop

    nop

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 475
    nop

    move-result v0

    if-nez v0, :cond_1

    .line 476
    monitor-enter p0

    .line 477
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "Unknown"

    const-string v4, "0.0"

    const-string v5, "Unknown"

    const-string v6, "Unknown"

    const-string v7, "0.0"

    const-string v8, "Unknown"

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 480
    nop

    move-result-object v0

    .line 483
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 484
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
