.class public Lcom/apk/t;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/t$do;
    }
.end annotation


# static fields
.field public static if:Lcom/apk/t;


# instance fields
.field public do:Lcom/apk/t$do;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lcom/apk/t;Ljava/lang/Throwable;Z)V
    .locals 4

    if-eqz p0, :cond_3

    const-string v0, "is_save_carsh_log"

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p2, ""

    .line 2
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 7
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p2

    new-instance v0, Lcom/apk/s;

    invoke-direct {v0, p0, p1}, Lcom/apk/s;-><init>(Lcom/apk/t;Ljava/lang/Throwable;)V

    .line 11
    iget-object p0, p2, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public static if(Lcom/apk/t$do;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/apk/t;->if:Lcom/apk/t;

    if-nez p0, :cond_1

    .line 2
    const-class p0, Lcom/apk/t;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/apk/t;->if:Lcom/apk/t;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/t;

    invoke-direct {v0}, Lcom/apk/t;-><init>()V

    sput-object v0, Lcom/apk/t;->if:Lcom/apk/t;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/apk/t;->if:Lcom/apk/t;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/apk/t;->do:Lcom/apk/t$do;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apk/q;

    invoke-direct {v1, p0}, Lcom/apk/q;-><init>(Lcom/apk/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    new-instance v0, Lcom/apk/r;

    invoke-direct {v0, p0}, Lcom/apk/r;-><init>(Lcom/apk/t;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p0, "is_save_carsh_log"

    .line 10
    invoke-static {p0}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    return-void
.end method
