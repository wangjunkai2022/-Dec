.class public final Lcom/tencent/bugly/proguard/v$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/v;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Runnable;

.field public synthetic b:Lcom/tencent/bugly/proguard/v;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/v;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/proguard/v$1;->b:Lcom/tencent/bugly/proguard/v;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/v$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v$1;->b:Lcom/tencent/bugly/proguard/v;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/v;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v$1;->b:Lcom/tencent/bugly/proguard/v;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v;->b(Lcom/tencent/bugly/proguard/v;)I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
