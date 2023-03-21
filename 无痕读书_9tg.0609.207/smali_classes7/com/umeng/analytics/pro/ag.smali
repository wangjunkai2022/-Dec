.class public Lcom/umeng/analytics/pro/ag;
.super Ljava/lang/Object;
.source "SamsungDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/z;


# static fields
.field public static final a:Ljava/lang/String; = "DeviceIdService"

.field public static final b:Ljava/lang/String; = "com.samsung.android.deviceidservice"

.field public static final c:Ljava/lang/String; = "com.samsung.android.deviceidservice.DeviceIdService"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/concurrent/CountDownLatch;

.field public final f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/umeng/analytics/pro/ag;->d:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/umeng/analytics/pro/ag$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ag$1;-><init>(Lcom/umeng/analytics/pro/ag;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/ag;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/ag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/ag;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/ag;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/umeng/analytics/pro/ag;->e:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/umeng/analytics/pro/ag;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not supported service"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/umeng/analytics/pro/ag;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ag;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/ag;->e:Ljava/util/concurrent/CountDownLatch;

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ag;->b(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/umeng/analytics/pro/ag;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 6
    iget-object v0, p0, Lcom/umeng/analytics/pro/ag;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ag;->c(Landroid/content/Context;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ag;->c(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ag;->c(Landroid/content/Context;)V

    throw v0
.end method
