.class public Lcom/umeng/analytics/pro/m;
.super Ljava/lang/Object;
.source "BackgroundMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/m$a;
    }
.end annotation


# static fields
.field public static a:Lcom/umeng/analytics/pro/m;


# instance fields
.field public final b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/umeng/analytics/pro/m$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/m;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/m;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/m;->a:Lcom/umeng/analytics/pro/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/umeng/analytics/pro/m;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/m;->c:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/m;->d:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lcom/umeng/analytics/pro/m$a;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/m$a;-><init>(Lcom/umeng/analytics/pro/m;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lcom/umeng/analytics/pro/m$a;

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/m;
    .locals 1

    .line 5
    sget-object v0, Lcom/umeng/analytics/pro/m;->a:Lcom/umeng/analytics/pro/m;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 3
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/app/Application;

    sget-object v0, Lcom/umeng/analytics/pro/m;->a:Lcom/umeng/analytics/pro/m;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/m;->c:Z

    return p0
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/m;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/umeng/analytics/pro/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/m;->d:Z

    return p0
.end method

.method public static synthetic c(Lcom/umeng/analytics/pro/m;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/umeng/analytics/pro/n;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 7
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/umeng/analytics/pro/n;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 5
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->d:Z

    .line 2
    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->g:Lcom/umeng/analytics/pro/m$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lcom/umeng/analytics/pro/m$a;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->d:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->c:Z

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->g:Lcom/umeng/analytics/pro/m$a;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
