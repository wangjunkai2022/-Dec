.class public Lcom/tr/comment/sdk/bean/TrCommentBean;
.super Ljava/lang/Object;
.source "TrCommentBean.java"


# instance fields
.field public BookId:Ljava/lang/String;

.field public ChapterId:Ljava/lang/String;

.field public Color:Ljava/lang/String;

.field public CommendCount:I

.field public Content:Ljava/lang/String;

.field public Equipment:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public ParentId:Ljava/lang/String;

.field public RepliesCount:I

.field public TypeId:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public UserFace:Ljava/lang/String;

.field public UserId:Ljava/lang/String;

.field public UserName:Ljava/lang/String;

.field public apk_pkg:Ljava/lang/String;

.field public clicktype:Ljava/lang/String;

.field public isLike:Z

.field public isUserAdd:Z

.field public itemType:I

.field public target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApk_pkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->apk_pkg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->BookId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->ChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getClicktype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->clicktype:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Color:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCommendCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->CommendCount:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getEquipment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Equipment:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->itemType:I

    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->ParentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getRepliesCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->RepliesCount:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->target:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->TypeId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UpdateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUserFace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UserFace:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UserName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isLike()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->isLike:Z

    return v0
.end method

.method public isUserAdd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->isUserAdd:Z

    return v0
.end method

.method public setApk_pkg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->apk_pkg:Ljava/lang/String;

    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->BookId:Ljava/lang/String;

    return-void
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->ChapterId:Ljava/lang/String;

    return-void
.end method

.method public setClicktype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->clicktype:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Color:Ljava/lang/String;

    return-void
.end method

.method public setCommendCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->CommendCount:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Content:Ljava/lang/String;

    return-void
.end method

.method public setEquipment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Equipment:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->Id:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->itemType:I

    return-void
.end method

.method public setLike(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->isLike:Z

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public setRepliesCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->RepliesCount:I

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->target:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->TypeId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setUserAdd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->isUserAdd:Z

    return-void
.end method

.method public setUserFace(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UserFace:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UserId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrCommentBean;->UserName:Ljava/lang/String;

    return-void
.end method
