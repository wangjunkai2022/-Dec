.class public Lcom/apk/tp0;
.super Ljava/lang/Object;
.source "IdentifierIdClient.java"


# static fields
.field public static volatile break:Lcom/apk/rp0;

.field public static case:Landroid/os/Handler;

.field public static do:Landroid/content/Context;

.field public static else:Ljava/lang/String;

.field public static for:Lcom/apk/up0;

.field public static goto:Ljava/lang/String;

.field public static if:Z

.field public static new:Ljava/lang/Object;

.field public static volatile this:Lcom/apk/tp0;

.field public static try:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/apk/tp0;->new:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/content/Context;)Lcom/apk/tp0;
    .locals 2

    .line 1
    const-class v0, Lcom/apk/tp0;

    sget-object v1, Lcom/apk/tp0;->this:Lcom/apk/tp0;

    if-nez v1, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/apk/tp0;->do:Landroid/content/Context;

    .line 4
    new-instance v1, Lcom/apk/tp0;

    invoke-direct {v1}, Lcom/apk/tp0;-><init>()V

    sput-object v1, Lcom/apk/tp0;->this:Lcom/apk/tp0;

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/apk/tp0;->break:Lcom/apk/rp0;

    if-nez v1, :cond_1

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/apk/tp0;->do:Landroid/content/Context;

    .line 9
    new-instance p0, Landroid/os/HandlerThread;

    const-string v1, "SqlWorkThread"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/apk/tp0;->try:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance p0, Lcom/apk/sp0;

    sget-object v1, Lcom/apk/tp0;->try:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apk/sp0;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/apk/tp0;->case:Landroid/os/Handler;

    .line 12
    new-instance p0, Lcom/apk/rp0;

    sget-object v1, Lcom/apk/tp0;->do:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/apk/rp0;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/apk/tp0;->break:Lcom/apk/rp0;

    .line 13
    invoke-static {}, Lcom/apk/tp0;->for()V

    .line 14
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 15
    :cond_1
    :goto_1
    sget-object p0, Lcom/apk/tp0;->this:Lcom/apk/tp0;

    return-object p0
.end method

.method public static for()V
    .locals 8

    const-string v0, "persist.sys.identifierid.supported"

    .line 1
    const-class v1, Ljava/lang/String;

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 2
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v0, "unknown"

    aput-object v0, v3, v7

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const-string v0, "0"

    :goto_0
    const-string v1, "1"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/apk/tp0;->if:Z

    return-void
.end method


# virtual methods
.method public if(ILjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/apk/tp0;->new:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/apk/tp0;->case:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    .line 3
    iput v2, v1, Landroid/os/Message;->what:I

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    .line 5
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    const-string v5, "appid"

    .line 6
    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    sget-object p2, Lcom/apk/tp0;->case:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x7d0

    .line 10
    :try_start_1
    sget-object p2, Lcom/apk/tp0;->new:Ljava/lang/Object;

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 11
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long p2, v7, v5

    if-gez p2, :cond_6

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 13
    :cond_2
    sget-object p1, Lcom/apk/tp0;->else:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 14
    sput-object p2, Lcom/apk/tp0;->else:Ljava/lang/String;

    .line 15
    :cond_3
    sput-object p2, Lcom/apk/tp0;->else:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_4
    sget-object p1, Lcom/apk/tp0;->else:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 17
    sput-object p2, Lcom/apk/tp0;->else:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_5
    sget-object p1, Lcom/apk/tp0;->else:Ljava/lang/String;

    sput-object p1, Lcom/apk/tp0;->goto:Ljava/lang/String;

    .line 19
    sput-object p2, Lcom/apk/tp0;->else:Ljava/lang/String;

    .line 20
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
