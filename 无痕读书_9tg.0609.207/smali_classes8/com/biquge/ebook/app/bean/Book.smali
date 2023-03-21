.class public Lcom/biquge/ebook/app/bean/Book;
.super Ljava/lang/Object;
.source "Book.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;,
        Lcom/biquge/ebook/app/bean/Book$SameCategoryBooksNameBean;,
        Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x20596b38b1bd8bc1L


# instance fields
.field public Author:Ljava/lang/String;

.field public AuthorId:Ljava/lang/String;

.field public BookStatus:Ljava/lang/String;

.field public BookVote:Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;

.field public CId:Ljava/lang/String;

.field public CName:Ljava/lang/String;

.field public CloudList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public CommendMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public Declare:Ljava/lang/String;

.field public Desc:Ljava/lang/String;

.field public FirstChapterId:Ljava/lang/String;

.field public HostKey:Ljava/lang/String;

.field public Hot:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Img:Ljava/lang/String;

.field public LastChapter:Ljava/lang/String;

.field public LastChapterId:Ljava/lang/String;

.field public LastTime:Ljava/lang/String;

.field public MajorCharacters:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public SameCategoryBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book$SameCategoryBooksNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public SameUserBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public Score:F

.field public Tag:Ljava/lang/String;

.field public TagJson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public UpUser:Ljava/lang/String;

.field public UpdateCycle:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public categoryTitle:Ljava/lang/String;

.field public changeFlag:Ljava/lang/String;

.field public chapterUrl:Ljava/lang/String;

.field public chaptercontentlength:I

.field public datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation
.end field

.field public externalUrl:Ljava/lang/String;

.field public isHaveShelf:Z

.field public isNovel:Z

.field public isWebSite:Z

.field public itemType:I

.field public more:Ljava/lang/String;

.field public moreFlag:Ljava/lang/String;

.field public navIcon:Ljava/lang/String;

.field public picData:Ljava/lang/String;

.field public style:Ljava/lang/String;

.field public topIndex:I

.field public topicId:Ljava/lang/String;

.field public viewType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/bean/Book;->isNovel:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAuthorId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->AuthorId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->BookStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookVote()Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->BookVote:Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->BookVote:Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->BookVote:Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;

    return-object v0
.end method

.method public getCId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->CId:Ljava/lang/String;

    return-object v0
.end method

.method public getCName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->CName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->categoryTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChangeFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->changeFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->chapterUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChaptercontentlength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/Book;->chaptercontentlength:I

    return v0
.end method

.method public getCloudList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->CloudList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getCommendMediaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->CommendMediaList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getDeclare()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Declare:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Desc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getExternalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->externalUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFirstChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->FirstChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHostKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->HostKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Hot:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Img:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/Book;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->LastChapter:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->LastChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->LastTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMajorCharacters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->MajorCharacters:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->more:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMoreFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->moreFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNavIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->navIcon:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPicData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->picData:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSameCategoryBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book$SameCategoryBooksNameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->SameCategoryBooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getSameUserBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->SameUserBooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/Book;->Score:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->style:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "2"

    :cond_0
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->Tag:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->TagJson:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getTopIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/Book;->topIndex:I

    return v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->topicId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->UpUser:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateCycle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->UpdateCycle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->UpdateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getLastTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->UpdateTime:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->UpdateTime:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/Book;->viewType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isFinishStatus()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5b8c\u7ed3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHaveShelf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/Book;->isHaveShelf:Z

    return v0
.end method

.method public isNovel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/Book;->isNovel:Z

    return v0
.end method

.method public isWebSite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/Book;->isWebSite:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Author:Ljava/lang/String;

    return-void
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->AuthorId:Ljava/lang/String;

    return-void
.end method

.method public setBookStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->BookStatus:Ljava/lang/String;

    return-void
.end method

.method public setBookVote(Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->BookVote:Lcom/biquge/ebook/app/bean/Book$BookVoteNameBean;

    return-void
.end method

.method public setCId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->CId:Ljava/lang/String;

    return-void
.end method

.method public setCName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->CName:Ljava/lang/String;

    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->categoryTitle:Ljava/lang/String;

    return-void
.end method

.method public setChangeFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->changeFlag:Ljava/lang/String;

    return-void
.end method

.method public setChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->chapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setChaptercontentlength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/Book;->chaptercontentlength:I

    return-void
.end method

.method public setCloudList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->CloudList:Ljava/util/List;

    return-void
.end method

.method public setCommendMediaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->CommendMediaList:Ljava/util/List;

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->datas:Ljava/util/List;

    return-void
.end method

.method public setDeclare(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Declare:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Desc:Ljava/lang/String;

    return-void
.end method

.method public setExternalUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->externalUrl:Ljava/lang/String;

    return-void
.end method

.method public setFirstChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->FirstChapterId:Ljava/lang/String;

    return-void
.end method

.method public setHaveShelf(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/Book;->isHaveShelf:Z

    return-void
.end method

.method public setHostKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->HostKey:Ljava/lang/String;

    return-void
.end method

.method public setHot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Hot:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Img:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/Book;->itemType:I

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->LastChapter:Ljava/lang/String;

    return-void
.end method

.method public setLastChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->LastChapterId:Ljava/lang/String;

    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->LastTime:Ljava/lang/String;

    return-void
.end method

.method public setMajorCharacters(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->MajorCharacters:Ljava/lang/String;

    return-void
.end method

.method public setMore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->more:Ljava/lang/String;

    return-void
.end method

.method public setMoreFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->moreFlag:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Name:Ljava/lang/String;

    return-void
.end method

.method public setNavIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->navIcon:Ljava/lang/String;

    return-void
.end method

.method public setNovel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/Book;->isNovel:Z

    return-void
.end method

.method public setPicData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->picData:Ljava/lang/String;

    return-void
.end method

.method public setSameCategoryBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book$SameCategoryBooksNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->SameCategoryBooks:Ljava/util/List;

    return-void
.end method

.method public setSameUserBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->SameUserBooks:Ljava/util/List;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/Book;->Score:F

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->style:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->Tag:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->TagJson:Ljava/util/List;

    return-void
.end method

.method public setTopIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/Book;->topIndex:I

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->topicId:Ljava/lang/String;

    return-void
.end method

.method public setUpUser(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->UpUser:Ljava/lang/String;

    return-void
.end method

.method public setUpdateCycle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->UpdateCycle:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/Book;->viewType:Ljava/lang/String;

    return-void
.end method

.method public setWebSite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/Book;->isWebSite:Z

    return-void
.end method
