.class public Lcom/umeng/analytics/vshelper/PageNameMonitor;
.super Ljava/lang/Object;
.source "PageNameMonitor.java"

# interfaces
.implements Lcom/umeng/analytics/vshelper/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/vshelper/PageNameMonitor$a;
    }
.end annotation


# static fields
.field public static currentActivity:Ljava/lang/String;

.field public static currentCustomPage:Ljava/lang/String;

.field public static lock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/vshelper/PageNameMonitor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/vshelper/PageNameMonitor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor$a;->a()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activityPause(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityResume(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public customPageBegin(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public customPageEnd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrenPageName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
