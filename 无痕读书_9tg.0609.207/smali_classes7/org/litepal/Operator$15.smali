.class public final Lorg/litepal/Operator$15;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator;->saveAllAsync(Ljava/util/Collection;)Lorg/litepal/crud/async/SaveExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$collection:Ljava/util/Collection;

.field public final synthetic val$executor:Lorg/litepal/crud/async/SaveExecutor;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/litepal/crud/async/SaveExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/Operator$15;->val$collection:Ljava/util/Collection;

    iput-object p2, p0, Lorg/litepal/Operator$15;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/litepal/Operator$15;->val$collection:Ljava/util/Collection;

    invoke-static {v1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/litepal/Operator$15;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/SaveExecutor;->getListener()Lorg/litepal/crud/callback/SaveCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/Operator$15$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/Operator$15$1;-><init>(Lorg/litepal/Operator$15;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
