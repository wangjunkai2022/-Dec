.class public Lcom/bytedance/pangle/service/client/ServiceManagerNative;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static volatile sInstance:Lcom/bytedance/pangle/service/client/ServiceManagerNative;


# instance fields
.field public conn2Service:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ServiceConnection;",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/ServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public process2ConnAndService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/HashMap<",
            "Landroid/content/ServiceConnection;",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final serviceConn2ServiceConn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ServiceConnection;",
            "Lcom/bytedance/pangle/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->serviceConn2ServiceConn:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->process2ConnAndService:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->conn2Service:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/bytedance/pangle/service/client/ServiceManagerNative;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->sInstance:Lcom/bytedance/pangle/service/client/ServiceManagerNative;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->sInstance:Lcom/bytedance/pangle/service/client/ServiceManagerNative;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/pangle/service/client/ServiceManagerNative;

    invoke-direct {v1}, Lcom/bytedance/pangle/service/client/ServiceManagerNative;-><init>()V

    sput-object v1, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->sInstance:Lcom/bytedance/pangle/service/client/ServiceManagerNative;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->sInstance:Lcom/bytedance/pangle/service/client/ServiceManagerNative;

    return-object v0
.end method


# virtual methods
.method public bindServiceNative(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p2, p5}, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->queryServiceFromPlugin(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->serviceConn2ServiceConn:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->serviceConn2ServiceConn:Ljava/util/HashMap;

    new-instance v1, Lcom/bytedance/pangle/service/client/ServiceManagerNative$1;

    invoke-direct {v1, p0, p3}, Lcom/bytedance/pangle/service/client/ServiceManagerNative$1;-><init>(Lcom/bytedance/pangle/service/client/ServiceManagerNative;Landroid/content/ServiceConnection;)V

    invoke-virtual {p1, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->conn2Service:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->conn2Service:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->conn2Service:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/pangle/servermanager/b;->a(Ljava/lang/String;)Lcom/bytedance/pangle/d;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->process2ConnAndService:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->process2ConnAndService:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->serviceConn2ServiceConn:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/pangle/f;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/bytedance/pangle/d;->a(Landroid/content/Intent;Lcom/bytedance/pangle/f;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Zeus/service"

    const-string p3, "bindService failed!"

    .line 18
    invoke-static {p2, p3, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public queryServiceFromPlugin(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/pangle/plugin/Plugin;->pluginServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    return-object p1
.end method

.method public startServiceNative(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->queryServiceFromPlugin(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/pangle/servermanager/b;->a(Ljava/lang/String;)Lcom/bytedance/pangle/d;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/bytedance/pangle/d;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public stopServiceNative(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->queryServiceFromPlugin(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/pangle/servermanager/b;->a(Ljava/lang/String;)Lcom/bytedance/pangle/d;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/bytedance/pangle/d;->b(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public unbindServiceNative(Landroid/content/ServiceConnection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->conn2Service:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 3
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/pangle/servermanager/b;->a(Ljava/lang/String;)Lcom/bytedance/pangle/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/pangle/service/client/ServiceManagerNative;->serviceConn2ServiceConn:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/pangle/f;

    invoke-interface {v1, v2}, Lcom/bytedance/pangle/d;->a(Lcom/bytedance/pangle/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
