.class public final Lcom/bytedance/pangle/plugin/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/bytedance/pangle/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/plugin/c;->a:Lcom/bytedance/pangle/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_package_name"

    .line 135
    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 137
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 138
    invoke-static {p6}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/b/b;->a()Lcom/bytedance/pangle/b/b;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/bytedance/pangle/b/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/StringBuilder;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "PluginLoader loadPluginInternal, plugin["

    const-string v6, "Zeus/load"

    const-string v7, ";"

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "PluginLoader"

    const-string v9, "load:"

    .line 36
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v0, v9}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/pangle/log/b;

    move-result-object v9

    if-nez v3, :cond_0

    const-string v0, "loadPluginInternal, plugin == null;"

    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] not exist !!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 39
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/pangle/plugin/Plugin;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "loadPluginInternal, !plugin.isInstalled();"

    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] not installed !!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    const-string v0, "isInstalled"

    .line 42
    invoke-virtual {v9, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x14

    cmp-long v0, v10, v14

    if-gtz v0, :cond_2

    cmp-long v0, v10, v12

    if-gez v0, :cond_3

    :cond_2
    const-string v0, "isInstall cost:"

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_3
    iget-object v0, v3, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v10

    invoke-static {v0, v10}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "loadPluginInternal, sourceApk not exist;"

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] file not exist !!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_4
    const-string v0, "getSourceFile"

    .line 48
    invoke-virtual {v9, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v0, v12, v14

    if-gtz v0, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-gez v0, :cond_6

    :cond_5
    const-string v0, "getSourceFile cost:"

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_6
    new-instance v11, Ljava/io/File;

    iget-object v0, v3, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v12

    invoke-static {v0, v12}, Lcom/bytedance/pangle/c/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "getNativeLibraryDir"

    .line 51
    invoke-virtual {v9, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v0, v12, v14

    if-gtz v0, :cond_7

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-gez v0, :cond_8

    :cond_7
    const-string v0, "getNativeLibraryDir cost:"

    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    const-string v13, "dalvik-cache"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_9

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    const-string v12, "dalvikCacheDir"

    .line 56
    invoke-virtual {v9, v12}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v18, v12, v14

    if-gtz v18, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v18, v12, v16

    if-gez v18, :cond_b

    :cond_a
    const-string v14, "dalvikCacheDirTime cost:"

    .line 57
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_b
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1f

    const/4 v14, 0x1

    if-ge v12, v13, :cond_d

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1e

    if-ne v12, v13, :cond_c

    sget v12, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v12, :cond_c

    goto :goto_0

    :cond_c
    const/4 v12, 0x0

    goto :goto_1

    :cond_d
    :goto_0
    const/4 v12, 0x1

    :goto_1
    const/4 v13, 0x0

    if-eqz v12, :cond_e

    .line 59
    new-instance v12, Lcom/bytedance/pangle/PluginClassLoader;

    const-string v15, ""

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v15, v0, v8, v13}, Lcom/bytedance/pangle/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v12, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    :try_start_1
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    const-string v8, "addDexPath"

    new-array v13, v14, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v15, v13, v20

    invoke-static {v0, v8, v13}, Lcom/bytedance/pangle/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v10, v8, v20

    .line 62
    invoke-virtual {v0, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PluginLoader createPluginClassLoader#addDexPath success >>>"

    .line 63
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v8, "PluginLoader createPluginClassLoader#addDexPath fail >>>"

    .line 64
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 65
    :cond_e
    new-instance v8, Lcom/bytedance/pangle/PluginClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v0, v12, v13}, Lcom/bytedance/pangle/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    .line 67
    :goto_2
    iget-boolean v0, v3, Lcom/bytedance/pangle/plugin/Plugin;->mOpenLoadClassOpt:Z

    if-eqz v0, :cond_f

    .line 68
    sget-object v0, Lcom/bytedance/pangle/c/e;->a:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/bytedance/pangle/plugin/c$1;

    invoke-direct {v8, v1, v3}, Lcom/bytedance/pangle/plugin/c$1;-><init>(Lcom/bytedance/pangle/plugin/c;Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_f
    const-string v0, "classloader"

    .line 69
    invoke-virtual {v9, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v18, 0x14

    cmp-long v0, v12, v18

    if-gtz v0, :cond_10

    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-gez v0, :cond_11

    :cond_10
    const-string v0, "classloader cost:"

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_11
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v8, 0xf

    invoke-virtual {v0, v10, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v8, "getPackageInfo"

    .line 72
    invoke-virtual {v9, v8}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v18, 0x14

    cmp-long v8, v12, v18

    if-gtz v8, :cond_12

    const-wide/16 v15, 0x0

    cmp-long v8, v12, v15

    if-gez v8, :cond_13

    :cond_12
    const-string v8, "getPackageInfo cost:"

    .line 73
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_13
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v8

    iget-object v12, v3, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v8, v12}, Lcom/bytedance/pangle/transform/ZeusTransformUtils;->wrapperContext2Application(Ljava/lang/Object;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    iput-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplication:Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    .line 75
    new-instance v8, Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

    .line 76
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 77
    iget-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v3, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplication:Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    invoke-virtual {v11}, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->getDataDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 78
    iget-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 79
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 80
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 81
    :cond_14
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 82
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :cond_15
    const-string v8, "setApplication"

    .line 83
    invoke-virtual {v9, v8}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x14

    cmp-long v8, v10, v12

    if-gtz v8, :cond_16

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-gez v8, :cond_17

    :cond_16
    const-string v8, "setApplication cost:"

    .line 84
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_17
    new-instance v8, Lcom/bytedance/pangle/res/PluginResources;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v8, v10, v2}, Lcom/bytedance/pangle/res/PluginResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    const-string v8, "makeResources"

    .line 86
    invoke-virtual {v9, v8}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x14

    cmp-long v8, v10, v12

    if-gtz v8, :cond_18

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-gez v8, :cond_19

    :cond_18
    const-string v8, "makeResources cost:"

    .line 87
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_19
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v10, Lcom/bytedance/pangle/plugin/c$2;

    invoke-direct {v10, v1, v3}, Lcom/bytedance/pangle/plugin/c$2;-><init>(Lcom/bytedance/pangle/plugin/c;Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-virtual {v8, v10}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 89
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v10, "main"

    const-string v11, ":"

    if-eqz v8, :cond_1c

    .line 90
    :try_start_3
    array-length v12, v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_1c

    aget-object v15, v8, v13

    .line 91
    iget-object v14, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1b

    iget-object v14, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a

    goto :goto_4

    .line 92
    :cond_1a
    iget-object v14, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v21, 0x1

    aget-object v14, v14, v21

    iput-object v14, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    goto :goto_5

    .line 93
    :cond_1b
    :goto_4
    iput-object v10, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 94
    :goto_5
    iget-object v14, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginActivities:Ljava/util/HashMap;

    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    const/4 v14, 0x1

    goto :goto_3

    .line 95
    :cond_1c
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1f

    .line 96
    array-length v8, v1

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v8, :cond_1f

    aget-object v13, v1, v12

    .line 97
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1e

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1d

    goto :goto_7

    .line 98
    :cond_1d
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iput-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    goto :goto_8

    .line 99
    :cond_1e
    :goto_7
    iput-object v10, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 100
    :goto_8
    iget-object v14, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginServices:Ljava/util/HashMap;

    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_1f
    const-string v1, "resolveActivityServices"

    .line 101
    invoke-virtual {v9, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x14

    cmp-long v1, v12, v14

    if-gtz v1, :cond_20

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gez v1, :cond_21

    :cond_20
    const-string v1, "resolveActivityServices cost:"

    .line 102
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_21
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_24

    .line 104
    array-length v8, v1

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v8, :cond_24

    aget-object v13, v1, v12

    .line 105
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_23

    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_22

    goto :goto_a

    .line 106
    :cond_22
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iput-object v14, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    goto :goto_b

    .line 107
    :cond_23
    :goto_a
    iput-object v10, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 108
    :goto_b
    iget-object v14, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginReceiver:Ljava/util/HashMap;

    iget-object v15, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_24
    const-string v1, "resolveReceiver"

    .line 109
    invoke-virtual {v9, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x14

    cmp-long v1, v12, v14

    if-gtz v1, :cond_25

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gez v1, :cond_26

    :cond_25
    const-string v1, "resolveReceiver cost:"

    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_26
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_29

    .line 112
    array-length v8, v1

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v8, :cond_29

    aget-object v13, v1, v12

    .line 113
    iget-object v14, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_28

    iget-object v14, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_27

    goto :goto_d

    .line 114
    :cond_27
    iget-object v14, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iput-object v14, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    goto :goto_e

    .line 115
    :cond_28
    :goto_d
    iput-object v10, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 116
    :goto_e
    iget-object v14, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    iget-object v15, v13, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_29
    const-string v1, "resolveProvider"

    .line 117
    invoke-virtual {v9, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x14

    cmp-long v1, v10, v12

    if-gtz v1, :cond_2a

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-gez v1, :cond_2b

    :cond_2a
    const-string v1, "resolveProvider cost:"

    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2b
    iget-object v1, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    if-eqz v1, :cond_2c

    iget-object v1, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 120
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object v1

    iget-object v8, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v1, v8, v3}, Lcom/bytedance/pangle/provider/ContentProviderManager;->installContentProviders(Ljava/util/Collection;Lcom/bytedance/pangle/plugin/Plugin;)V

    :cond_2c
    const-string v1, "installProvider"

    .line 121
    invoke-virtual {v9, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x14

    cmp-long v1, v10, v12

    if-gtz v1, :cond_2d

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-gez v1, :cond_2e

    :cond_2d
    const-string v1, "installProvider cost:"

    .line 122
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_2e
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 124
    iget-object v1, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/pangle/ZeusApplication;

    iput-object v0, v3, Lcom/bytedance/pangle/plugin/Plugin;->mApplication:Lcom/bytedance/pangle/ZeusApplication;

    .line 125
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/pangle/ZeusApplication;->attach(Lcom/bytedance/pangle/plugin/Plugin;Landroid/app/Application;)V

    :cond_2f
    const-string v0, "makeApplication"

    .line 126
    invoke-virtual {v9, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v8, 0x14

    cmp-long v10, v0, v8

    if-gtz v10, :cond_30

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-gez v10, :cond_31

    :cond_30
    const-string v8, "makeApplication cost:"

    .line 127
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    :cond_31
    :try_start_4
    iget-object v0, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    const-string v1, "com.volcengine.StubConfig"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bytedance/pangle/util/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    const/4 v1, 0x1

    return v1

    :catchall_2
    move-exception v0

    const-string v1, "loadPluginInternal "

    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 13

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Zeus/load"

    const-string v2, "PluginLoader loadPlugin, plugin == null, pkg = "

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Zeus/load"

    const-string v3, "PluginLoader loadPlugin, UN_INSTALLED, "

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return v1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->isLoaded()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 8
    monitor-exit v0

    return v3

    .line 9
    :cond_2
    sget-object v4, Lcom/bytedance/pangle/plugin/c;->a:Lcom/bytedance/pangle/g;

    const/16 v5, 0x7d0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    const-string v2, "Zeus/load"

    const-string v4, "PluginLoader"

    const-string v5, "loadPlugin:"

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/pangle/log/b;

    move-result-object v2

    .line 11
    sget-object v4, Lcom/bytedance/pangle/b/b;->g:Ljava/lang/String;

    sget v5, Lcom/bytedance/pangle/b/b$a;->z:I

    iget-object v6, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    .line 13
    invoke-static/range {v4 .. v10}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v4, 0x8

    new-array v5, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, v4, v5}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-direct {p0, p1, v0, v4}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/StringBuilder;)Z

    move-result v5

    const-string v6, "loadPluginInternal:"

    .line 17
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/pangle/log/b;->b(Ljava/lang/String;)J

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 18
    invoke-virtual {v0, v5}, Lcom/bytedance/pangle/plugin/Plugin;->setLifeCycle(I)V

    .line 19
    sget-object v6, Lcom/bytedance/pangle/b/b;->h:Ljava/lang/String;

    sget v7, Lcom/bytedance/pangle/b/b$a;->A:I

    iget-object v8, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v9

    invoke-virtual {v2}, Lcom/bytedance/pangle/log/b;->a()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static/range {v6 .. v12}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v2, 0x9

    new-array v4, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {p1, v2, v4}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 23
    sget-object v5, Lcom/bytedance/pangle/plugin/c;->a:Lcom/bytedance/pangle/g;

    const/16 v6, 0x834

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v2, "plugin:"

    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " versionCode:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "load failed;"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v5, Lcom/bytedance/pangle/b/b;->h:Ljava/lang/String;

    sget v6, Lcom/bytedance/pangle/b/b$a;->B:I

    iget-object v7, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v8

    const-wide/16 v9, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 27
    invoke-static/range {v5 .. v11}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v2, 0xa

    new-array v4, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p1, v2, v4}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 29
    sget-object v5, Lcom/bytedance/pangle/plugin/c;->a:Lcom/bytedance/pangle/g;

    const/16 v6, 0x834

    const/4 v7, -0x1

    iget-object v8, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    :goto_0
    const-string p1, "Zeus/load"

    const-string v2, "PluginLoader loadFinished, "

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Zeus/load"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginLoader postResult, LOADED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    monitor-exit v0

    return v3

    .line 34
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
