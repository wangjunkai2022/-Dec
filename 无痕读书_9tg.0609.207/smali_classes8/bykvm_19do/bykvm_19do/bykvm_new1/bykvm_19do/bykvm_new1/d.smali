.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;
.super Ljava/lang/Object;
.source "CrashFileCollector.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "launch_"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    sget-object p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    return-object p1

    :cond_1
    const-string v1, "anr_"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    sget-object p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    return-object p1

    :cond_2
    const-string v1, "java_"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "is_dart"

    .line 16
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 17
    sget-object p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->h:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    return-object p1

    :cond_3
    const-string p1, "isJava"

    .line 18
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 19
    sget-object p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    return-object p1

    :cond_4
    return-object v0
.end method

.method private a()V
    .locals 7

    const-string v0, "history_time"

    .line 3
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a:Landroid/content/Context;

    const-string v2, "npth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 4
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 7
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Ljava/io/File;)Z

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d$a;

    invoke-direct {p2, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/h;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, ".npth"

    invoke-direct {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    .line 4
    aget-object v2, v0, v1

    .line 5
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Ljava/io/File;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/c;->a()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/c;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    .line 11
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/c;->a()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "upload_scene"

    const-string v7, "launch_scan"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/c;->c()Z

    move-result v3

    .line 14
    invoke-static {v5, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 18
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->a()V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/d;->b()V

    :cond_0
    return-void
.end method
