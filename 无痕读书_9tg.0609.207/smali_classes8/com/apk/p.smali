.class public Lcom/apk/p;
.super Ljava/lang/Object;
.source "AppUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/p$for;,
        Lcom/apk/p$new;
    }
.end annotation


# static fields
.field public static case:Lcom/apk/p;


# instance fields
.field public do:I

.field public for:Lcom/apk/p$new;

.field public if:Lcom/biquge/ebook/app/bean/NewVersionBean;

.field public new:Lcom/apk/p$new;

.field public try:Lcom/apk/p$new;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "play.google.com"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.android.vending"

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "id="

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/apk/ze;->h0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 5
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 6
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 13
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p0, p1}, Lcom/apk/eg;->abstract(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static do(Lcom/apk/p;ZILcom/biquge/ebook/app/bean/NewVersionBean;)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p3, p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->setForce_user(Z)V

    .line 2
    invoke-virtual {p3, p2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->setXgDay_user(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_SHOW_UPGRADE_FORCE_KEY"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    iput-object p3, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static for()Lcom/apk/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/p;->case:Lcom/apk/p;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/p;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/p;->case:Lcom/apk/p;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/p;

    invoke-direct {v1}, Lcom/apk/p;-><init>()V

    sput-object v1, Lcom/apk/p;->case:Lcom/apk/p;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/p;->case:Lcom/apk/p;

    return-object v0
.end method


# virtual methods
.method public else(Landroid/app/Activity;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getLandingtype()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deeplink"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const-string v0, ""

    const-string v2, "?linkforwardtype=sysbrowser"

    :try_start_0
    const-string v4, "https"

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    .line 6
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-static {p1, v1}, Lcom/apk/eg;->abstract(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "&linkforwardtype=sysbrowser"

    if-nez v3, :cond_2

    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/apk/eg;->abstract(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v2, "GooglePlay"

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-static {p1, v1}, Lcom/apk/p;->case(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_5
    const-string v2, "H5Page"

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-static {p1, v1}, Lcom/apk/eg;->abstract(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_6
    invoke-static {p1, v1}, Lcom/apk/p;->case(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getNewVersion()I

    move-result v0

    iget-object v1, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 23
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v4, Lcom/apk/p$for;

    invoke-direct {v4, p0, p1, v1}, Lcom/apk/p$for;-><init>(Lcom/apk/p;Landroid/content/Context;Lcom/biquge/ebook/app/bean/NewVersionBean;)V

    .line 26
    sget-object p1, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 27
    invoke-virtual {p1, v0}, Lcom/apk/ry;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 29
    invoke-virtual {p1, v0}, Lcom/apk/ry;->do(Ljava/lang/String;)Lcom/apk/ty;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v4}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    goto :goto_1

    :cond_8
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_9

    .line 31
    sget-object v1, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 32
    invoke-virtual {v1, v0}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 33
    invoke-static {v1}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v4}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    :cond_9
    const/4 v1, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_a

    .line 35
    new-instance p1, Lcom/apk/ky;

    invoke-direct {p1, v2}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {v0, p1}, Lcom/apk/ry;->for(Ljava/lang/String;Lcom/apk/qy;)Lcom/apk/ty;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    .line 37
    invoke-virtual {p1}, Lcom/apk/ty;->goto()Lcom/apk/ty;

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    .line 38
    :goto_2
    :try_start_4
    iget-object v2, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v2, v2, Lcom/apk/hy;->break:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v6, 0x3

    if-eqz v2, :cond_e

    if-eq v2, v6, :cond_e

    const/4 v7, 0x4

    if-eq v2, v7, :cond_e

    const/4 v0, 0x5

    if-eq v2, v0, :cond_b

    goto/16 :goto_5

    .line 39
    :cond_b
    :try_start_5
    iget-object v0, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 41
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_3
    if-eqz v3, :cond_d

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    iget-object p1, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {v4, v3, p1}, Lcom/apk/p$for;->case(Ljava/io/File;Lcom/apk/hy;)V

    goto :goto_5

    .line 44
    :cond_d
    invoke-virtual {p1}, Lcom/apk/ty;->else()V

    goto :goto_5

    .line 45
    :cond_e
    iget v2, p0, Lcom/apk/p;->do:I

    if-ne v2, v6, :cond_10

    .line 46
    iget-object v2, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v2, v2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 47
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v4, v4, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 50
    :cond_f
    iput v1, p0, Lcom/apk/p;->do:I

    .line 51
    :cond_10
    iget v1, p0, Lcom/apk/p;->do:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/apk/p;->do:I

    if-eqz v0, :cond_11

    .line 52
    invoke-virtual {p1}, Lcom/apk/ty;->this()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 53
    :cond_11
    :try_start_7
    iget-object v0, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v3, v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 55
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_4
    if-eqz v3, :cond_13

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {p1}, Lcom/apk/ty;->this()V

    goto :goto_5

    .line 58
    :cond_13
    invoke-virtual {p1}, Lcom/apk/ty;->else()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :goto_5
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    new-instance v0, Lcom/apk/p$if;

    invoke-direct {v0, p0}, Lcom/apk/p$if;-><init>(Lcom/apk/p;)V

    .line 61
    iget-object p1, p1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_14

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public if(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/p;->try()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/p$do;

    invoke-direct {v1, p0, p1}, Lcom/apk/p$do;-><init>(Lcom/apk/p;Z)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public new()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getNewVersion()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 6
    invoke-virtual {v2, v0}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/apk/hy;->break:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 8
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/apk/rt;->do(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/p;->for:Lcom/apk/p$new;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/p$new;->for()V

    .line 3
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/p;->for:Lcom/apk/p$new;

    invoke-interface {v1, v0}, Lcom/apk/p$new;->static(Lcom/biquge/ebook/app/bean/NewVersionBean;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/p;->new:Lcom/apk/p$new;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/apk/p$new;->for()V

    .line 7
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/apk/p;->new:Lcom/apk/p$new;

    invoke-interface {v1, v0}, Lcom/apk/p$new;->static(Lcom/biquge/ebook/app/bean/NewVersionBean;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/apk/p;->try:Lcom/apk/p$new;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/apk/p$new;->for()V

    .line 11
    iget-object v0, p0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/apk/p;->try:Lcom/apk/p$new;

    invoke-interface {v1, v0}, Lcom/apk/p$new;->static(Lcom/biquge/ebook/app/bean/NewVersionBean;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f10002b

    .line 13
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_3
    :goto_0
    return-void
.end method
