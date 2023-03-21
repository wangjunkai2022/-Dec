.class public Lcom/apk/g2;
.super Ljava/lang/Object;
.source "BookReadModule.java"


# instance fields
.field public do:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Vector;",
            ">;>;"
        }
    .end annotation
.end field

.field public for:I

.field public if:[B

.field public new:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/g2;->if:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/apk/g2;->for:I

    .line 4
    iput v0, p0, Lcom/apk/g2;->new:I

    return-void
.end method

.method public static abstract(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_RED_BACKGROUP_COLOR_INDEX_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static break()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/g2;->this()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static case()I
    .locals 2

    const-string v0, "RED_BG_SELECT_TYPE"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static catch()I
    .locals 2

    const-string v0, "interval_view_id"

    const/16 v1, 0x14

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static class()Lcom/biquge/ebook/app/bean/RedBgImageBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    const-string v1, "4"

    .line 2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    const-string v1, "#333333"

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgColor(Ljava/lang/String;)V

    const-string v1, "#888888"

    .line 4
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public static const()I
    .locals 2

    const-string v0, "SP_RED_BACKGROUP_COLOR_INDEX_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static continue(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_RED_BACKGROUP_IMAGE_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static default(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Lcom/apk/g2;->continue(I)V

    .line 2
    invoke-static {v0}, Lcom/apk/g2;->abstract(I)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/apk/da;->switch(Z)V

    .line 4
    invoke-static {v0}, Lcom/apk/da;->static(Z)V

    .line 5
    const-class v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    const-string v1, "type = ?"

    const-string v2, "6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    .line 7
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgImage(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    const/4 p0, 0x4

    .line 11
    invoke-static {p0}, Lcom/apk/g2;->private(I)V

    .line 12
    new-instance p0, Lcom/apk/mf;

    invoke-direct {p0}, Lcom/apk/mf;-><init>()V

    const-string p1, "backgorund_view_id"

    .line 13
    iput-object p1, p0, Lcom/apk/mf;->do:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const p0, 0x7f100286

    .line 15
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_0
    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "="

    .line 1
    invoke-static {p0, v0, p1}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static else()Lcom/biquge/ebook/app/bean/RedBgImageBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    const-string v1, "4"

    .line 2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    const-string v1, "#E8D8B7"

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgColor(Ljava/lang/String;)V

    const-string v1, "#333333"

    .line 4
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    const v1, 0x7f100284

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "readChapterId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "readChapterName"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "readPage"

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "saveTime"

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "firstChapterId"

    .line 7
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    const-class p1, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "collectId = ?"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p0, p2, p3

    invoke-static {p1, v0, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final()I
    .locals 2

    const-string v0, "SP_RED_BACKGROUP_IMAGE_KEY"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static finally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v7, Lcom/apk/q1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/apk/q1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object p0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apk/g2;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static goto()Lcom/biquge/ebook/app/bean/RedBgImageBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    const-string v1, "4"

    .line 2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    const-string v1, "#00793F"

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgColor(Ljava/lang/String;)V

    const-string v1, "#111111"

    .line 4
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/apk/da;->new(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic import(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/ReadPostion;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bookId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apk/g2;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static new()Lcom/biquge/ebook/app/bean/RedBgImageBean;
    .locals 2

    const-string v0, "type = ?"

    const-string v1, "5"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    if-eqz v0, :cond_0

    const v1, 0x7f100282

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static package(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/g2;->abstract(I)V

    const/4 p0, -0x1

    .line 2
    invoke-static {p0}, Lcom/apk/g2;->continue(I)V

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/apk/da;->switch(Z)V

    .line 4
    invoke-static {p0}, Lcom/apk/da;->static(Z)V

    const/4 p0, 0x1

    .line 5
    invoke-static {p0}, Lcom/apk/g2;->private(I)V

    .line 6
    new-instance p0, Lcom/apk/mf;

    invoke-direct {p0}, Lcom/apk/mf;-><init>()V

    const-string v0, "backgorund_view_id"

    .line 7
    iput-object v0, p0, Lcom/apk/mf;->do:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    return-void
.end method

.method public static private(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "RED_BG_SELECT_TYPE"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static static(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    :try_start_0
    const-class v3, Lcom/biquge/ebook/app/bean/ChapterBean;

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "novelId = ?"

    aput-object v5, v4, v1

    aput-object p0, v4, v0

    invoke-static {v3, v4}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/apk/da;->package(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 5
    :try_start_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "max"

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    const-class p1, Lcom/biquge/ebook/app/bean/CollectBook;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "collectId = ?"

    aput-object v3, v2, v1

    aput-object p0, v2, v0

    invoke-static {p1, p2, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public static super()Lcom/biquge/ebook/app/bean/RedBgImageBean;
    .locals 5

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    .line 2
    invoke-static {}, Lcom/apk/g2;->case()I

    move-result v1

    const-string v2, "type = ?"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/g2;->const()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v4, "4"

    .line 4
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 7
    invoke-static {}, Lcom/apk/g2;->new()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 8
    invoke-static {}, Lcom/apk/g2;->final()I

    move-result v1

    if-ltz v1, :cond_4

    const-string v4, "3"

    .line 9
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    .line 12
    invoke-static {}, Lcom/apk/g2;->try()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v3

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 13
    invoke-static {}, Lcom/apk/g2;->else()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v3

    :cond_5
    return-object v3
.end method

.method public static this()I
    .locals 2

    const-string v0, "reader_font_size"

    const/16 v1, 0x13

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static throws(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Lcom/apk/g2;->continue(I)V

    .line 2
    invoke-static {v0}, Lcom/apk/g2;->abstract(I)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/apk/da;->switch(Z)V

    .line 4
    invoke-static {v0}, Lcom/apk/da;->static(Z)V

    .line 5
    const-class v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    const-string v1, "type = ?"

    const-string v2, "5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    .line 7
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgColor(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    const/4 p0, 0x2

    .line 11
    invoke-static {p0}, Lcom/apk/g2;->private(I)V

    .line 12
    new-instance p0, Lcom/apk/mf;

    invoke-direct {p0}, Lcom/apk/mf;-><init>()V

    const-string p1, "backgorund_view_id"

    .line 13
    iput-object p1, p0, Lcom/apk/mf;->do:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const p0, 0x7f100286

    .line 15
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_0
    return-void
.end method

.method public static try()Lcom/biquge/ebook/app/bean/RedBgImageBean;
    .locals 2

    const-string v0, "type = ?"

    const-string v1, "6"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    if-eqz v0, :cond_0

    const v1, 0x7f100282

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static while(Lcom/biquge/ebook/app/bean/ChapterBean;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/apk/n2;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public for(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Vector;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 2
    invoke-static {v1, p1}, Lcom/apk/g2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized public(FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Vector;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v7

    .line 3
    iget-object v7, v7, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 5
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v8

    .line 6
    iget-object v8, v8, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v5, v10, :cond_3

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v13, v8, v12

    add-float/2addr v13, v11

    .line 8
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 9
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Lcom/apk/da;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_0
    move-object/from16 v14, p5

    .line 10
    :goto_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 11
    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    add-float/2addr v13, v8

    .line 12
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v15

    .line 13
    iget-object v15, v15, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v15, v14, v10, v2, v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v15

    .line 15
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v15

    .line 18
    iget v15, v15, Lcom/apk/ca;->try:F

    add-float/2addr v13, v15

    goto :goto_1

    :cond_2
    :goto_2
    add-float/2addr v13, v7

    .line 19
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v8

    .line 20
    iget v8, v8, Lcom/apk/ca;->try:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float v8, v8, v12

    add-float/2addr v8, v13

    move v12, v8

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v0

    const/4 v12, 0x0

    .line 21
    :cond_4
    :goto_3
    :try_start_1
    iget v0, v1, Lcom/apk/g2;->new:I

    iget v13, v1, Lcom/apk/g2;->for:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v13, :cond_a

    .line 22
    :try_start_2
    iget v0, v1, Lcom/apk/g2;->new:I

    invoke-virtual {v1, v0}, Lcom/apk/g2;->return(I)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 23
    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v13, v0, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :try_start_3
    iget v8, v1, Lcom/apk/g2;->new:I

    array-length v0, v0

    add-int/2addr v8, v0

    iput v8, v1, Lcom/apk/g2;->new:I

    .line 25
    invoke-static {v13}, Lcom/apk/n2;->this(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v13

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v8, v13

    goto :goto_4

    :catch_1
    move-exception v0

    .line 26
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_5
    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 28
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {v0, v8, v10, v2, v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    const/4 v13, 0x0

    .line 31
    invoke-virtual {v8, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\r|\n"

    const-string v15, ""

    .line 32
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 33
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 34
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v14

    .line 36
    iget v14, v14, Lcom/apk/ca;->try:F

    add-float/2addr v14, v7

    add-float/2addr v14, v12

    cmpg-float v14, v14, p2

    if-gtz v14, :cond_7

    .line 37
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v14

    .line 38
    iget v14, v14, Lcom/apk/ca;->try:F

    add-float/2addr v14, v7

    add-float/2addr v12, v14

    .line 39
    invoke-virtual {v6, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 41
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_8

    .line 42
    :try_start_5
    iget v0, v1, Lcom/apk/g2;->new:I

    const-string v13, "UTF-8"

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v13, v13

    sub-int/2addr v0, v13

    iput v0, v1, Lcom/apk/g2;->new:I
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 43
    :try_start_6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 44
    :cond_8
    :goto_6
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 45
    iget v0, v0, Lcom/apk/ca;->try:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-float/2addr v0, v7

    add-float/2addr v0, v12

    cmpl-float v0, v0, p2

    if-lez v0, :cond_4

    .line 46
    :try_start_7
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    sub-float v2, p2, v12

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    cmpl-float v4, v2, v11

    if-lez v4, :cond_9

    .line 48
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v4

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 49
    iget-object v0, v4, Lcom/apk/ca;->this:Lcom/apk/gg;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 50
    :cond_9
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/apk/ca;->this:Lcom/apk/gg;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 52
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 53
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 54
    :cond_a
    :goto_7
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final return(I)[B
    .locals 5

    move v0, p1

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/apk/g2;->for:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/apk/g2;->if:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v0, p1

    .line 3
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/apk/g2;->if:[B

    add-int v4, p1, v2

    aget-byte v3, v3, v4

    .line 5
    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public switch(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 2
    invoke-static {v1, p1}, Lcom/apk/g2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized throw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/apk/g2;->new:I

    .line 2
    iput v0, p0, Lcom/apk/g2;->for:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "1"

    invoke-static {p1, v3, p2}, Lcom/apk/n2;->default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "UTF-8"

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/apk/ze;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2, v1}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/apk/g2;->if:[B

    .line 8
    array-length v2, v2

    iput v2, p0, Lcom/apk/g2;->for:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    add-int/2addr v0, v1

    move-object v3, p0

    move v4, p4

    move v5, p5

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, v0

    .line 11
    invoke-virtual/range {v3 .. v9}, Lcom/apk/g2;->public(FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget v3, p0, Lcom/apk/g2;->new:I

    iget v4, p0, Lcom/apk/g2;->for:I

    if-lt v3, v4, :cond_1

    .line 14
    iget p1, p0, Lcom/apk/g2;->new:I

    iget p3, p0, Lcom/apk/g2;->for:I

    if-lt p1, p3, :cond_3

    const-string p1, "1"

    .line 15
    iget-object p3, p0, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-nez p3, :cond_2

    .line 16
    new-instance p3, Lcom/apk/gg;

    invoke-direct {p3}, Lcom/apk/gg;-><init>()V

    iput-object p3, p0, Lcom/apk/g2;->do:Lcom/apk/gg;

    .line 17
    :cond_2
    iget-object p3, p0, Lcom/apk/g2;->do:Lcom/apk/gg;

    invoke-static {p1, p2}, Lcom/apk/g2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v2}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 18
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
