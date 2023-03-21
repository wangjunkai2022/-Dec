.class public Lcom/apk/kf$do;
.super Ljava/lang/Object;
.source "DownloadFileManager.java"

# interfaces
.implements Lcom/apk/z5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/kf;


# direct methods
.method public constructor <init>(Lcom/apk/kf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 2
    iget-object v1, v0, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/apk/kf;->do:Ljava/util/Map;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".ZIP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v2, :cond_4

    .line 7
    :cond_1
    :try_start_1
    new-instance v2, Lcom/apk/re0;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/apk/re0;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/apk/re0;->do(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 9
    :try_start_2
    iget-object p1, v2, Lcom/apk/re0;->for:Lcom/apk/of0;

    .line 10
    iget-object p1, p1, Lcom/apk/of0;->do:Lcom/apk/ff0;

    .line 11
    iget-object p1, p1, Lcom/apk/ff0;->do:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/if0;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p1, Lcom/apk/if0;->catch:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object p1, v1

    .line 15
    :goto_0
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    iget-object v3, v2, Lcom/apk/re0;->try:Lcom/apk/pf0;

    if-eqz v3, :cond_3

    .line 17
    iget-object p1, v3, Lcom/apk/pf0;->try:Ljava/lang/String;

    .line 18
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 20
    :try_start_4
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/apk/re0;->do:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v1

    .line 22
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v2

    goto :goto_2

    :cond_4
    move-object p1, v1

    .line 23
    :goto_2
    iget-object v2, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 24
    iget-object v2, v2, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 25
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    .line 26
    invoke-virtual {p2, v2}, Lcom/biquge/ebook/app/bean/NewReadFont;->setFinish(Z)V

    .line 27
    invoke-virtual {p2, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setStartDownload(Z)V

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 29
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->setLocalPath(Ljava/lang/String;)V

    .line 30
    :cond_5
    iget-object v3, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    if-eqz v3, :cond_6

    const-string v1, "CACHE_DOWNLOAD_FONT_START"

    .line 31
    invoke-static {v1, p2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "isFinish"

    .line 33
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "localPath"

    .line 34
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-class p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "fid = ?"

    aput-object v4, v3, v0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {p1, v1, v3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_3

    .line 36
    :cond_6
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public for(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 2
    iget-object v1, v0, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 6
    iget-object v0, v0, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3, p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->setCurrentSize(I)V

    .line 9
    invoke-virtual {p3, p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->setTotalSize(I)V

    .line 10
    iget-object p1, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    if-eqz p1, :cond_1

    const-string p1, "CACHE_DOWNLOAD_FONT_START"

    .line 11
    invoke-static {p1, p3}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 2
    iget-object v0, p1, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iput-object v0, p1, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 5
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 6
    iget-object p1, p1, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setFinish(Z)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setStartDownload(Z)V

    .line 10
    iget-object v0, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    if-eqz v0, :cond_1

    const-string v0, "CACHE_DOWNLOAD_FONT_START"

    .line 11
    invoke-static {v0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/kf$do;->do:Lcom/apk/kf;

    .line 15
    iget-object p1, p1, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 16
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
