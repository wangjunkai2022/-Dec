.class public Lcom/expand/videoplayer/bean/VideoDetail;
.super Ljava/lang/Object;
.source "VideoDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;,
        Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x3bfc278689957fceL


# instance fields
.field public Area:Ljava/lang/String;

.field public Author:Ljava/lang/String;

.field public CId:I

.field public CIds:Ljava/lang/String;

.field public CName:Ljava/lang/String;

.field public CopyrightFlag:Z

.field public Desc:Ljava/lang/String;

.field public HostKey:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Img:Ljava/lang/String;

.field public LastCId:I

.field public LastChapter:Ljava/lang/String;

.field public Leble:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public ParentName:Ljava/lang/String;

.field public Playsources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;",
            ">;"
        }
    .end annotation
.end field

.field public Quality:Ljava/lang/String;

.field public SameCategoryBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;",
            ">;"
        }
    .end annotation
.end field

.field public Score:Ljava/lang/String;

.field public Star:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public Vintage:Ljava/lang/String;

.field public jishu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Area:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Author:Ljava/lang/String;

    return-object v0
.end method

.method public getCId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CId:I

    return v0
.end method

.method public getCIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CIds:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->HostKey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Img:Ljava/lang/String;

    return-object v0
.end method

.method public getJishu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->jishu:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->LastCId:I

    return v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->LastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLeble()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Leble:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->ParentName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPlaysources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Playsources:Ljava/util/List;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Quality:Ljava/lang/String;

    return-object v0
.end method

.method public getSameCategoryBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->SameCategoryBooks:Ljava/util/List;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Score:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getStar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Star:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->UpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVintage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Vintage:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyrightFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CopyrightFlag:Z

    return v0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Area:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Author:Ljava/lang/String;

    return-void
.end method

.method public setCId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CId:I

    return-void
.end method

.method public setCIds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CIds:Ljava/lang/String;

    return-void
.end method

.method public setCName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CName:Ljava/lang/String;

    return-void
.end method

.method public setCopyrightFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->CopyrightFlag:Z

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Desc:Ljava/lang/String;

    return-void
.end method

.method public setHostKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->HostKey:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Img:Ljava/lang/String;

    return-void
.end method

.method public setJishu(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->jishu:Ljava/lang/String;

    return-void
.end method

.method public setLastCId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->LastCId:I

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->LastChapter:Ljava/lang/String;

    return-void
.end method

.method public setLeble(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Leble:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Name:Ljava/lang/String;

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->ParentName:Ljava/lang/String;

    return-void
.end method

.method public setPlaysources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Playsources:Ljava/util/List;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Quality:Ljava/lang/String;

    return-void
.end method

.method public setSameCategoryBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->SameCategoryBooks:Ljava/util/List;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Score:Ljava/lang/String;

    return-void
.end method

.method public setStar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Star:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setVintage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail;->Vintage:Ljava/lang/String;

    return-void
.end method
