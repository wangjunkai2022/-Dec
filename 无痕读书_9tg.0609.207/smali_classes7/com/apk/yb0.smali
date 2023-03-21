.class public Lcom/apk/yb0;
.super Ljava/lang/Object;
.source "AndroidTtsVoiceUtils.java"


# direct methods
.method public constructor <init>(Lcom/apk/zb0;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/apk/g0$do;

    .line 3
    iget-object v0, p1, Lcom/apk/g0$do;->for:Lcom/apk/g0;

    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/apk/g0;->for:I

    .line 5
    iget-object v1, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/apk/c0;

    iget-object v2, p1, Lcom/apk/g0$do;->if:Landroid/content/Context;

    iget-object v3, p1, Lcom/apk/g0$do;->do:Lcom/apk/e1;

    invoke-direct {v1, v2, v3}, Lcom/apk/c0;-><init>(Landroid/content/Context;Lcom/apk/e1;)V

    .line 7
    iput-object v1, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/apk/g0$do;->for:Lcom/apk/g0;

    .line 9
    iget-object p1, p1, Lcom/apk/g0;->do:Lcom/apk/c0;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    :try_start_0
    sget-object v3, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 11
    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "tts"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 14
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    iget-object v1, p1, Lcom/apk/c0;->do:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v1, Lcom/apk/a0;

    invoke-direct {v1, p1}, Lcom/apk/a0;-><init>(Lcom/apk/c0;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto/16 :goto_3

    .line 15
    :cond_2
    iget-object v3, p1, Lcom/apk/c0;->do:Landroid/content/Context;

    iget-object v4, p1, Lcom/apk/c0;->if:Lcom/apk/e1;

    const-string v5, "BaiduPlugin"

    :try_start_1
    const-string v6, "is_download_plugin"

    .line 16
    invoke-static {v6, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p1, Lcom/apk/c0;->try:Z

    .line 17
    sget-object v6, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v7, "jniLibs"

    .line 18
    invoke-virtual {v6, v7, v1}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 19
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    .line 20
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v9

    invoke-virtual {v9}, Lcom/apk/a6;->this()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 22
    iget-boolean v5, p1, Lcom/apk/c0;->try:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const v6, 0x7f100093

    if-nez v5, :cond_7

    .line 23
    iget-boolean v5, p1, Lcom/apk/c0;->new:Z

    if-eqz v5, :cond_5

    .line 24
    invoke-static {v6}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_3

    .line 25
    :cond_5
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/continue;->new()Lcom/biquge/ebook/app/bean/WebConfBean;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/WebConfBean;->getSvasize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const v6, 0x7f100099

    invoke-static {v6, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v6, Lcom/apk/d0;

    invoke-direct {v6, p1, v3, v5, v4}, Lcom/apk/d0;-><init>(Lcom/apk/c0;Landroid/content/Context;Lcom/biquge/ebook/app/bean/WebConfBean;Lcom/apk/e1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_a

    .line 28
    :try_start_2
    move-object p1, v3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 29
    :cond_6
    invoke-static {v3, v2, v6, v0, v1}, Lcom/apk/ze;->b0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 30
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    const-string v2, "is_download_plugin_new_version_8"

    .line 31
    invoke-static {v2, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 32
    iget-boolean v0, p1, Lcom/apk/c0;->new:Z

    if-eqz v0, :cond_8

    .line 33
    invoke-static {v6}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {p1, v3, v4}, Lcom/apk/c0;->try(Landroid/content/Context;Lcom/apk/e1;)V

    goto :goto_3

    .line 35
    :cond_9
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    .line 36
    invoke-virtual {v2, v3, v1, v0}, Lcom/apk/b1;->for(Landroid/content/Context;ZLjava/lang/String;)Lcom/apk/b1;

    .line 37
    new-instance v0, Lcom/apk/b0;

    invoke-direct {v0, p1, v3, v4, v1}, Lcom/apk/b0;-><init>(Lcom/apk/c0;Landroid/content/Context;Lcom/apk/e1;Z)V

    invoke-virtual {v2, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    return-void

    .line 39
    :cond_b
    throw v0
.end method
