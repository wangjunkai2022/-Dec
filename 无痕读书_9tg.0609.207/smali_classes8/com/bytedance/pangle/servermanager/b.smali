.class public final Lcom/bytedance/pangle/servermanager/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/pangle/d;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/bytedance/pangle/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/servermanager/b;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/servermanager/b;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/servermanager/b;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/servermanager/b;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/servermanager/b;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 6

    .line 23
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->hasInit()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getServerManagerHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_7

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "query_binder"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    const-class v1, Lcom/bytedance/pangle/servermanager/AbsServerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "binder"

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bytedance/pangle/servermanager/a;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, v0, Lcom/bytedance/pangle/servermanager/a;->a:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 31
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    :try_start_0
    new-instance v1, Lcom/bytedance/pangle/servermanager/b$1;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/pangle/servermanager/b$1;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 33
    sget-object v1, Lcom/bytedance/pangle/servermanager/b;->d:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x301acbba

    const/4 v5, 0x1

    if-eq v1, v4, :cond_2

    const v2, 0x7643c6b5

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "service"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "package"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    goto :goto_3

    .line 35
    :cond_4
    invoke-static {v0}, Lcom/bytedance/pangle/d$a;->a(Landroid/os/IBinder;)Lcom/bytedance/pangle/d;

    move-result-object p0

    return-object p0

    .line 36
    :cond_5
    invoke-static {v0}, Lcom/bytedance/pangle/c$a;->a(Landroid/os/IBinder;)Lcom/bytedance/pangle/c;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Zeus/server"

    const-string v0, "generateServerManager failed."

    .line 37
    invoke-static {p1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v3

    .line 38
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5bbf\u4e3b\u4e2d\u6ca1\u6709\u627e\u5bf9\u5bf9\u5e94\u8fdb\u7a0b\u7684serverManager "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "generateServerManager \u8bf7\u5148\u521d\u59cb\u5316Zeus, processName:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Lcom/bytedance/pangle/c;
    .locals 4

    .line 12
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->d:Ljava/util/Map;

    const-string v1, "main"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    :cond_0
    sput-object v1, Lcom/bytedance/pangle/servermanager/b;->f:Lcom/bytedance/pangle/c;

    .line 15
    :cond_1
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->f:Lcom/bytedance/pangle/c;

    if-nez v0, :cond_3

    .line 16
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v2, "package"

    const-string v3, "main"

    .line 17
    invoke-static {v2, v3}, Lcom/bytedance/pangle/servermanager/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/bytedance/pangle/c;

    if-nez v2, :cond_2

    const-string v2, "Zeus/server"

    const-string v3, "getPackageManager failed!!!"

    .line 18
    invoke-static {v2, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit v0

    return-object v1

    .line 20
    :cond_2
    sput-object v2, Lcom/bytedance/pangle/servermanager/b;->f:Lcom/bytedance/pangle/c;

    .line 21
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_3
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->f:Lcom/bytedance/pangle/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/pangle/d;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "service"

    .line 6
    invoke-static {v1, p0}, Lcom/bytedance/pangle/servermanager/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/bytedance/pangle/d;

    if-nez v1, :cond_2

    const-string p0, "Zeus/server"

    const-string v1, "getServiceManager failed!!!"

    .line 7
    invoke-static {p0, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return-object p0

    .line 9
    :cond_2
    sget-object v2, Lcom/bytedance/pangle/servermanager/b;->e:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_3
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/pangle/d;

    return-object p0
.end method

.method public static synthetic b()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/pangle/servermanager/b;->d:Ljava/util/Map;

    return-object v0
.end method
