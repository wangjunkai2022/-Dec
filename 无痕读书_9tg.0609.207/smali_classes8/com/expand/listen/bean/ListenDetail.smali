.class public Lcom/expand/listen/bean/ListenDetail;
.super Ljava/lang/Object;
.source "ListenDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;,
        Lcom/expand/listen/bean/ListenDetail$BookVoteBean;
    }
.end annotation


# instance fields
.field public Author:Ljava/lang/String;

.field public BookStatus:Ljava/lang/String;

.field public BookVerify:Ljava/lang/String;

.field public BookVote:Lcom/expand/listen/bean/ListenDetail$BookVoteBean;

.field public CId:Ljava/lang/String;

.field public CName:Ljava/lang/String;

.field public Declare:Ljava/lang/String;

.field public Desc:Ljava/lang/String;

.field public FirstChapterId:Ljava/lang/String;

.field public FirstChapterUrl:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Img:Ljava/lang/String;

.field public ImgKey:Ljava/lang/String;

.field public IsLimit:Z

.field public LastChapter:Ljava/lang/String;

.field public LastChapterId:Ljava/lang/String;

.field public LastChapterUrl:Ljava/lang/String;

.field public LastTime:Ljava/lang/String;

.field public ListenCount:Ljava/lang/String;

.field public Monthly:Z

.field public Name:Ljava/lang/String;

.field public PlayAuthor:Ljava/lang/String;

.field public SameCategoryBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;",
            ">;"
        }
    .end annotation
.end field

.field public SameUserBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public Score:Ljava/lang/String;

.field public UpUser:Ljava/lang/String;

.field public Words:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->BookStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getBookVerify()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->BookVerify:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookVote()Lcom/expand/listen/bean/ListenDetail$BookVoteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->BookVote:Lcom/expand/listen/bean/ListenDetail$BookVoteBean;

    return-object v0
.end method

.method public getCId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->CId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->CName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclare()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Declare:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->FirstChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFirstChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->FirstChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->ImgKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->LastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->LastChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->LastChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->LastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getListenCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->ListenCount:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->PlayAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getSameCategoryBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->SameCategoryBooks:Ljava/util/List;

    return-object v0
.end method

.method public getSameUserBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->SameUserBooks:Ljava/util/List;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Score:Ljava/lang/String;

    return-object v0
.end method

.method public getUpUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->UpUser:Ljava/lang/String;

    return-object v0
.end method

.method public getWords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail;->Words:Ljava/lang/String;

    return-object v0
.end method

.method public isIsLimit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/expand/listen/bean/ListenDetail;->IsLimit:Z

    return v0
.end method

.method public isLimit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/expand/listen/bean/ListenDetail;->IsLimit:Z

    return v0
.end method

.method public isMonthly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/expand/listen/bean/ListenDetail;->Monthly:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Author:Ljava/lang/String;

    return-void
.end method

.method public setBookStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->BookStatus:Ljava/lang/String;

    return-void
.end method

.method public setBookVerify(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->BookVerify:Ljava/lang/String;

    return-void
.end method

.method public setBookVote(Lcom/expand/listen/bean/ListenDetail$BookVoteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->BookVote:Lcom/expand/listen/bean/ListenDetail$BookVoteBean;

    return-void
.end method

.method public setCId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->CId:Ljava/lang/String;

    return-void
.end method

.method public setCName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->CName:Ljava/lang/String;

    return-void
.end method

.method public setDeclare(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Declare:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Desc:Ljava/lang/String;

    return-void
.end method

.method public setFirstChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->FirstChapterId:Ljava/lang/String;

    return-void
.end method

.method public setFirstChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->FirstChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Img:Ljava/lang/String;

    return-void
.end method

.method public setImgKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->ImgKey:Ljava/lang/String;

    return-void
.end method

.method public setIsLimit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/expand/listen/bean/ListenDetail;->IsLimit:Z

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->LastChapter:Ljava/lang/String;

    return-void
.end method

.method public setLastChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->LastChapterId:Ljava/lang/String;

    return-void
.end method

.method public setLastChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->LastChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->LastTime:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/expand/listen/bean/ListenDetail;->IsLimit:Z

    return-void
.end method

.method public setListenCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->ListenCount:Ljava/lang/String;

    return-void
.end method

.method public setMonthly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/expand/listen/bean/ListenDetail;->Monthly:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Name:Ljava/lang/String;

    return-void
.end method

.method public setPlayAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->PlayAuthor:Ljava/lang/String;

    return-void
.end method

.method public setSameCategoryBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->SameCategoryBooks:Ljava/util/List;

    return-void
.end method

.method public setSameUserBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->SameUserBooks:Ljava/util/List;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Score:Ljava/lang/String;

    return-void
.end method

.method public setUpUser(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->UpUser:Ljava/lang/String;

    return-void
.end method

.method public setWords(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail;->Words:Ljava/lang/String;

    return-void
.end method
