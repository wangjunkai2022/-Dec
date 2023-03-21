.class public Lcom/apk/mu;
.super Ljava/lang/Object;
.source "OSUtils.java"


# direct methods
.method public static A([B)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    invoke-static {p0}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 5
    invoke-static {v1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p0, v0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 6
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    invoke-static {p0}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 8
    invoke-static {v1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    return-object v0

    .line 9
    :goto_1
    invoke-static {p0}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 11
    throw v0
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "stickTime"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "saveTime"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class p1, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "collectId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public static abstract(Ljava/io/InputStream;)Lcom/apk/mv;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/mv;->case:Lcom/apk/mv;

    sget-object v1, Lcom/apk/mv;->else:Lcom/apk/mv;

    sget-object v2, Lcom/apk/mv;->goto:Lcom/apk/mv;

    new-instance v3, Lcom/apk/nw;

    invoke-direct {v3, p0}, Lcom/apk/nw;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-virtual {v3}, Lcom/apk/nw;->if()I

    move-result v4

    const v5, 0xffd8

    if-ne v4, v5, :cond_0

    .line 3
    sget-object p0, Lcom/apk/mv;->if:Lcom/apk/mv;

    return-object p0

    :cond_0
    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    .line 4
    invoke-virtual {v3}, Lcom/apk/nw;->if()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    const v6, -0x76afb1b9

    if-ne v4, v6, :cond_2

    const-wide/16 v0, 0x15

    .line 5
    invoke-virtual {v3, v0, v1}, Lcom/apk/nw;->for(J)J

    .line 6
    invoke-virtual {v3}, Lcom/apk/nw;->do()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    .line 7
    sget-object p0, Lcom/apk/mv;->new:Lcom/apk/mv;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/apk/mv;->try:Lcom/apk/mv;

    :goto_0
    return-object p0

    :cond_2
    shr-int/lit8 v6, v4, 0x8

    const v8, 0x474946

    if-ne v6, v8, :cond_3

    .line 8
    sget-object p0, Lcom/apk/mv;->do:Lcom/apk/mv;

    return-object p0

    :cond_3
    const v6, 0x52494646

    if-eq v4, v6, :cond_4

    return-object v2

    :cond_4
    const-wide/16 v8, 0x4

    .line 9
    invoke-virtual {v3, v8, v9}, Lcom/apk/nw;->for(J)J

    .line 10
    invoke-virtual {v3}, Lcom/apk/nw;->if()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/apk/nw;->if()I

    move-result v6

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    const v6, 0x57454250

    if-eq v4, v6, :cond_5

    return-object v2

    .line 11
    :cond_5
    invoke-virtual {v3}, Lcom/apk/nw;->if()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/apk/nw;->if()I

    move-result v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    and-int/lit16 v5, v4, -0x100

    const v6, 0x56503800

    if-eq v5, v6, :cond_6

    return-object v2

    :cond_6
    and-int/lit16 v2, v4, 0xff

    const/16 v4, 0x58

    if-ne v2, v4, :cond_8

    .line 12
    invoke-virtual {v3, v8, v9}, Lcom/apk/nw;->for(J)J

    .line 13
    invoke-virtual {v3}, Lcom/apk/nw;->do()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_8
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_a

    .line 14
    invoke-virtual {v3, v8, v9}, Lcom/apk/nw;->for(J)J

    .line 15
    invoke-virtual {v3}, Lcom/apk/nw;->do()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move-object v0, v1

    :goto_2
    return-object v0

    .line 16
    :cond_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static break(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static case(Landroid/content/Context;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/apk/mu;->else(Landroid/content/Context;ZZLcom/apk/g1;)Z

    move-result p0

    return p0
.end method

.method public static catch(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apk/ii;->for()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static class(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setImg(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getBookType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setCName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setAuthor(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getLastCapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setLastChapterId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/manhua/data/bean/ComicBean;->setFirstChapterId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static default(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/apk/mu;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static do(Ljava/lang/String;)V
    .locals 7

    const-string v0, "collectId = ?"

    const-string v1, "action"

    const-string v2, "addbookcase"

    const-string v3, "bookId"

    .line 1
    invoke-static {v1, v2, v3, p0}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->try()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/BookAction.aspx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/v0;->const()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data"

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Lcom/apk/p0;->native(Z)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p0, v3, v1

    .line 8
    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    const-class v5, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v3, v5}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v3, :cond_0

    .line 9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "loginName"

    .line 10
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-class v5, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object p0, v2, v1

    invoke-static {v5, v3, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static e()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static else(Landroid/content/Context;ZZLcom/apk/g1;)Z
    .locals 12

    .line 1
    invoke-static {}, Lcom/apk/mu;->instanceof()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/v0;->const()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/mu;->transient()I

    move-result p1

    if-lt p1, v0, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->catch()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v5, 0x0

    const p1, 0x7f10001e

    .line 5
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    const p1, 0x7f1003cc

    .line 6
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/apk/m00;

    invoke-direct {v8, p0}, Lcom/apk/m00;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/apk/n00;

    invoke-direct {v9, p3}, Lcom/apk/n00;-><init>(Lcom/apk/g1;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 7
    invoke-static/range {v4 .. v11}, Lcom/apk/eg;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    if-eqz p2, :cond_0

    return v2

    :cond_0
    return v3

    .line 8
    :cond_1
    invoke-static {}, Lcom/apk/mu;->transient()I

    move-result p2

    if-lt p2, v0, :cond_2

    const p2, 0x7f10022a

    new-array p3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/apk/mu;->instanceof()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-static {p2, p3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const p2, 0x7f100181

    .line 10
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/apk/o00;

    invoke-direct {v8, p0, p1}, Lcom/apk/o00;-><init>(Landroid/content/Context;Z)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 11
    invoke-static/range {v4 .. v11}, Lcom/apk/ze;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    return v2

    :cond_2
    return v3
.end method

.method public static extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {}, Lcom/apk/p0;->if()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :goto_0
    const-string v4, "/BookFiles/Html/"

    .line 4
    invoke-static {v1, v4}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".html"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-static {v1, v3}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object/from16 v3, p2

    :goto_1
    const-wide/16 v4, 0x0

    .line 7
    sget-object v6, Lcom/apk/xw;->if:Lcom/apk/xw;

    const/4 v7, 0x0

    const-string v8, "SP_HOST_CHAP_MH_KEY"

    invoke-static/range {v3 .. v8}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    const-string v4, "status"

    .line 8
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_13

    const-string v5, "hasContent"

    const-string v6, "data"

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 10
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_4

    return v2

    :cond_4
    const-string v7, "SP_LIMIT_CHAPTER_KEY_COMIC"

    const-string v8, "&"

    const-string v9, "content"

    const-string v11, "-1"

    .line 11
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 12
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-static {v10}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "\u8bf7\u5347\u7ea7\u6700\u65b0\u7248\u672c"

    .line 14
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 15
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    .line 16
    invoke-static {v7, v12}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 18
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 19
    sget-object v12, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v12, v7, v8}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    :cond_5
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/apk/v0;->const()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 21
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "userid"

    .line 22
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/apk/v0;->goto()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "deviceid"

    .line 23
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "bookid"

    move-object/from16 v12, p0

    .line 24
    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "chapterid"

    .line 25
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "mode"

    .line 26
    invoke-static {}, Lcom/apk/ze;->F()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x3

    goto :goto_3

    :cond_6
    const/4 v13, 0x2

    :goto_3
    invoke-virtual {v7, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "name"

    .line 27
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->if()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/BookChapters/GetChapter"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-static {v8, v7}, Lcom/apk/x4;->switch(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 30
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 31
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v4, v8

    .line 32
    :cond_7
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "null"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 34
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_8
    if-ne v4, v2, :cond_9

    .line 35
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v3}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_9
    const/16 v6, 0xc9

    if-ne v4, v6, :cond_a

    const-string v4, "pjb_conf"

    .line 38
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 39
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_PJB_UPDATE_DATA_KEY"

    invoke-virtual {v2, v4, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "EVENT_PJB_SHOW_UPDATE_KEY"

    .line 41
    invoke-static {v1, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 42
    :cond_a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 43
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    .line 45
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_b
    move-object/from16 v12, p0

    .line 46
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    .line 47
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v7, v4

    goto :goto_5

    :cond_c
    move-object/from16 v12, p0

    :cond_d
    :goto_4
    move-object v7, v10

    .line 50
    :goto_5
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_e

    const/4 v2, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_6
    const-string v2, "cname"

    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "pid"

    .line 53
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "nid"

    .line 55
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "HostKey"

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "need_share"

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 59
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v5, v14

    move-object v6, v15

    move v8, v13

    move-object/from16 v9, v16

    .line 60
    invoke-static/range {v1 .. v10}, Lcom/apk/mu;->y(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_f
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    const-string v4, ""

    const-string v5, "-2"

    const/4 v7, 0x0

    const-string v10, ""

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v6, p1

    move v8, v13

    move-object/from16 v9, v16

    .line 62
    invoke-static/range {v1 .. v10}, Lcom/apk/mu;->y(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_10
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    const-string v4, ""

    const-string v6, "-2"

    const/4 v7, 0x0

    const-string v10, ""

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v5, p1

    move v8, v13

    move-object/from16 v9, v16

    .line 64
    invoke-static/range {v1 .. v10}, Lcom/apk/mu;->y(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7
    return v3

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;
    .locals 1

    .line 1
    new-instance v0, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/manhua/data/bean/ComicBean;->setImg(Ljava/lang/String;)V

    return-object v0
.end method

.method public static finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "collectId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/manhua/data/bean/ComicCollectBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static for(Lcom/apk/zg0$do;Lcom/apk/fy;)Lcom/apk/zg0$do;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/apk/sg0$do;

    invoke-direct {v0}, Lcom/apk/sg0$do;-><init>()V

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/apk/sg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/sg0$do;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/zg0$do;->new(Lcom/apk/sg0;)Lcom/apk/zg0$do;

    return-object p0
.end method

.method public static g()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static goto(Landroid/content/Context;)Z
    .locals 13

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/mu;->transient()I

    move-result v0

    invoke-static {}, Lcom/apk/mu;->instanceof()I

    move-result v2

    if-lt v0, v2, :cond_0

    const v0, 0x7f10022a

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/apk/mu;->instanceof()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const v0, 0x7f100181

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/apk/p00;

    invoke-direct {v9, p0}, Lcom/apk/p00;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    .line 5
    invoke-static/range {v5 .. v12}, Lcom/apk/ze;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    return v2

    :cond_0
    return v1
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "collectId = ?"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 2
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->count(Ljava/lang/Class;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static i()Z
    .locals 2

    const-string v0, "ro.build.version.emui"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static if(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/q00;

    invoke-direct {v1, p0}, Lcom/apk/q00;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/apk/mu;->do(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static implements()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/apk/mu;->interface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static import([Ljava/lang/String;)V
    .locals 9

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 2
    :try_start_0
    const-class v6, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "collectId = ?"

    aput-object v8, v7, v1

    aput-object v3, v7, v5

    invoke-static {v6, v7}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/apk/o0;->catch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_1
    :try_start_1
    const-class v6, Lcom/manhua/data/bean/ComicChapterBean;

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "novelId = ?"

    aput-object v7, v4, v1

    aput-object v3, v4, v5

    invoke-static {v6, v4}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .line 6
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CATELOG_GET_COMIC_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/apk/ze;->W(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static instanceof()I
    .locals 2

    const-string v0, "SP_LOGIN_CHECK_BS_SIZE_KEY"

    const/16 v1, 0xa

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static interface()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/da;->break()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "stickTime desc, saveTime desc"

    return-object v0

    :cond_0
    const-string v0, "stickTime desc, lastUpdateTime desc, saveTime desc"

    return-object v0
.end method

.method public static j()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/mu;->i()Z

    move-result v0

    const-string v1, "ro.build.version.emui"

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, "EmotionUI_3.0"

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 3
    invoke-static {}, Lcom/apk/mu;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v0, "EmotionUI 3"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "EmotionUI_3.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    return v3
.end method

.method public static k()Z
    .locals 4

    const-string v0, "ro.build.display.id"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flyme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "os"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    const/16 v3, 0xa

    .line 6
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    const/4 v3, 0x7

    .line 7
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/4 v2, 0x1

    :catch_0
    :cond_2
    return v2
.end method

.method public static l()Z
    .locals 2

    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static m()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/mu;->l()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0, v1}, Lcom/apk/mu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x6

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :catch_0
    :cond_1
    return v2
.end method

.method public static n(Landroid/database/sqlite/SQLiteDatabase;Lcom/apk/yx;)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/apk/yx;->do:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    const-string v4, "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "table"

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    .line 3
    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_1

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 6
    :cond_1
    :try_start_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v3

    .line 8
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-lez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_3
    throw p0

    :cond_4
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    return v1

    :cond_5
    const-string v0, "select * from "

    .line 11
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/apk/yx;->do:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_6

    return v2

    .line 12
    :cond_6
    :try_start_4
    iget-object v0, p1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 13
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v0, v3, :cond_b

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_a

    .line 14
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v5, p1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_6
    const/4 v7, -0x1

    if-ge v6, v5, :cond_8

    .line 16
    iget-object v8, p1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/apk/vx;

    iget-object v8, v8, Lcom/apk/vx;->do:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v8, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, -0x1

    :goto_7
    if-ne v6, v7, :cond_9

    .line 17
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    :cond_b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_2
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 18
    throw p1
.end method

.method public static native(Ljava/nio/channels/FileChannel;)Lcom/apk/w30;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            ")",
            "Lcom/apk/w30<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/apk/x30;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_7

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, v2

    if-gtz v8, :cond_6

    sub-long v6, v0, v6

    const/4 v8, 0x4

    .line 3
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 4
    invoke-virtual {p0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5
    invoke-virtual {p0, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 6
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v10, 0x6054b50

    if-ne v9, v10, :cond_5

    const/4 v9, 0x2

    .line 8
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const-wide/16 v10, 0x14

    add-long/2addr v6, v10

    .line 9
    invoke-virtual {p0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 10
    invoke-virtual {p0, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 11
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    if-ne v6, v5, :cond_5

    int-to-long v0, v6

    .line 13
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 14
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x6

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 16
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 17
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v5, v0, v2

    if-ltz v5, :cond_4

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    .line 18
    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x18

    .line 19
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 21
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    .line 22
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    const-wide v7, 0x20676953204b5041L

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    const/16 v3, 0x10

    .line 23
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    const-wide v7, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    .line 24
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v7, v5, v2

    if-ltz v7, :cond_2

    const-wide/32 v2, 0x7ffffff7

    cmp-long v7, v5, v2

    if-gtz v7, :cond_2

    const-wide/16 v2, 0x8

    add-long/2addr v2, v5

    long-to-int v3, v2

    int-to-long v7, v3

    sub-long/2addr v0, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 28
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 29
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 32
    new-instance v0, Lcom/apk/w30;

    invoke-direct {v0, v2, p0}, Lcom/apk/w30;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 33
    :cond_0
    new-instance p0, Lcom/apk/x30;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_1
    new-instance p0, Lcom/apk/x30;

    const-string v2, "APK Signing Block offset out of range: "

    invoke-static {v2, v0, v1}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_2
    new-instance p0, Lcom/apk/x30;

    const-string v0, "APK Signing Block size out of range: "

    invoke-static {v0, v5, v6}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_3
    new-instance p0, Lcom/apk/x30;

    const-string v0, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_4
    new-instance p0, Lcom/apk/x30;

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-static {v2, v0, v1}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 38
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ZIP End of Central Directory (EOCD) record not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "APK too small for ZIP End of Central Directory (EOCD) record"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs new([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/mu;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/apk/mu;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/apk/wu;->do:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/apk/yu;->do(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/apk/mu;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    :cond_3
    return v1

    :cond_4
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-static {}, Lcom/apk/mu;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    :cond_5
    return v1

    :cond_6
    const-string v0, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-static {p0}, Lcom/apk/mu;->c(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_7
    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    invoke-static {}, Lcom/apk/mu;->f()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    :cond_8
    return v1

    .line 17
    :cond_9
    invoke-static {}, Lcom/apk/mu;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_0
    const-string p1, "android.permission.BODY_SENSORS"

    .line 21
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    :catch_0
    return v2

    :cond_c
    :goto_2
    return v1

    .line 22
    :cond_d
    invoke-static {}, Lcom/apk/mu;->g()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_1
    const-string p1, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 24
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    :goto_3
    move v2, v1

    :catch_1
    return v2

    :cond_f
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_2
    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 26
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p0, :cond_10

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    :goto_4
    move v2, v1

    :catch_2
    return v2

    .line 27
    :cond_11
    :try_start_3
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez p0, :cond_12

    goto :goto_5

    :cond_12
    const/4 v1, 0x0

    :goto_5
    move v2, v1

    :catch_3
    return v2
.end method

.method public static p(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/apk/mu;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {p0, v0}, Lcom/apk/mu;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static package(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/jm;

    invoke-direct {v0}, Lcom/apk/jm;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/vr;

    invoke-direct {v1, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v2, Lcom/apk/vr;

    invoke-direct {v2, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p0, Lcom/apk/u30;

    invoke-direct {p0, v1, v2}, Lcom/apk/u30;-><init>(Lcom/apk/kj;Lcom/apk/kj;)V

    invoke-virtual {v0, p0}, Lcom/apk/jm;->do(Lcom/apk/kj;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static private(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/apk/mu;->package(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/a6;->case()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static protected(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {p0}, Lcom/apk/mu;->native(Ljava/nio/channels/FileChannel;)Lcom/apk/w30;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/apk/w30;->do:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {v2}, Lcom/apk/mu;->public(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/apk/x30; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-object p0, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    move-object v1, p0

    :goto_0
    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/apk/x30; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_1

    :catch_2
    nop

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/apk/x30; {:try_start_5 .. :try_end_5} :catch_8

    .line 9
    :catch_3
    :cond_1
    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/apk/x30; {:try_start_6 .. :try_end_6} :catch_8

    :catch_4
    move-object p0, v0

    move-object v1, p0

    :goto_2
    if-eqz p0, :cond_2

    .line 10
    :try_start_7
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/apk/x30; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_3

    :catch_5
    nop

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    move-object v2, v0

    .line 11
    :catch_6
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/apk/x30; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    nop

    goto :goto_5

    :catch_8
    :cond_3
    move-object v2, v0

    :goto_5
    if-nez v2, :cond_4

    goto :goto_6

    :cond_4
    const p0, 0x71777777

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-nez p0, :cond_5

    :goto_6
    move-object p0, v0

    goto :goto_7

    .line 13
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/2addr p0, v2

    .line 17
    invoke-static {v1, v3, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_7
    if-nez p0, :cond_6

    goto :goto_8

    .line 18
    :cond_6
    :try_start_9
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_9

    move-object v0, v1

    goto :goto_8

    :catch_9
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_8
    return-object v0
.end method

.method public static public(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/x30;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_8

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-gt v0, v3, :cond_6

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v5, 0x4

    const-string v7, " size out of range: "

    const-string v8, "APK Signing Block entry #"

    cmp-long v9, v2, v5

    if-ltz v9, :cond_3

    const-wide/32 v5, 0x7fffffff

    cmp-long v9, v2, v5

    if-gtz v9, :cond_3

    long-to-int v3, v2

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v3, v5, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v3, v3, -0x4

    if-ltz v3, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v3, v7

    if-lt v3, v7, :cond_0

    if-gt v3, v6, :cond_0

    .line 25
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    invoke-virtual {p0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p0

    .line 33
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "size: "

    invoke-static {v0, v3}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_2
    new-instance p0, Lcom/apk/x30;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_3
    new-instance p0, Lcom/apk/x30;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_4
    new-instance p0, Lcom/apk/x30;

    const-string v0, "Insufficient data to read size of APK Signing Block entry #"

    invoke-static {v0, v4}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apk/x30;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0

    :catchall_1
    move-exception v0

    .line 39
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    .line 42
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end > capacity: "

    const-string v3, " > "

    invoke-static {v1, v0, v3, v2}, Lcom/apk/goto;->synchronized(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "end < start: "

    const-string v3, " < "

    invoke-static {v2, v0, v3, v1}, Lcom/apk/goto;->synchronized(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/mu;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/apk/mu;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/apk/mu;->d()Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "android.permission.BODY_SENSORS"

    .line 7
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 8
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1

    .line 9
    :cond_5
    invoke-static {}, Lcom/apk/mu;->g()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_1
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 12
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 14
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :catch_2
    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_a

    .line 15
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 16
    :cond_b
    :try_start_3
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :catch_3
    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_d

    .line 17
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static r(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static return(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:"

    .line 2
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static s(Lorg/json/JSONObject;)Lcom/manhua/data/bean/ComicBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    :try_start_0
    const-string v1, "BookName"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    const-string v1, "BookId"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    const-string v1, "BookImage"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setImg(Ljava/lang/String;)V

    const-string v1, "Author"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setAuthor(Ljava/lang/String;)V

    const-string v1, "CategoryName"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setCName(Ljava/lang/String;)V

    const-string v1, "Description"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    const-string v1, "Score"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/manhua/data/bean/ComicBean;->setScore(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static static(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static strictfp(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/mu;->new([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static super(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static switch(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/a6;->case()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/apk/ze;->protected(Ljava/io/File;)J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/apk/ze;->throws(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "0B"

    return-object p0
.end method

.method public static synchronized()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation

    const-string v0, "saveTime desc"

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "loginName != ? and readChapterId != ?"

    const-string v2, ""

    filled-new-array {v1, v2, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static t([Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/v0;->const()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/mu;->import([Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_0
    array-length v2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    move-object v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 4
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v4

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x1

    if-eq v4, v5, :cond_1

    const-string v5, ","

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "action"

    const-string v4, "removebookcase"

    .line 6
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bookIds"

    .line 7
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->try()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/BookAction.aspx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3, v2}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "status"

    const/4 v4, -0x1

    .line 10
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 11
    invoke-static {v1}, Lcom/apk/p0;->native(Z)V

    .line 12
    invoke-static {p0}, Lcom/apk/mu;->import([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return v0
.end method

.method public static this(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static throw(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "&"

    if-gtz v1, :cond_1

    const/16 v1, 0x3f

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "?"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    .line 9
    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static throws(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_0
    move-object p0, v0

    .line 3
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    .line 4
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    :try_start_1
    invoke-static {v1}, Lcom/apk/mu;->protected(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    move-object v2, v0

    :cond_3
    if-nez v2, :cond_4

    :goto_4
    move-object p0, v0

    goto :goto_5

    :cond_4
    const-string p0, "channel"

    .line 13
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p0, Lcom/apk/v30;

    invoke-direct {p0, v1, v2}, Lcom/apk/v30;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_5
    if-nez p0, :cond_5

    goto :goto_6

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/apk/v30;->do:Ljava/lang/String;

    :goto_6
    return-object v0
.end method

.method public static transient()I
    .locals 1

    .line 1
    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {v0}, Lorg/litepal/LitePal;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static try(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "stickTime"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "saveTime"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class p1, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "collectId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return-void
.end method

.method public static u(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 2
    iget-object v0, v0, Lcom/apk/tw;->if:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized v(Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 2

    const-class v0, Lcom/apk/mu;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0, p4, p2, p1, p3}, Lcom/apk/ze;->if(Lcom/manhua/data/bean/ComicBean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/da;->super(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string v1, "novelId = ? and url != ?"

    aput-object v1, p2, p4

    .line 3
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p4, 0x2

    const-string v1, "ROLLNAME_LAYOUT_KEY"

    aput-object v1, p2, p4

    invoke-static {p2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p2

    const-class p4, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-virtual {p2, p4}, Lorg/litepal/FluentQuery;->count(Ljava/lang/Class;)I

    move-result p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/manhua/data/bean/ComicCollectBean;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object p0

    if-nez p0, :cond_2

    .line 6
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->save()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p6, :cond_1

    const p0, 0x7f10001f

    .line 7
    invoke-static {p0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apk/mu;->if(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/apk/ze;->Z(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 12
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static volatile()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "readChapterId = ? and addTime < ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x19bfcc00

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    .line 4
    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static w(Lcom/manhua/data/bean/ComicBean;Z)V
    .locals 7

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v5, p1

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/apk/mu;->v(Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static while(Ljava/io/File;)Z
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 7
    invoke-static {v3}, Lcom/apk/mu;->while(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized x(Lcom/manhua/data/bean/ComicCollectBean;)Z
    .locals 3

    const-class v0, Lcom/apk/mu;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setAddTime(J)V

    .line 3
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lcom/apk/ze;->Y(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p0, 0x0

    .line 6
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static y(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "novelId = ? and oid = ?"

    aput-object v12, v10, v11

    const/4 v13, 0x1

    aput-object v0, v10, v13

    const/4 v14, 0x2

    aput-object v1, v10, v14

    .line 1
    invoke-static {v10}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v10

    const-class v15, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-virtual {v10, v15}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicChapterBean;

    if-eqz v10, :cond_9

    .line 2
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v14, "novelId"

    .line 4
    invoke-virtual {v15, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v10, v0}, Lcom/manhua/data/bean/ComicChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v13, "-2"

    if-nez v14, :cond_1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "oid"

    .line 7
    invoke-virtual {v15, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v10, v1}, Lcom/manhua/data/bean/ComicChapterBean;->setOid(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "name"

    .line 10
    invoke-virtual {v15, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v10, v2}, Lcom/manhua/data/bean/ComicChapterBean;->setName(Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "pid"

    .line 13
    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v10, v3}, Lcom/manhua/data/bean/ComicChapterBean;->setPid(Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "nid"

    .line 16
    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v10, v4}, Lcom/manhua/data/bean/ComicChapterBean;->setNid(Ljava/lang/String;)V

    .line 18
    :cond_4
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "content"

    .line 19
    invoke-virtual {v15, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v10, v5}, Lcom/manhua/data/bean/ComicChapterBean;->setContent(Ljava/lang/String;)V

    :cond_5
    if-eqz p0, :cond_6

    .line 21
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasContent"

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    invoke-virtual {v10, v6}, Lcom/manhua/data/bean/ComicChapterBean;->setHasContent(Z)V

    .line 23
    :cond_6
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "HostKey"

    .line 24
    invoke-virtual {v15, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v10, v7}, Lcom/manhua/data/bean/ComicChapterBean;->setHostKey(Ljava/lang/String;)V

    .line 26
    :cond_7
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "need_share"

    .line 27
    invoke-virtual {v15, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v10, v8}, Lcom/manhua/data/bean/ComicChapterBean;->setNeed_share(Ljava/lang/String;)V

    .line 29
    :cond_8
    const-class v2, Lcom/manhua/data/bean/ComicChapterBean;

    new-array v3, v9, [Ljava/lang/String;

    aput-object v12, v3, v11

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v2, v15, v3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_9
    new-instance v10, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-direct {v10}, Lcom/manhua/data/bean/ComicChapterBean;-><init>()V

    .line 31
    invoke-virtual {v10, v0}, Lcom/manhua/data/bean/ComicChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v10, v1}, Lcom/manhua/data/bean/ComicChapterBean;->setOid(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v10, v2}, Lcom/manhua/data/bean/ComicChapterBean;->setName(Ljava/lang/String;)V

    const-string v0, ""

    .line 34
    invoke-virtual {v10, v0}, Lcom/manhua/data/bean/ComicChapterBean;->setUrl(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v10, v3}, Lcom/manhua/data/bean/ComicChapterBean;->setPid(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v10, v4}, Lcom/manhua/data/bean/ComicChapterBean;->setNid(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v10, v5}, Lcom/manhua/data/bean/ComicChapterBean;->setContent(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v10, v6}, Lcom/manhua/data/bean/ComicChapterBean;->setHasContent(Z)V

    .line 39
    invoke-virtual {v10, v7}, Lcom/manhua/data/bean/ComicChapterBean;->setHostKey(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v10, v8}, Lcom/manhua/data/bean/ComicChapterBean;->setNeed_share(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v10}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 42
    :goto_0
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/apk/da;->do(Lcom/manhua/data/bean/ComicChapterBean;)V

    return-void
.end method

.method public static z(Ljava/lang/Object;)[B
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {v2}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 8
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    invoke-static {v2}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    move-object v0, v2

    .line 11
    :goto_2
    invoke-static {v0}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 13
    throw p0
.end method
