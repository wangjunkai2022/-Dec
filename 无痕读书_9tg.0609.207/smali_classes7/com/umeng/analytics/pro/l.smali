.class public Lcom/umeng/analytics/pro/l;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/l$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static i:Lorg/json/JSONArray;

.field public static j:Ljava/lang/Object;

.field public static k:Landroid/app/Application;

.field public static o:Z

.field public static p:Ljava/lang/Object;

.field public static q:Lcom/umeng/analytics/pro/ap;


# instance fields
.field public b:Z

.field public c:Z

.field public f:Lcom/umeng/analytics/vshelper/a;

.field public g:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:I

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/l;->i:Lorg/json/JSONArray;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/l;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    .line 4
    sput-object v0, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    sput v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/umeng/analytics/pro/l;->o:Z

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/l;->p:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/umeng/analytics/vshelper/b;

    invoke-direct {v0}, Lcom/umeng/analytics/vshelper/b;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/l;->q:Lcom/umeng/analytics/pro/ap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->l:Z

    .line 5
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->c:Z

    .line 7
    iput v0, p0, Lcom/umeng/analytics/pro/l;->m:I

    .line 8
    iput v0, p0, Lcom/umeng/analytics/pro/l;->n:I

    .line 9
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor;->getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->f:Lcom/umeng/analytics/vshelper/a;

    .line 10
    new-instance v0, Lcom/umeng/analytics/pro/l$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/l$1;-><init>(Lcom/umeng/analytics/pro/l;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/umeng/analytics/pro/l;->g()V

    .line 14
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/pro/l$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/l;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/l;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/l;->n:I

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/pro/l;
    .locals 2

    const-class v0, Lcom/umeng/analytics/pro/l;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 6
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 7
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 9
    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lcom/umeng/analytics/pro/l$a;->a()Lcom/umeng/analytics/pro/l;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_0

    .line 22
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_3

    .line 23
    sget-object p1, Lcom/umeng/analytics/pro/l;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 24
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 25
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    if-eqz p1, :cond_3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->f:Lcom/umeng/analytics/vshelper/a;

    invoke-interface {v1, v0}, Lcom/umeng/analytics/vshelper/a;->activityResume(Ljava/lang/String;)V

    .line 28
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/l;->b:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/umeng/analytics/pro/l;->b:Z

    .line 30
    sget-object v1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    sget-object v1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/l;->b(Landroid/app/Activity;)V

    .line 33
    sget-object p1, Lcom/umeng/analytics/pro/l;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 34
    :try_start_1
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 35
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 36
    :cond_1
    sput-object v0, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/l;->b(Landroid/app/Activity;)V

    .line 38
    sget-object p1, Lcom/umeng/analytics/pro/l;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 39
    :try_start_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 40
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 11
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 16
    sput-object p1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    :cond_0
    if-eqz p0, :cond_1

    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "isMainProcess"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Context"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    const-string v1, "$$_onUMengEnterBackground"

    invoke-virtual {p1, p0, v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/l;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/umeng/analytics/pro/l;->o:Z

    return p0
.end method

.method public static synthetic b(Lcom/umeng/analytics/pro/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/l;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/l;->m:I

    return v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    monitor-enter p1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic b(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/l;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic c(Lcom/umeng/analytics/pro/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/umeng/analytics/pro/l;->m:I

    return p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 9

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 23
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->h:Ljava/util/Map;

    sget-object v5, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v7

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->j:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 26
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "page_name"

    .line 27
    sget-object v6, Lcom/umeng/analytics/pro/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "duration"

    .line 28
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "page_start"

    .line 29
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    sget-object v1, Lcom/umeng/analytics/pro/l;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :catchall_0
    :try_start_4
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_2
    move-exception p1

    .line 33
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    sget-object v1, Lcom/umeng/analytics/pro/l;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/l;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/l;->i:Lorg/json/JSONArray;

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "__b"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/u;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i$a;->a:Lcom/umeng/analytics/pro/i$a;

    .line 14
    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/i$a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/umeng/analytics/pro/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/umeng/analytics/pro/l;->n:I

    return p0
.end method

.method public static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Lcom/umeng/analytics/pro/l;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic e(Lcom/umeng/analytics/pro/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/l;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/l;->n:I

    return v0
.end method

.method public static synthetic e()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/umeng/analytics/pro/l;->o:Z

    return v0
.end method

.method public static synthetic f(Lcom/umeng/analytics/pro/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/l;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/l;->m:I

    return v0
.end method

.method public static synthetic f()Lcom/umeng/analytics/pro/ap;
    .locals 1

    .line 2
    sget-object v0, Lcom/umeng/analytics/pro/l;->q:Lcom/umeng/analytics/pro/ap;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/l;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->l:Z

    .line 3
    sget-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/l;->l:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->l:Z

    .line 16
    sget-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/umeng/analytics/pro/l;->k:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 3
    sget-object v0, Lcom/umeng/analytics/pro/l;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/umeng/analytics/pro/l;->o:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    sput-boolean v1, Lcom/umeng/analytics/pro/l;->o:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "MobclickRT"

    const-string v0, "--->>> init\u89e6\u53d1onResume: \u65e0\u524d\u53f0Activity\uff0c\u76f4\u63a5\u9000\u51fa\u3002"

    .line 8
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> init\u89e6\u53d1onResume: \u8865\u6551\u6210\u529f\uff0c\u524d\u53f0Activity\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/l;->a(Landroid/app/Activity;)V

    return-void

    :cond_1
    :try_start_1
    const-string p1, "MobclickRT"

    const-string v1, "--->>> init\u89e6\u53d1onResume: firstResumeCall = false\uff0c\u76f4\u63a5\u8fd4\u56de\u3002"

    .line 12
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/l;->c(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/l;->b()V

    return-void
.end method
