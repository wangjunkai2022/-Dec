.class public Lcom/tencent/bugly/crashreport/biz/b;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/biz/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/bugly/crashreport/biz/a; = null

.field public static b:Z = false

.field public static c:I = 0xa

.field public static d:J = 0x493e0L

.field public static e:J = 0x7530L

.field public static f:J = 0x0L

.field public static g:I = 0x0

.field public static h:J = 0x0L

.field public static i:J = 0x0L

.field public static j:J = 0x0L

.field public static k:Landroid/app/Application$ActivityLifecycleCallbacks; = null

.field public static l:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static m:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 5

    .line 20
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 10
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    .line 11
    :cond_0
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 22
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 24
    sput-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 5

    .line 2
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    .line 4
    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/bugly/crashreport/biz/a;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->getUserInfoActivity()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 8
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/crashreport/biz/b$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 4

    .line 12
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 13
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 14
    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 15
    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    .line 16
    :cond_2
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:I

    if-lez p1, :cond_3

    .line 17
    sput p1, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    .line 18
    :cond_3
    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:J

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    .line 19
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    :cond_4
    return-void
.end method

.method public static synthetic b(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method public static synthetic b()Ljava/lang/Class;
    .locals 1

    .line 2
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 6
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 8
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 2
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method public static c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->recordUserInfoOnceADay()Z

    move-result v2

    .line 4
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->isEnableUserInfo()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5

    .line 5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {v5, v2}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-object v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    if-ne v7, v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->b()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_3

    iget-wide v9, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    cmp-long v11, v9, v7

    if-ltz v11, :cond_2

    iget-wide v5, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    cmp-long p1, v5, v3

    if-gtz p1, :cond_1

    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v5, p1}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {v2, v5}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 6
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/tencent/bugly/crashreport/biz/b;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(IZ)V

    :cond_6
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/app/Application;

    :cond_7
    if-eqz p1, :cond_9

    :try_start_0
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p0, :cond_8

    new-instance p0, Lcom/tencent/bugly/crashreport/biz/b$a;

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/biz/b$a;-><init>()V

    sput-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_8
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_9
    :goto_3
    sget-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    if-eqz p0, :cond_a

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "[session] launch app, new start"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 10
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/biz/a;->a()V

    .line 11
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const-wide/32 v0, 0x1499700

    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    new-instance v2, Lcom/tencent/bugly/crashreport/biz/a$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/bugly/crashreport/biz/a$c;-><init>(Lcom/tencent/bugly/crashreport/biz/a;J)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method

.method public static synthetic d()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method public static synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method public static synthetic f()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method public static synthetic g()I
    .locals 2

    .line 1
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method public static synthetic h()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method public static synthetic i()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    return v0
.end method

.method public static synthetic j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    return v0
.end method

.method public static synthetic k()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method public static synthetic l()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    return-wide v0
.end method
