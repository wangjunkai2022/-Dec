.class public Lcom/apk/e0;
.super Lcom/apk/c1;
.source "BaiDuVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/io/File;

.field public final synthetic for:Lcom/apk/e1;

.field public final synthetic if:Landroid/content/Context;

.field public final synthetic new:Lcom/apk/c0;


# direct methods
.method public constructor <init>(Lcom/apk/c0;Ljava/io/File;Landroid/content/Context;Lcom/apk/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    iput-object p2, p0, Lcom/apk/e0;->do:Ljava/io/File;

    iput-object p3, p0, Lcom/apk/e0;->if:Landroid/content/Context;

    iput-object p4, p0, Lcom/apk/e0;->for:Lcom/apk/e1;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 13

    const-string v0, "main"

    const-string v1, "src"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/apk/e0;->do:Ljava/io/File;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    .line 4
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr v6, v5

    .line 6
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_3
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v7

    invoke-virtual {v7}, Lcom/apk/a6;->this()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_6
    iget-object v2, p0, Lcom/apk/e0;->do:Ljava/io/File;

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v3}, Lcom/apk/eg;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v2, :cond_8

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/apk/e0;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 14
    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->native(Ljava/lang/String;)Z

    goto :goto_5

    .line 16
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 17
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 19
    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/a6;->this()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BaiduPlugin"

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_9
    iget-object v3, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    .line 23
    invoke-virtual {v3, v6}, Lcom/apk/c0;->new(Ljava/io/File;)V

    .line 24
    iget-object v3, v3, Lcom/apk/c0;->else:Ljava/lang/String;

    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "assets"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 27
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 29
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/apk/ze;->break(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 30
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "jniLibs"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    :goto_7
    if-ge v4, v1, :cond_b

    aget-object v3, v0, v4

    .line 33
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/apk/ze;->this(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 34
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/apk/e0;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 35
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 36
    :goto_8
    :try_start_7
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->native(Ljava/lang/String;)Z

    goto :goto_9

    .line 38
    :cond_c
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 39
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_9
    iget-object v0, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    .line 41
    iput-boolean v5, v0, Lcom/apk/c0;->try:Z

    const-string v0, "is_download_plugin"

    .line 42
    iget-object v1, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    .line 43
    iget-boolean v1, v1, Lcom/apk/c0;->try:Z

    .line 44
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "is_download_plugin_new_version_8"

    .line 45
    iget-object v1, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    .line 46
    iget-boolean v1, v1, Lcom/apk/c0;->try:Z

    .line 47
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f100095

    .line 4
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    iget-object v1, p0, Lcom/apk/e0;->if:Landroid/content/Context;

    iget-object v2, p0, Lcom/apk/e0;->for:Lcom/apk/e1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 6
    new-instance v5, Lcom/apk/b1;

    invoke-direct {v5}, Lcom/apk/b1;-><init>()V

    .line 7
    invoke-virtual {v5, v1, v0, v4}, Lcom/apk/b1;->for(Landroid/content/Context;ZLjava/lang/String;)Lcom/apk/b1;

    .line 8
    new-instance v4, Lcom/apk/b0;

    invoke-direct {v4, p1, v1, v2, v3}, Lcom/apk/b0;-><init>(Lcom/apk/c0;Landroid/content/Context;Lcom/apk/e1;Z)V

    invoke-virtual {v5, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/apk/e0;->new:Lcom/apk/c0;

    .line 10
    iput-boolean v0, p1, Lcom/apk/c0;->new:Z

    return-void

    .line 11
    :cond_1
    throw v4
.end method
