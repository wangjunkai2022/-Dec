.class public Lcom/bytedance/sdk/openadsdk/live/b;
.super Lcom/bytedance/sdk/openadsdk/downloadnew/a;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

.field public static final b:Lcom/bytedance/sdk/openadsdk/live/b;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

.field public h:Lorg/json/JSONObject;

.field public i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/live/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/live/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->b:Lcom/bytedance/sdk/openadsdk/live/b;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 21
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/live/b;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->b:Lcom/bytedance/sdk/openadsdk/live/b;

    return-object v0
.end method

.method public static synthetic a(Lcom/bytedance/sdk/openadsdk/live/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/bytedance/sdk/openadsdk/live/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->f()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "room_id"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "event"

    .line 10
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    .line 11
    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->getLiveRoomService()Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;

    move-result-object v2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v3, "checkRoomAlive"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 13
    new-instance v6, Lcom/bytedance/sdk/openadsdk/live/b$3;

    invoke-direct {v6, p0, p1}, Lcom/bytedance/sdk/openadsdk/live/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/live/b;Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 15
    invoke-interface {v2, v3, v4}, Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;->callExpandMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 16
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :catchall_0
    :try_start_2
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    :cond_0
    :goto_0
    const-string p1, "TTLiveSDkBridge"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has checkRoomAlive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    const-string v0, "TTLiveSDkBridge"

    const-string v1, "getRoomState: exception:"

    .line 20
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 8

    const-string v0, "hasLiveSDKInited\uff1a"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasLiveInstalled\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveSDkBridge"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "GeneralAppId\uff1a"

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0cisValid\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isValid()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "com.byted.live.lite"

    .line 6
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 7
    :cond_4
    sget-object v3, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 8
    :cond_5
    sget-object v3, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/live/a;->c(J)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    const-string v2, "live sdk init crash more than consecutive 5 times , live plugin had uninstalled ! App cold start will request new live plugin \uff01"

    .line 10
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/live/a;->d(J)V

    .line 12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 13
    :cond_6
    new-instance v3, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    invoke-direct {v3}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 14
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setAppName(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 15
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setChannel(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 16
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isDebug()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setIsDebug(Z)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 17
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getECHostAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setECHostAppId(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 18
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setPartner(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/live/b$1;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/live/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/live/b;)V

    .line 19
    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->provideMethodChannel(Lcom/bytedance/android/live/base/api/MethodChannelService;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 20
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartnerSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setPartnerSecret(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 21
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getHostPermission()Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setHostPermission(Lcom/bytedance/android/live/base/api/IHostPermission;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/live/core/a;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 22
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getLiveHostAction()Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/live/core/a;-><init>(Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;)V

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setHostActionParam(Lcom/bytedance/android/live/base/api/ILiveHostActionParam;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v3

    .line 23
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    if-eqz v5, :cond_7

    .line 24
    new-instance v5, Lcom/bytedance/sdk/openadsdk/live/core/b;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/live/core/b;-><init>(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)V

    invoke-virtual {v3, v5}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setInjectionAuth(Lcom/bytedance/android/livehostapi/platform/IHostTokenInjectionAuth;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    .line 25
    :cond_7
    new-instance v5, Lcom/bytedance/sdk/openadsdk/live/b$2;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/live/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/live/b;)V

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Application;

    if-eqz v6, :cond_8

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    invoke-virtual {v3, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setContext(Landroid/app/Application;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    .line 28
    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/live/a;->a(J)V

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute live sdk initLive method start, GeneralAppId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v7, :cond_9

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_9
    move-object v7, v2

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v7, :cond_a

    .line 31
    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_a
    invoke-static {v6, v2, v3, v5}, Lcom/bytedance/sdk/openadsdk/live/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)Z

    move-result v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute live sdk initLive method end, (\u65b9\u6cd5\u987a\u5229\u6267\u884c\u7ed3\u679c)result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/live/a;->b(J)V

    :cond_b
    :goto_2
    return-void
.end method

.method private d()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->getLiveRoomService()Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;

    move-result-object v1

    const-string v2, "hasAuthenticated"

    new-array v3, v0, [Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;->callExpandMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "TTLiveSDkBridge"

    .line 5
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->getLiveRoomService()Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;

    move-result-object v1

    const-string v2, "warmingUpBeforeEnter"

    new-array v3, v0, [Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;->callExpandMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "TTLiveSDkBridge"

    .line 3
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "live_plugin_installed"

    .line 3
    sget-object v2, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "live_plugin_inited"

    .line 4
    sget-object v2, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdEvent;->onEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/content/Context;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b;->i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    return-void
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->d()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->e()V

    return-object v1

    .line 4
    :cond_2
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/live/b;->a(Ljava/util/Map;)V

    return-object v1

    .line 5
    :cond_3
    sget-object p1, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1

    .line 6
    :cond_4
    sget-object p1, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "context"

    .line 8
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/b;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "bundle"

    .line 9
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/live/b;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p2

    .line 10
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/live/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->getObj(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->init(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartnerSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TTLiveSDkBridge"

    const-string v0, "The configuration has been obtained. Do not repeat initialization"

    .line 6
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "liveInitConfig"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 10
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "liveInitExtra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->c()V

    return-void
.end method

.method public subscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->f()V

    return-void
.end method
