.class public Lcom/biquge/ebook/app/bean/ReadFootprint;
.super Lorg/litepal/crud/LitePalSupport;
.source "ReadFootprint.java"


# instance fields
.field public chapterId:Ljava/lang/String;

.field public rId:Ljava/lang/String;

.field public readPage:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->type:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->rId:Ljava/lang/String;

    return-void
.end method

.method public static addComicFootprint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getComicFootprint(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "1"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    invoke-direct {v0, v1, p0}, Lcom/biquge/ebook/app/bean/ReadFootprint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->setChapterId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/ReadFootprint;->setReadPage(I)V

    .line 5
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "chapterId"

    .line 7
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "readPage"

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    const-class p1, Lcom/biquge/ebook/app/bean/ReadFootprint;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type = ? and rId = ?"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const/4 v1, 0x2

    aput-object p0, p2, v1

    invoke-static {p1, v0, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static addNovelFootprint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getNovelFootprint(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "0"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    invoke-direct {v0, v1, p0}, Lcom/biquge/ebook/app/bean/ReadFootprint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->setChapterId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/ReadFootprint;->setReadPage(I)V

    .line 5
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "chapterId"

    .line 7
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "readPage"

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    const-class p1, Lcom/biquge/ebook/app/bean/ReadFootprint;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type = ? and rId = ?"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const/4 v1, 0x2

    aput-object p0, p2, v1

    invoke-static {p1, v0, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static addPicFootprint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getPicFootprint(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "2"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    invoke-direct {v0, v1, p0}, Lcom/biquge/ebook/app/bean/ReadFootprint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->setChapterId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/ReadFootprint;->setReadPage(I)V

    .line 5
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "chapterId"

    .line 7
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "readPage"

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    const-class p1, Lcom/biquge/ebook/app/bean/ReadFootprint;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type = ? and rId = ?"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const/4 v1, 0x2

    aput-object p0, p2, v1

    invoke-static {p1, v0, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getComicFootprint(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type = ? and rId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/ReadFootprint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNovelFootprint(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type = ? and rId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    return-object p0
.end method

.method public static getPicFootprint(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type = ? and rId = ? and chapterId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, Lcom/biquge/ebook/app/bean/ReadFootprint;

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/ReadFootprint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeNovelFootprint(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/ReadFootprint;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type = ? and rId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->chapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getReadPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->readPage:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getrId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->rId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->chapterId:Ljava/lang/String;

    return-void
.end method

.method public setReadPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->readPage:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->type:Ljava/lang/String;

    return-void
.end method

.method public setrId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ReadFootprint;->rId:Ljava/lang/String;

    return-void
.end method
