.class public final Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;
.super Ljava/lang/Object;
.source "AsyncTasks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/os/AsyncTask;

.field public final synthetic if:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;->do:Landroid/os/AsyncTask;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;->if:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;->do:Landroid/os/AsyncTask;

    .line 2
    sget-object v1, Lcom/bytedance/msdk/adapter/util/AsyncTasks;->do:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v2, p0, Lcom/bytedance/msdk/adapter/util/AsyncTasks$1;->if:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
