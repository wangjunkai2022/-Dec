.class public Lcom/bytedance/msdk/adapter/util/AsyncTasks;
.super Ljava/lang/Object;
.source "AsyncTasks.java"


# static fields
.field public static do:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getMSDKExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/msdk/adapter/util/AsyncTasks;->do:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TP;**>;[TP;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/msdk/adapter/util/AsyncTasks;->do:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lcom/bytedance/msdk/adapter/util/AsyncTasks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Posting AsyncTask to main thread for execution."

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/msdk/adapter/util/AsyncTasks;->do:Ljava/util/concurrent/Executor;

    return-void
.end method
