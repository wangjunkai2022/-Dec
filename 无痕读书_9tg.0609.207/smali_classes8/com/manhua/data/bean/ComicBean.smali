.class public Lcom/manhua/data/bean/ComicBean;
.super Ljava/lang/Object;
.source "ComicBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;,
        Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;,
        Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x7c0606eec1ec13b7L


# instance fields
.field public Author:Ljava/lang/String;

.field public BookStatus:Ljava/lang/String;

.field public BookVote:Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;

.field public CId:I

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

.field public Desc:Ljava/lang/String;

.field public FirstChapterId:Ljava/lang/String;

.field public HostKey:Ljava/lang/String;

.field public Hot:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Img:Ljava/lang/String;

.field public LastChapter:Ljava/lang/String;

.field public LastChapterId:Ljava/lang/String;

.field public LastTime:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public SameCategoryBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public SameUserBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public Score:F

.field public Tag:Ljava/lang/String;

.field public UpUser:Ljava/lang/String;

.field public UpdateCycle:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public categoryTitle:Ljava/lang/String;

.field public changeFlag:Ljava/lang/String;

.field public datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public isCartton:Z

.field public itemType:I

.field public more:Ljava/lang/String;

.field public moreFlag:Ljava/lang/String;

.field public navIcon:Ljava/lang/String;

.field public viewType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/manhua/data/bean/ComicBean;->isCartton:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->BookStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookVote()Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->BookVote:Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getCId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicBean;->CId:I

    return v0
.end method

.method public getCName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->CName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->categoryTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChangeFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->changeFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
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
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->CloudList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->CommendMediaList:Ljava/util/List;

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
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Desc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "<br/>"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFirstChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->FirstChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHostKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->HostKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Hot:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Img:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicBean;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->LastChapter:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->LastChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->LastTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->more:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMoreFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->moreFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNavIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->navIcon:Ljava/lang/String;

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
            "Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->SameCategoryBooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
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
            "Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->SameUserBooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicBean;->Score:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->Tag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->UpUser:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateCycle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->UpdateCycle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->UpdateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicBean;->getLastTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/data/bean/ComicBean;->UpdateTime:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->UpdateTime:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean;->viewType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isCartton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/data/bean/ComicBean;->isCartton:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Author:Ljava/lang/String;

    return-void
.end method

.method public setBookStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->BookStatus:Ljava/lang/String;

    return-void
.end method

.method public setBookVote(Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->BookVote:Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;

    return-void
.end method

.method public setCId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicBean;->CId:I

    return-void
.end method

.method public setCName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->CName:Ljava/lang/String;

    return-void
.end method

.method public setCartton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/data/bean/ComicBean;->isCartton:Z

    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->categoryTitle:Ljava/lang/String;

    return-void
.end method

.method public setChangeFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->changeFlag:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->CloudList:Ljava/util/List;

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
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->CommendMediaList:Ljava/util/List;

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->datas:Ljava/util/List;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Desc:Ljava/lang/String;

    return-void
.end method

.method public setFirstChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->FirstChapterId:Ljava/lang/String;

    return-void
.end method

.method public setHostKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->HostKey:Ljava/lang/String;

    return-void
.end method

.method public setHot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Hot:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Img:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicBean;->itemType:I

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->LastChapter:Ljava/lang/String;

    return-void
.end method

.method public setLastChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->LastChapterId:Ljava/lang/String;

    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->LastTime:Ljava/lang/String;

    return-void
.end method

.method public setMore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->more:Ljava/lang/String;

    return-void
.end method

.method public setMoreFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->moreFlag:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Name:Ljava/lang/String;

    return-void
.end method

.method public setNavIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->navIcon:Ljava/lang/String;

    return-void
.end method

.method public setSameCategoryBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->SameCategoryBooks:Ljava/util/List;

    return-void
.end method

.method public setSameUserBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->SameUserBooks:Ljava/util/List;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicBean;->Score:F

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->Tag:Ljava/lang/String;

    return-void
.end method

.method public setUpUser(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->UpUser:Ljava/lang/String;

    return-void
.end method

.method public setUpdateCycle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->UpdateCycle:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean;->viewType:Ljava/lang/String;

    return-void
.end method
