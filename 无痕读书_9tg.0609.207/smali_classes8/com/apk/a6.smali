.class public Lcom/apk/a6;
.super Ljava/lang/Object;
.source "FilePathUtils.java"


# static fields
.field public static this:Lcom/apk/a6;


# instance fields
.field public case:Ljava/lang/String;

.field public do:Ljava/lang/String;

.field public else:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public goto:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "/cache"

    .line 6
    invoke-static {v0, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static else()Lcom/apk/a6;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/a6;->this:Lcom/apk/a6;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/a6;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/a6;->this:Lcom/apk/a6;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/a6;

    invoke-direct {v1}, Lcom/apk/a6;-><init>()V

    sput-object v1, Lcom/apk/a6;->this:Lcom/apk/a6;

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
    sget-object v0, Lcom/apk/a6;->this:Lcom/apk/a6;

    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a6;->try:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "glide_images"

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/a6;->try:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/a6;->try:Ljava/lang/String;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a6;->if:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "file"

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/a6;->if:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/a6;->if:Ljava/lang/String;

    return-object v0
.end method

.method public goto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 8
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :try_start_2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 12
    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_1
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    :try_start_3
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 16
    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 18
    :cond_2
    :try_start_4
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 19
    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_3
    :goto_3
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a6;->do:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "books"

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/a6;->do:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/a6;->do:Ljava/lang/String;

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a6;->for:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unZip"

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/a6;->for:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/a6;->for:Ljava/lang/String;

    return-object v0
.end method

.method public this()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a6;->else:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "plugin"

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/a6;->else:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/a6;->else:Ljava/lang/String;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a6;->goto:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Download"

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/a6;->goto:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/a6;->goto:Ljava/lang/String;

    return-object v0
.end method
