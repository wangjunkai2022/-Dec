.class public final Lcom/bytedance/mapplog_dr/VivoIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;
    }
.end annotation


# static fields
.field public static final MSA_VERSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final listener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

.field public final mLock:Ljava/lang/Object;

.field public volatile mProloading:Z

.field public final mSecondCallGetDeviceIds:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public oaid:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    const-string v1, "1.0.26"

    const-string v2, "nllvm1623827671"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    const-string v1, "1.0.27"

    const-string v2, "nllvm1630571663641560568"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    const-string v1, "1.0.29"

    const-string v2, "nllvm1632808251147706677"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mSecondCallGetDeviceIds:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mProloading:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;-><init>(Lcom/bytedance/mapplog_dr/VivoIdentifier;Lcom/bytedance/mapplog_dr/VivoIdentifier$1;)V

    iput-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->listener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/bytedance/mapplog_dr/VivoIdentifier;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->setupOaid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/bytedance/mapplog_dr/VivoIdentifier;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/bytedance/mapplog_dr/VivoIdentifier;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mProloading:Z

    return p1
.end method

.method private callFromReflect(Landroid/content/Context;)I
    .locals 4

    const-string v0, "Oaid#"

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->loadMSALibrary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cert.pem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p1, v1}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->loadPemFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitCert(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "msa cert init exception"

    .line 4
    invoke-static {v0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/16 v1, -0x451

    const/4 v2, 0x0

    .line 5
    :try_start_1
    iget-object v3, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->listener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    invoke-static {p1, v2, v3}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v2, "msa sdk init exception"

    .line 6
    invoke-static {v0, v2, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v1
.end method

.method public static loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Runtime;

    const-string v5, "loadLibrary0"

    invoke-static {v2, v5, v1}, Lcom/bytedance/mapplog_dr/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "can not access loadLibrary0 method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadMSALibrary()Z
    .locals 7

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-class v1, Lcom/bun/miitmdid/core/MdidSdkHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v3, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {v1, v3}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u8f7d\u4fe1\u901a\u9662so\u5e93\u5f02\u5e38\uff0cmsaVersion is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0clib name is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    :try_start_1
    sget-object v4, Lcom/bytedance/mapplog_dr/VivoIdentifier;->MSA_VERSION_MAP:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    :catchall_1
    move-exception v4

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5982\u679c\u4fe1\u901a\u9662SDK\u4e0d\u662f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u8bf7\u5ffd\u7565\u8fd9\u4e2a\u9519\u8bef: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static loadPemFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private declared-synchronized setupOaid(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OaidMiit#setupOaid current oaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", global oaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->oaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Oaid#"

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->oaid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->oaid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getOaid(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mProloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, ""

    .line 4
    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;

    invoke-direct {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->oaid:Ljava/lang/String;

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->a:Ljava/lang/String;

    return-object p1

    :catchall_1
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public preloadOaid(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mProloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->callFromReflect(Landroid/content/Context;)I

    move-result v3

    const v4, 0xf63e6

    if-ne v3, v4, :cond_1

    const-string v3, "Oaid#"

    const-string v4, "OaidMiit#getDeviceIds \u83b7\u53d6\u63a5\u53e3\u662f\u5f02\u6b65\u7684\uff0c\u7ed3\u679c\u4f1a\u5728\u56de\u8c03\u4e2d\u8fd4\u56de\uff0c\u56de\u8c03\u6267\u884c\u7684\u56de\u8c03\u53ef\u80fd\u5728\u5de5\u4f5c\u7ebf\u7a0b"

    .line 4
    invoke-static {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mSecondCallGetDeviceIds:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->preloadOaid(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const-string p1, "\u7ed3\u679c\u4f1a\u5728\u56de\u8c03\u4e2d\u8fd4\u56de"

    .line 7
    iput-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    const p1, 0xf63e2

    if-ne v3, p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u77e5 resultCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->resultCode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "Oaid#"

    .line 9
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OaidMiit#getDeviceIds \u672a\u77e5 resultCode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Oaid#"

    const-string v1, "OaidMiit#getDeviceIds \u6b63\u786e"

    .line 10
    invoke-static {p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u6b63\u786e"

    .line 11
    iput-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->resultCode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, ""

    .line 12
    invoke-static {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput-boolean v2, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier;->mProloading:Z

    .line 14
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
