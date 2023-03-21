.class public Lcom/biquge/ebook/app/bean/CollectBook;
.super Lorg/litepal/crud/LitePalSupport;
.source "CollectBook.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# static fields
.field public static final serialVersionUID:J = 0x216108e9f7cda38dL


# instance fields
.field public MajorCharacters:Ljava/lang/String;

.field public TagJson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public addTime:J

.field public author:Ljava/lang/String;

.field public bookStatus:Ljava/lang/String;

.field public bookType:Ljava/lang/String;

.field public chapterUrl:Ljava/lang/String;

.field public collectId:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public externalUrl:Ljava/lang/String;

.field public fileType:I

.field public firstChapterId:Ljava/lang/String;

.field public groupBookCount:Ljava/lang/String;

.field public groupBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation
.end field

.field public groupIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public groupId:Ljava/lang/String;

.field public groupTitle:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public isGroup:I

.field public isNew:Z

.field public isWebSite:Z

.field public itemType:I

.field public lastCapterId:Ljava/lang/String;

.field public lastCapterName:Ljava/lang/String;

.field public lastUpdateTime:Ljava/lang/String;

.field public loginName:Ljava/lang/String;

.field public max:I

.field public name:Ljava/lang/String;

.field public percentage:I

.field public progress:I

.field public readChapterId:Ljava/lang/String;

.field public readChapterName:Ljava/lang/String;

.field public readPage:I

.field public saveTime:Ljava/lang/String;

.field public state:I

.field public stickTime:Ljava/lang/String;

.field public subscribeTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->addTime:J

    return-wide v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->bookStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->bookType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->chapterUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->collectId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDbBaseObjId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->desc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getExternalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->externalUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFileType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->fileType:I

    return v0
.end method

.method public getFirstChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->firstChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getGroupBookCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupBookCount:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getGroupBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupBooks:Ljava/util/List;

    return-object v0
.end method

.method public getGroupIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupIcons:Ljava/util/List;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->icon:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIsGroup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public getLastCapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->lastCapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastCapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->lastCapterName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->lastUpdateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLoginName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->loginName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMajorCharacters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->MajorCharacters:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->max:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPercentage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->percentage:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->progress:I

    return v0
.end method

.method public getReadChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->readChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getReadChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->readChapterName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getReadPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->readPage:I

    return v0
.end method

.method public getSaveTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->saveTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->state:I

    return v0
.end method

.method public getStickTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->stickTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSubscribeTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->subscribeTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTagJson()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->TagJson:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public isFinishStatus()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/CollectBook;->getBookStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5b8c\u7ed3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/CollectBook;->getIsGroup()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLocalBook()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/CollectBook;->getFileType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->isNew:Z

    return v0
.end method

.method public isTxt()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/CollectBook;->getFileType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWebSite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite:Z

    return v0
.end method

.method public isZip()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/CollectBook;->getFileType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->addTime:J

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->author:Ljava/lang/String;

    return-void
.end method

.method public setBookStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->bookStatus:Ljava/lang/String;

    return-void
.end method

.method public setBookType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->bookType:Ljava/lang/String;

    return-void
.end method

.method public setChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->chapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->desc:Ljava/lang/String;

    return-void
.end method

.method public setExternalUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->externalUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->fileType:I

    return-void
.end method

.method public setFirstChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->firstChapterId:Ljava/lang/String;

    return-void
.end method

.method public setGroupBookCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupBookCount:Ljava/lang/String;

    return-void
.end method

.method public setGroupBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupBooks:Ljava/util/List;

    return-void
.end method

.method public setGroupIcons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupIcons:Ljava/util/List;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->groupTitle:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIsGroup(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup:I

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->itemType:I

    return-void
.end method

.method public setLastCapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->lastCapterId:Ljava/lang/String;

    return-void
.end method

.method public setLastCapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->lastCapterName:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->lastUpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->loginName:Ljava/lang/String;

    return-void
.end method

.method public setMajorCharacters(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->MajorCharacters:Ljava/lang/String;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->max:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->name:Ljava/lang/String;

    return-void
.end method

.method public setNew(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->isNew:Z

    return-void
.end method

.method public setPercentage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->percentage:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->progress:I

    return-void
.end method

.method public setReadChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->readChapterId:Ljava/lang/String;

    return-void
.end method

.method public setReadChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->readChapterName:Ljava/lang/String;

    return-void
.end method

.method public setReadPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->readPage:I

    return-void
.end method

.method public setSaveTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->saveTime:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->state:I

    return-void
.end method

.method public setStickTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->stickTime:Ljava/lang/String;

    return-void
.end method

.method public setSubscribeTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->subscribeTime:Ljava/lang/String;

    return-void
.end method

.method public setTagJson(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->TagJson:Ljava/util/List;

    return-void
.end method

.method public setWebSite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite:Z

    return-void
.end method
