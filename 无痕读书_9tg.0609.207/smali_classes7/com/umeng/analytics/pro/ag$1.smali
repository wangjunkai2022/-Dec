.class public Lcom/umeng/analytics/pro/ag$1;
.super Ljava/lang/Object;
.source "SamsungDeviceIdSupplier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/umeng/analytics/pro/ag;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/ag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/ag$1;->a:Lcom/umeng/analytics/pro/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/pro/b$a;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/umeng/analytics/pro/ag$1;->a:Lcom/umeng/analytics/pro/ag;

    invoke-interface {p1}, Lcom/umeng/analytics/pro/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/analytics/pro/ag;->a(Lcom/umeng/analytics/pro/ag;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/ag$1;->a:Lcom/umeng/analytics/pro/ag;

    invoke-static {p1}, Lcom/umeng/analytics/pro/ag;->a(Lcom/umeng/analytics/pro/ag;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
