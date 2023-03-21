.class public Lcom/apk/c0;
.super Ljava/lang/Object;
.source "BaiDuVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/c0$for;
    }
.end annotation


# instance fields
.field public case:Z

.field public final do:Landroid/content/Context;

.field public else:Ljava/lang/String;

.field public for:Lcom/apk/f0;

.field public final if:Lcom/apk/e1;

.field public new:Z

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/e1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/c0;->case:Z

    .line 3
    iput-object p1, p0, Lcom/apk/c0;->do:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/apk/c0;->if:Lcom/apk/e1;

    return-void
.end method

.method public static do(Lcom/apk/c0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_2

    const-string v0, "BaiduPlugin"

    .line 1
    :try_start_0
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v2, "jniLibs"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    iput-boolean v3, p0, Lcom/apk/c0;->case:Z

    .line 9
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 11
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    .line 16
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

.method public static for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "/"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2
    array-length v3, v2

    if-lez v3, :cond_0

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 5
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v6, v5}, Lcom/apk/c0;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 8
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 9
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 10
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 13
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public static if(Lcom/apk/c0;Landroid/content/Context;Ljava/lang/String;Lcom/apk/e1;Z)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/c0;->new:Z

    .line 2
    new-instance v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;

    invoke-direct {v8}, Lcom/biquge/ebook/app/bean/DownloadFileModel;-><init>()V

    .line 3
    iput-object p2, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    const p2, 0x7f10009c

    .line 4
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/apk/c0$for;

    const-string v5, "UPDATE_TAG"

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/apk/c0$for;-><init>(Lcom/apk/c0;Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Ljava/lang/String;Lcom/apk/e1;Z)V

    .line 6
    sget-object p0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 7
    iget-object p1, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apk/ry;->if(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    sget-object p0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 9
    iget-object p1, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apk/ry;->do(Ljava/lang/String;)Lcom/apk/ty;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p2}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 11
    sget-object p1, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 12
    iget-object p3, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p1}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    :cond_1
    if-nez p0, :cond_2

    .line 15
    iget-object p0, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 16
    new-instance p1, Lcom/apk/ky;

    invoke-direct {p1, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object p0, v8, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/apk/ry;->for(Ljava/lang/String;Lcom/apk/qy;)Lcom/apk/ty;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p2}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    .line 19
    invoke-virtual {p0}, Lcom/apk/ty;->goto()Lcom/apk/ty;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget p1, p1, Lcom/apk/hy;->break:I

    if-eqz p1, :cond_5

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 22
    new-instance p3, Ljava/io/File;

    iget-object p1, p1, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p2, p3}, Lcom/apk/c0$for;->case(Ljava/io/File;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/apk/ty;->else()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/apk/ty;->this()V

    goto :goto_2

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object p1, p1, Lcom/apk/hy;->new:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 28
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object p2, p2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {p0}, Lcom/apk/ty;->this()V

    goto :goto_2

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/apk/ty;->else()V

    goto :goto_2

    .line 32
    :cond_8
    invoke-virtual {p0}, Lcom/apk/ty;->else()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public declared-synchronized case()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/c0;->for:Lcom/apk/f0;

    .line 2
    iget-object v0, v0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final new(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/c0;->else:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/apk/c0;->new(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public try(Landroid/content/Context;Lcom/apk/e1;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->new()Lcom/biquge/ebook/app/bean/WebConfBean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WebConfBean;->getSvasize()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100098

    .line 3
    invoke-static {v2, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f100097

    .line 4
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/apk/c0$do;

    invoke-direct {v7, p0, p1, v0, p2}, Lcom/apk/c0$do;-><init>(Lcom/apk/c0;Landroid/content/Context;Lcom/biquge/ebook/app/bean/WebConfBean;Lcom/apk/e1;)V

    const p2, 0x7f100096

    .line 5
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/apk/c0$if;

    invoke-direct {v9, p0}, Lcom/apk/c0$if;-><init>(Lcom/apk/c0;)V

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v3, p1

    .line 7
    invoke-static/range {v3 .. v12}, Lcom/apk/eg;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Ljava/lang/String;Lcom/apk/dt;Lcom/apk/gt;Lcom/apk/et;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
