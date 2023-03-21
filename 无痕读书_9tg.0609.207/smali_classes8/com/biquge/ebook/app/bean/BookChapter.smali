.class public Lcom/biquge/ebook/app/bean/BookChapter;
.super Ljava/lang/Object;
.source "BookChapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field public allPage:I

.field public chapterId:Ljava/lang/String;

.field public chapterName:Ljava/lang/String;

.field public hostKey:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public itemType:I

.field public need_share:Ljava/lang/String;

.field public novelid:Ljava/lang/String;

.field public readPage:I

.field public url:Ljava/lang/String;

.field public values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->allPage:I

    return v0
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->chapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->chapterName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHostKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->hostKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getNeed_share()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->imageUrl:Ljava/lang/String;

    const-string v1, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->imageUrl:Ljava/lang/String;

    const-string v1, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->need_share:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string v0, "yes"

    return-object v0
.end method

.method public getNovelid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->novelid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getReadPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->readPage:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getValues()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookChapter;->values:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_0
    return-object v0
.end method

.method public setAllPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->allPage:I

    return-void
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->chapterId:Ljava/lang/String;

    return-void
.end method

.method public setChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->chapterName:Ljava/lang/String;

    return-void
.end method

.method public setHostKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->hostKey:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->itemType:I

    return-void
.end method

.method public setNeed_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->need_share:Ljava/lang/String;

    return-void
.end method

.method public setNovelid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->novelid:Ljava/lang/String;

    return-void
.end method

.method public setReadPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->readPage:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->url:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookChapter;->values:Ljava/util/Vector;

    return-void
.end method
