.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;
.super Ljava/lang/Object;
.source "NpthHandlerThread.java"


# static fields
.field public static volatile a:Landroid/os/HandlerThread;

.field public static volatile b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->b()Landroid/os/HandlerThread;

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Landroid/os/HandlerThread;
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "default_npth_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a:Landroid/os/HandlerThread;

    .line 5
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->b:Landroid/os/Handler;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a:Landroid/os/HandlerThread;

    return-object v0
.end method
