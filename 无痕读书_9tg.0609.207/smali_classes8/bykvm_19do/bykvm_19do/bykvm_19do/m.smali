.class public Lbykvm_19do/bykvm_19do/bykvm_19do/m;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/e2;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "package"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v1, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "has zijie pkg"

    .line 5
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "real_package_name"

    .line 7
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v2, :cond_2

    .line 9
    :try_start_1
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, ""

    const-string v5, "app_version"

    if-nez v3, :cond_3

    .line 11
    :try_start_2
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_4

    .line 12
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :goto_4
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v5, "app_version_minor"

    if-nez v3, :cond_5

    .line 14
    :try_start_3
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :goto_5
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->d()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, "version_code"

    if-eqz v3, :cond_6

    .line 17
    :try_start_4
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->d()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    .line 18
    :cond_6
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    :goto_6
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v4, "update_version_code"

    if-eqz v3, :cond_7

    .line 20
    :try_start_5
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    .line 21
    :cond_7
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    :goto_7
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->f()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v4, "manifest_version_code"

    if-eqz v3, :cond_8

    .line 23
    :try_start_6
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->f()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_8

    .line 24
    :cond_8
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    :goto_8
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_9

    const-string v0, "app_name"

    .line 26
    :try_start_7
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_a

    const-string v0, "tweaked_channel"

    .line 28
    :try_start_8
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    if-eqz v2, :cond_b

    .line 29
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_b

    .line 30
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lez v0, :cond_b

    const-string v2, "display_name"

    .line 31
    :try_start_9
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m;->e:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_b
    const/4 p1, 0x1

    return p1

    .line 32
    :goto_9
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return v1
.end method
