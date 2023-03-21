.class public Lcom/apk/eg;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field public static do:Lcom/apk/st;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/st<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static abstract(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x10000000

    .line 2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 8
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 18
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/expand/listen/bean/ListenDetail;)V
    .locals 10

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/SameTjHistory;

    const-string v1, "type = ? and sId = ?"

    const/4 v2, 0x3

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    .line 2
    invoke-virtual {p1}, Lcom/expand/listen/bean/ListenDetail;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    .line 3
    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/SameTjHistory;

    if-nez v3, :cond_0

    .line 5
    new-instance v0, Lcom/biquge/ebook/app/bean/SameTjHistory;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/SameTjHistory;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/expand/listen/bean/ListenDetail;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setsId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/expand/listen/bean/ListenDetail;->getImg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/expand/listen/bean/ListenDetail;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/expand/listen/bean/ListenDetail;->getDesc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setDesc(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setData(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setReadTime(J)V

    .line 13
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "readTime"

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object p0, v2, v5

    .line 16
    invoke-virtual {p1}, Lcom/expand/listen/bean/ListenDetail;->getId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    .line 17
    invoke-static {v0, v3, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    :goto_0
    const-string p0, "REFRESH_SAME_TJ_HISTORY_KEY"

    const/4 p1, 0x0

    .line 18
    invoke-static {p0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static break(F)F
    .locals 1

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    return p0
.end method

.method public static c(Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V
    .locals 10

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/SameTjHistory;

    const-string v1, "type = ? and sId = ?"

    const/4 v2, 0x3

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    .line 2
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/VideoDetail;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    .line 3
    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/SameTjHistory;

    if-nez v3, :cond_0

    .line 5
    new-instance v0, Lcom/biquge/ebook/app/bean/SameTjHistory;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/SameTjHistory;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/VideoDetail;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setsId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/VideoDetail;->getImg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/VideoDetail;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/VideoDetail;->getDesc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setDesc(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setData(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setReadTime(J)V

    .line 13
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "readTime"

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object p0, v2, v5

    .line 16
    invoke-virtual {p1}, Lcom/expand/videoplayer/bean/VideoDetail;->getId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    .line 17
    invoke-static {v0, v3, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    :goto_0
    const-string p0, "REFRESH_SAME_TJ_HISTORY_KEY"

    const/4 p1, 0x0

    .line 18
    invoke-static {p0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static case(Landroid/view/View;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static catch(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/eg;->break(F)F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static class(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "_data"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v7

    .line 7
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 8
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_1
    move-exception p1

    move-object v7, p0

    move-object p0, p1

    :goto_2
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_2
    throw p0
.end method

.method public static const()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tingshu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getPlay_page()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static continue(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/listen/bean/ListenDetail;)V
    .locals 4

    const-string v0, "SP_TEMP_COMMEND_LISTENETAIL_KEY"

    .line 1
    invoke-static {v0, p3}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3}, Lcom/expand/listen/bean/ListenDetail;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Lcom/expand/listen/bean/ListenDetail;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->native()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/BookFiles/Html/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/info.html"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tingshu"

    .line 6
    invoke-static {p0, v0, p2, v1, v2}, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p0

    new-instance p2, Lcom/apk/xe;

    invoke-direct {p2, p1, p3}, Lcom/apk/xe;-><init>(Ljava/lang/String;Lcom/expand/listen/bean/ListenDetail;)V

    .line 8
    iget-object p0, p0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static default(ZZZ)Ljava/lang/String;
    .locals 9

    const-string v0, "35"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const/16 v2, 0xa

    .line 2
    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 3
    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 4
    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 5
    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 7
    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/goto;->static(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 10
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "serial"

    .line 13
    :goto_0
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "-"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_6

    .line 14
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    :try_start_1
    const-string v0, "wlan0"

    .line 15
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 17
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 19
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    aget-byte v7, v0, v5

    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    .line 21
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 24
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    :cond_5
    :goto_3
    move-object v0, v1

    .line 25
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz p1, :cond_7

    .line 26
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 27
    :try_start_2
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    :catch_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_7
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_8

    .line 30
    invoke-static {p0}, Lcom/apk/rt;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public static do(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "gdt"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "admob"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "pangle"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "mintegral"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "unity"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "baidu"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "ks"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "sigmob"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "klevin"

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const-string p0, "custom"

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V
    .locals 4

    const-string v0, "SP_TEMP_COMMEND_VIDEODETAIL_KEY"

    .line 1
    invoke-static {v0, p3}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3}, Lcom/expand/videoplayer/bean/VideoDetail;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Lcom/expand/videoplayer/bean/VideoDetail;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->finally()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/BookFiles/Html/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/info.html"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "movie"

    .line 6
    invoke-static {p0, v0, p2, v1, v2}, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p0

    new-instance p2, Lcom/apk/ye;

    invoke-direct {p2, p1, p3}, Lcom/apk/ye;-><init>(Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V

    .line 8
    iget-object p0, p0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extends()Ljava/lang/String;
    .locals 8

    const-string v0, "SP_UA_VALUE_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    :try_start_0
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "http.agent"

    .line 5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x1f

    if-le v6, v7, :cond_1

    const/16 v7, 0x7f

    if-lt v6, v7, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const-string v6, "\\u%04x"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    return-object v1
.end method

.method public static f(Lcom/apk/zs;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/zs;->if:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget v0, Lcom/codelibrary/R$string;->dialog_tips_title_txt:I

    invoke-static {v0}, Lcom/apk/eg;->package(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/apk/zs;->if:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/zs;->new:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 6
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x104000a

    .line 7
    invoke-static {v0}, Lcom/apk/eg;->package(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/apk/zs;->new:Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/apk/zs;->case:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 10
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x1040000

    .line 11
    invoke-static {v0}, Lcom/apk/eg;->package(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/apk/zs;->case:Ljava/lang/String;

    .line 13
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/zs;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 15
    iget-boolean v3, p0, Lcom/apk/zs;->break:Z

    .line 16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 17
    iput-object v3, v2, Lcom/apk/lv;->new:Ljava/lang/Boolean;

    .line 18
    iget-boolean v3, p0, Lcom/apk/zs;->class:Z

    .line 19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 20
    iput-object v3, v2, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 21
    iget-boolean v3, p0, Lcom/apk/zs;->const:Z

    .line 22
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 23
    iput-object v3, v2, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    .line 24
    new-instance v3, Lcom/apk/ct;

    invoke-direct {v3, p0}, Lcom/apk/ct;-><init>(Lcom/apk/zs;)V

    .line 25
    iput-object v3, v2, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 26
    iget-object v3, p0, Lcom/apk/zs;->if:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v3, v1

    .line 27
    :cond_6
    iget-object v4, p0, Lcom/apk/zs;->for:Ljava/lang/String;

    if-nez v4, :cond_7

    move-object v4, v1

    .line 28
    :cond_7
    iget-object v5, p0, Lcom/apk/zs;->case:Ljava/lang/String;

    if-nez v5, :cond_8

    move-object v5, v1

    .line 29
    :cond_8
    iget-object v6, p0, Lcom/apk/zs;->new:Ljava/lang/String;

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move-object v1, v6

    .line 30
    :goto_0
    new-instance v6, Lcom/apk/at;

    invoke-direct {v6, p0}, Lcom/apk/at;-><init>(Lcom/apk/zs;)V

    new-instance v7, Lcom/apk/bt;

    invoke-direct {v7, p0}, Lcom/apk/bt;-><init>(Lcom/apk/zs;)V

    .line 31
    iget-boolean p0, p0, Lcom/apk/zs;->catch:Z

    const/4 v8, 0x0

    .line 32
    sget-boolean v9, Lcom/apk/zu;->try:Z

    .line 33
    iput-boolean v9, v2, Lcom/apk/lv;->continue:Z

    .line 34
    new-instance v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;

    invoke-direct {v9, v0, v8}, Lcom/lxj/xpopup/impl/ConfirmPopupView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 35
    iput-object v3, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 36
    iput-object v4, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    .line 37
    iput-object v0, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 38
    iput-object v5, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    .line 39
    iput-object v1, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    .line 40
    iput-object v7, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->do:Lcom/apk/sv;

    .line 41
    iput-object v6, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->if:Lcom/apk/uv;

    .line 42
    iput-boolean p0, v9, Lcom/lxj/xpopup/impl/ConfirmPopupView;->const:Z

    .line 43
    iput-object v2, v9, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 44
    invoke-virtual {v9}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "movie"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getPlay_page()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static finally()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "movie"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getData_yu()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static for(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-ne p1, v1, :cond_0

    const-string p0, "InterstitialFull\u2014Interstitial"

    return-object p0

    :cond_0
    if-ne p1, v0, :cond_4

    const-string p0, "InterstitialFull\u2014FullVideo"

    return-object p0

    :pswitch_2
    const-string p0, "NativeDraw"

    return-object p0

    :pswitch_3
    const-string p0, "FullVideo"

    return-object p0

    :pswitch_4
    const-string p0, "RewardVideo"

    return-object p0

    :pswitch_5
    const-string p0, "Native-\u6a21\u677f\u6e32\u67d3"

    const-string p1, "Native-\u81ea\u6e32\u67d3"

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result p2

    if-ne p2, v1, :cond_1

    return-object p0

    :cond_1
    if-ne p2, v0, :cond_2

    return-object p1

    :cond_2
    if-ne p3, v1, :cond_3

    return-object p0

    :cond_3
    return-object p1

    :pswitch_6
    const-string p0, "Splash"

    return-object p0

    :pswitch_7
    const-string p0, "Interstitial"

    return-object p0

    :pswitch_8
    const-string p0, "Banner"

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/gt;Lcom/apk/et;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/apk/eg;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Ljava/lang/String;Lcom/apk/dt;Lcom/apk/gt;Lcom/apk/et;Z)V

    return-void
.end method

.method public static goto(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/eg;->do:Lcom/apk/st;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/st;->if:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v7, p4

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/apk/eg;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    return-void
.end method

.method public static if(II)Ljava/lang/String;
    .locals 2

    const-string v0, "FullVideo"

    const-string v1, "Interstitial"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    return-object v0

    :pswitch_2
    const-string p0, "Draw"

    return-object p0

    :pswitch_3
    return-object v0

    :pswitch_4
    const-string p0, "RewardVideo"

    return-object p0

    :pswitch_5
    const-string p0, "Native"

    return-object p0

    :pswitch_6
    const-string p0, "Splash"

    return-object p0

    :pswitch_7
    return-object v1

    :pswitch_8
    const-string p0, "Banner"

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static implements()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static import(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.externalstorage.documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    aget-object p1, p0, v4

    const-string v0, "primary"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.android.providers.downloads.documents"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://downloads/public_downloads"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 11
    invoke-static {p0, p1, v1, v1}, Lcom/apk/eg;->class(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.android.providers.media.documents"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    aget-object v0, p1, v4

    const-string v2, "image"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const-string v2, "video"

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const-string v2, "audio"

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_4
    :goto_0
    new-array v0, v3, [Ljava/lang/String;

    .line 22
    aget-object p1, p1, v3

    aput-object p1, v0, v4

    const-string p1, "_id=?"

    .line 23
    invoke-static {p0, v1, p1, v0}, Lcom/apk/eg;->class(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.photos.content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_6
    invoke-static {p0, p1, v1, v1}, Lcom/apk/eg;->class(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1
.end method

.method public static instanceof(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[1][0-9][0-9]{9}$"

    .line 1
    invoke-static {v0, p0}, Lcom/apk/eg;->protected(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static interface(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Lcom/apk/eg;->volatile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    invoke-static {p0}, Lcom/apk/eg;->continue(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 4
    invoke-static {p0}, Lcom/apk/eg;->strictfp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-static {p0}, Lcom/apk/eg;->throw(Landroid/app/Activity;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_2
    return v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/zs;

    invoke-direct {v0}, Lcom/apk/zs;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/apk/zs;->do:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/apk/zs;->for:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/apk/zs;->try:Lcom/apk/ft;

    const/4 p0, 0x1

    .line 5
    iput-boolean p0, v0, Lcom/apk/zs;->catch:Z

    .line 6
    iput-boolean p3, v0, Lcom/apk/zs;->class:Z

    .line 7
    iput-boolean p3, v0, Lcom/apk/zs;->const:Z

    .line 8
    iput-boolean p4, v0, Lcom/apk/zs;->final:Z

    .line 9
    invoke-static {v0}, Lcom/apk/eg;->f(Lcom/apk/zs;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move/from16 v8, p7

    .line 1
    invoke-static/range {v0 .. v8}, Lcom/apk/eg;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Ljava/lang/String;Lcom/apk/dt;Lcom/apk/et;Z)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Ljava/lang/String;Lcom/apk/dt;Lcom/apk/et;Z)V
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/apk/eg;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Ljava/lang/String;Lcom/apk/dt;Lcom/apk/gt;Lcom/apk/et;Z)V

    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Ljava/lang/String;Lcom/apk/dt;Lcom/apk/gt;Lcom/apk/et;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/zs;

    invoke-direct {v0}, Lcom/apk/zs;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/apk/zs;->do:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/apk/zs;->if:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/apk/zs;->for:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lcom/apk/zs;->new:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Lcom/apk/zs;->try:Lcom/apk/ft;

    .line 7
    iput-object p5, v0, Lcom/apk/zs;->case:Ljava/lang/String;

    .line 8
    iput-object p6, v0, Lcom/apk/zs;->else:Lcom/apk/dt;

    .line 9
    iput-object p7, v0, Lcom/apk/zs;->goto:Lcom/apk/gt;

    .line 10
    iput-object p8, v0, Lcom/apk/zs;->this:Lcom/apk/et;

    .line 11
    iput-boolean p9, v0, Lcom/apk/zs;->const:Z

    .line 12
    iput-boolean p9, v0, Lcom/apk/zs;->class:Z

    .line 13
    invoke-static {v0}, Lcom/apk/eg;->f(Lcom/apk/zs;)V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/re0;

    invoke-direct {v0, p0}, Lcom/apk/re0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/apk/re0;->if()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcom/apk/re0;->new(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/apk/re0;->do(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/apk/re0;->for()V

    .line 6
    iget-object p0, v0, Lcom/apk/re0;->for:Lcom/apk/of0;

    if-eqz p0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/apk/of0;->do:Lcom/apk/ff0;

    if-nez p0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/apk/ff0;->do:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static native()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tingshu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getData_yu()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static new(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "gdt"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "admob"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "pangle"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "mintegral"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "unity"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "baidu"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "ks"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "sigmob"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "klevin"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cname"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "protxt"

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "historyData"

    .line 4
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-class p2, Lcom/biquge/ebook/app/bean/SameTjHistory;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string v1, "type = ? and sId = ?"

    aput-object v1, p3, p4

    const/4 p4, 0x1

    aput-object p0, p3, p4

    const/4 p0, 0x2

    aput-object p1, p3, p0

    invoke-static {p2, v0, p3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    const-string p0, "REFRESH_SAME_TJ_HISTORY_KEY"

    const/4 p1, 0x0

    .line 6
    invoke-static {p0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static package(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static private(Landroid/content/Context;Lcom/apk/et;)V
    .locals 9

    const v0, 0x7f1000cd

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1000cb

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1000c9

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/apk/ig;

    invoke-direct {v5, p0}, Lcom/apk/ig;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v7, p1

    .line 4
    invoke-static/range {v1 .. v8}, Lcom/apk/ze;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    return-void
.end method

.method public static protected(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static public()Ljava/lang/String;
    .locals 2

    const-string v0, "CODE_SP_OAID_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static return(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/SameTjHistory;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type = ? and sId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, Lcom/biquge/ebook/app/bean/SameTjHistory;

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/SameTjHistory;

    return-object p0
.end method

.method public static static()I
    .locals 1

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static strictfp(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.util.FtFeature"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static super()Ljava/lang/String;
    .locals 6

    const-string v0, "CODE_SP_DEVICEID_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CODE_SP_OAID_KEY"

    .line 4
    invoke-static {v3, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_1
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_5

    .line 6
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_4

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x1

    if-lt v3, v4, :cond_3

    .line 8
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    .line 9
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 13
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_1
    move-object v2, v1

    .line 14
    :catch_2
    :cond_5
    :try_start_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v1, :cond_6

    .line 15
    :try_start_5
    invoke-static {}, Lcom/apk/eg;->throws()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :catch_4
    :cond_6
    :goto_2
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object v2
.end method

.method public static switch()I
    .locals 1

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static synchronized(II)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-gt p0, v0, :cond_0

    const/16 p0, 0x180

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static this(Lcom/biquge/ebook/app/bean/Book;)Lcom/manhua/data/bean/ComicBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setImg(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setLastChapterId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setFirstChapterId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getLastTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setLastTime(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setUpdateTime(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setAuthor(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/manhua/data/bean/ComicBean;->setCName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static throw(Landroid/app/Activity;)Landroid/view/DisplayCutout;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static throws()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0, v0}, Lcom/apk/eg;->default(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transient(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static try(ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static volatile(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "android.os.SystemProperties"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.miui.notch"

    aput-object v4, v3, v1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->finally()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Categories/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0, p2, p0, p3}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".html"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
