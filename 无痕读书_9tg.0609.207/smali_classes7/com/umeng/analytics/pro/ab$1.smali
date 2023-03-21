.class public Lcom/umeng/analytics/pro/ab$1;
.super Ljava/lang/Object;
.source "CoolpadDeviceIdSupplier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/umeng/analytics/pro/ab;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/pro/a$a;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/a;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/a;)Lcom/umeng/analytics/pro/a;

    .line 2
    iget-object p1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {}, Lcom/umeng/analytics/pro/ab;->a()Lcom/umeng/analytics/pro/a;

    move-result-object p2

    iget-object v0, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {v0}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/ab;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/umeng/analytics/pro/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/ab;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {p1}, Lcom/umeng/analytics/pro/ab;->b(Lcom/umeng/analytics/pro/ab;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {p1}, Lcom/umeng/analytics/pro/ab;->c(Lcom/umeng/analytics/pro/ab;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/a;)Lcom/umeng/analytics/pro/a;

    return-void
.end method
