.class public Lcom/qq/e/comm/managers/plugin/PM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/io/File;

.field public volatile e:I

.field public f:Ldalvik/system/DexClassLoader;

.field public g:Ljava/io/RandomAccessFile;

.field public h:Ljava/nio/channels/FileLock;

.field public i:Z

.field public final j:Lcom/qq/e/comm/managers/plugin/f;

.field public volatile k:Lcom/qq/e/comm/pi/POFactory;

.field public l:I

.field public m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$b;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/plugin/PM$b;-><init>()V

    sput-object v0, Lcom/qq/e/comm/managers/plugin/PM;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/comm/managers/plugin/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->n:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/f;

    invoke-static {p1}, Lcom/qq/e/comm/managers/plugin/b;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;I)I
    .locals 0

    iput p1, p0, Lcom/qq/e/comm/managers/plugin/PM;->l:I

    return p1
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/e/comm/managers/plugin/PM;->getPluginVersion()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x2710

    if-le v1, v2, :cond_0

    const-string v2, "vas"

    :try_start_1
    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "pv"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "sig"

    :try_start_2
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "appId"

    :try_start_3
    invoke-static {}, Lcom/qq/e/comm/managers/b;->b()Lcom/qq/e/comm/managers/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "pn"

    :try_start_4
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "ict"

    :try_start_5
    iget v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v0
.end method

.method public static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    return p0
.end method

.method public static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    return p1
.end method

.method private b()Z
    .locals 4

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/h;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/h;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/qq/e/comm/managers/plugin/b;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    sget-object v0, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/h;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getBuildInPluginVersion()I

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    const-string v2, "\u63d2\u4ef6\u521d\u59cb\u5316\u5931\u8d25 "

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1
.end method

.method public static b(Lcom/qq/e/comm/managers/plugin/PM;)Z
    .locals 5

    const-string v0, "TimeStap_AFTER_PLUGIN_INIT:"

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeStap_BEFORE_PLUGIN_INIT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->b()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string v2, "\u63d2\u4ef6\u52a0\u8f7d\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v2, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return v1

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lcom/qq/e/comm/managers/plugin/PM;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v1, "PluginFile:\t"

    .line 1
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    .line 2
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/f;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "\u63d2\u4ef6ClassLoader\u6784\u9020\u53d1\u751f\u5f02\u5e38"

    .line 3
    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object p0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/f;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/qq/e/comm/managers/plugin/f;->b()V

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    :cond_3
    :goto_1
    return-void

    :cond_4
    throw v0
.end method

.method private c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/g;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/h;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/h;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/qq/e/comm/managers/plugin/g;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/g;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/h;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/h;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/qq/e/comm/managers/plugin/g;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextExist,Updated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/qq/e/comm/managers/plugin/g;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/h;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/h;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/qq/e/comm/managers/plugin/g;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/g;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/g;->c()I

    move-result v2

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getBuildInPluginVersion()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v0, "last updated plugin version ="

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";asset plugin version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getBuildInPluginVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/g;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/g;->c()I

    move-result v1

    iput v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/h;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->n:Z

    return v0

    :cond_3
    return v1
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->n:Z

    .line 1
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    const-string v2, "start_crash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "crash_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->o:Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "\u52a0\u8f7d\u672c\u5730\u63d2\u4ef6"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qq/e/comm/managers/plugin/PM$a;

    invoke-direct {v1, p0}, Lcom/qq/e/comm/managers/plugin/PM$a;-><init>(Lcom/qq/e/comm/managers/plugin/PM;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->m:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/e;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/qq/e/comm/managers/plugin/PM;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->m:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetFactoryInstaceforInterface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    :goto_1
    const-string v2, "PluginClassLoader is parent"

    .line 4
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    :try_start_1
    sget-object v0, Lcom/qq/e/comm/managers/plugin/PM;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "getInstance"

    const/4 v2, 0x2

    :try_start_2
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    const-class v6, Lorg/json/JSONObject;

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceDelegateFactory ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/qq/e/comm/managers/plugin/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory  implemention name is not specified for interface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/managers/plugin/e;

    const-string v2, "Fail to getfactory implement instance for interface:"

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/qq/e/comm/managers/plugin/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/qq/e/comm/managers/plugin/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qq/e/comm/managers/plugin/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPOFactory()Lcom/qq/e/comm/pi/POFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/e;
        }
    .end annotation

    const-class v0, Lcom/qq/e/comm/pi/POFactory;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;

    if-nez v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qq/e/comm/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/comm/pi/POFactory;

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;
    :try_end_1
    .catch Lcom/qq/e/comm/managers/plugin/e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-boolean v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->n:Z

    if-eqz v2, :cond_0

    const-string v1, "\u63d2\u4ef6\u52a0\u8f7d\u9519\u8bef\uff0c\u56de\u9000\u5230\u5185\u7f6e\u7248\u672c"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->o:Z

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->d()V

    invoke-virtual {p0, v0}, Lcom/qq/e/comm/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/POFactory;

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;

    return-object v0
.end method

.method public getPluginVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    return v0
.end method

.method public tryLockUpdate()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const-string v2, "lock"

    invoke-static {v2, v1}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method
