.class public Lcom/umeng/analytics/pro/l$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/umeng/analytics/pro/l;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/l;->f()Lcom/umeng/analytics/pro/ap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/umeng/analytics/pro/ap;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "header_first_resume"

    .line 1
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger enabled."

    .line 2
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/umeng/analytics/pro/l;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger disabled."

    .line 7
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_3

    .line 9
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_2

    .line 10
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->i()V

    :cond_2
    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/l;->b(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V

    .line 12
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->i()V

    .line 13
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/l;->b:Z

    .line 14
    invoke-static {}, Lcom/umeng/analytics/pro/l;->f()Lcom/umeng/analytics/pro/ap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/ap;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "header_first_resume"

    .line 1
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger enabled."

    .line 2
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/umeng/analytics/pro/l;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lcom/umeng/analytics/pro/l;->a(Z)Z

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger disabled."

    .line 9
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/umeng/analytics/pro/l;->f()Lcom/umeng/analytics/pro/ap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/ap;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Lcom/umeng/analytics/pro/l;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    .line 4
    :cond_0
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    sput v0, Lcom/umeng/analytics/pro/l;->e:I

    .line 6
    :cond_1
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const-string v1, "activityName"

    const-string v2, "isMainProcess"

    const-string v3, "pid"

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "$$_onUMengEnterForegroundInitError"

    .line 12
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    const/4 p1, -0x2

    .line 13
    sput p1, Lcom/umeng/analytics/pro/l;->e:I

    .line 14
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    const-string v0, "\u8bf7\u5728Application.onCreate\u51fd\u6570\u4e2d\u4f7f\u7528UMConfigure.preInit\u51fd\u6570\u521d\u59cb\u5316\u53cb\u76dfsdk"

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    sget-object v4, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    const-string v5, "pairUUID"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    const-string v2, "$$_onUMengEnterForeground"

    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->d(Lcom/umeng/analytics/pro/l;)I

    move-result p1

    if-gez p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->e(Lcom/umeng/analytics/pro/l;)I

    goto :goto_1

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->f(Lcom/umeng/analytics/pro/l;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->b(Lcom/umeng/analytics/pro/l;)I

    .line 5
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Lcom/umeng/analytics/pro/l;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 6
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    const-string v2, "Normal"

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isMainProcess"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "$$_onUMengEnterBackground"

    .line 15
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    :cond_3
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 17
    sput-object p1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method
