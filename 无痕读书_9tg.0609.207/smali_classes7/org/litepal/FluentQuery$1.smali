.class public Lorg/litepal/FluentQuery$1;
.super Ljava/lang/Object;
.source "FluentQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/FluentQuery;->findAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindMultiExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/litepal/FluentQuery;

.field public final synthetic val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

.field public final synthetic val$isEager:Z

.field public final synthetic val$modelClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/litepal/FluentQuery;Ljava/lang/Class;ZLorg/litepal/crud/async/FindMultiExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/FluentQuery$1;->this$0:Lorg/litepal/FluentQuery;

    iput-object p2, p0, Lorg/litepal/FluentQuery$1;->val$modelClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lorg/litepal/FluentQuery$1;->val$isEager:Z

    iput-object p4, p0, Lorg/litepal/FluentQuery$1;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

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
    iget-object v1, p0, Lorg/litepal/FluentQuery$1;->this$0:Lorg/litepal/FluentQuery;

    iget-object v2, p0, Lorg/litepal/FluentQuery$1;->val$modelClass:Ljava/lang/Class;

    iget-boolean v3, p0, Lorg/litepal/FluentQuery$1;->val$isEager:Z

    invoke-virtual {v1, v2, v3}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/litepal/FluentQuery$1;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/FindMultiExecutor;->getListener()Lorg/litepal/crud/callback/FindMultiCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/FluentQuery$1$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/FluentQuery$1$1;-><init>(Lorg/litepal/FluentQuery$1;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
