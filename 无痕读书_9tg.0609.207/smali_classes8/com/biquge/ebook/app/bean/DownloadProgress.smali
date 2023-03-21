.class public Lcom/biquge/ebook/app/bean/DownloadProgress;
.super Lorg/litepal/crud/LitePalSupport;
.source "DownloadProgress.java"


# instance fields
.field public currentSize:J

.field public filePath:Ljava/lang/String;

.field public status:I

.field public totalSize:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->totalSize:J

    return-void
.end method

.method public static getDownloadProgress(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/DownloadProgress;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/biquge/ebook/app/bean/DownloadProgress;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/DownloadProgress;

    return-object p0
.end method

.method public static removeDownloadProgress(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->getDownloadProgress(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/DownloadProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/biquge/ebook/app/bean/DownloadProgress;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url = ?"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static saveDownloadProgress(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/DownloadProgress;
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/DownloadProgress;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->setUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/DownloadProgress;->setFilePath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    return-object v0
.end method

.method public static updateDownloadProgress(Ljava/lang/String;IJJ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "currentSize"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "totalSize"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    const-class p1, Lcom/biquge/ebook/app/bean/DownloadProgress;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "url = ?"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p0, p2, p3

    invoke-static {p1, v0, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCurrentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->currentSize:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->filePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->status:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->totalSize:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setCurrentSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->currentSize:J

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->status:I

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->totalSize:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DownloadProgress;->url:Ljava/lang/String;

    return-void
.end method
