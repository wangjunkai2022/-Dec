.class public Ltop/niunaijun/blackbox/core/VMCore;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "VMCoreJava"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "blackdex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addIORule(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native cookieDumpDex(JLjava/lang/String;Z)V
.end method

.method public static cookieDumpDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getCookies(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v6

    new-instance v4, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getDexDumpDir()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    invoke-direct {v5}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    iput-object p1, v5, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v9

    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    move v10, v11

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v9, :cond_2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    new-instance v1, Ltop/niunaijun/blackbox/core/_$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;

    invoke-direct/range {v1 .. v8}, Ltop/niunaijun/blackbox/core/_$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;-><init>(JLjava/io/File;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v12, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    :goto_4
    if-ge v11, v1, :cond_5

    aget-object v2, v0, v11

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/DexUtils;->fixDex(Ljava/io/File;)V

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static native enableIO()V
.end method

.method public static findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "/"

    const-string v2, "."

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v0, "<init>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    :try_start_1
    invoke-static {v0}, Ltop/niunaijun/jnihook/MethodUtils;->getDesc(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Ltop/niunaijun/jnihook/MethodUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCallingUid(I)I
    .locals 0

    return p0
.end method

.method public static native hideXposed()V
.end method

.method private static native hookDumpDex(Ljava/lang/String;)V
.end method

.method public static native init(I)V
.end method

.method static synthetic lambda$cookieDumpDex$0(JLjava/io/File;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->isFixCodeItem()Z

    move-result v1

    invoke-static {p0, p1, v0, v1}, Ltop/niunaijun/blackbox/core/VMCore;->cookieDumpDex(JLjava/lang/String;Z)V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static loadEmptyDex()[J
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ldalvik/system/DexFile;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->EMPTY_JAR:Ljava/io/File;

    invoke-direct {v0, v1}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getCookies(Ldalvik/system/DexFile;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v3, [J

    goto :goto_1
.end method

.method public static redirectPath(Ljava/io/File;)Ljava/io/File;
    .locals 1

    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
