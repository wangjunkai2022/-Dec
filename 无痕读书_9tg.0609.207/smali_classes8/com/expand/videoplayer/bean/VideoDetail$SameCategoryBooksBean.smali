.class public Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;
.super Ljava/lang/Object;
.source "VideoDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/bean/VideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameCategoryBooksBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2fa81aa8193c85bfL


# instance fields
.field public CIds:Ljava/lang/String;

.field public CName:Ljava/lang/String;

.field public Desc:Ljava/lang/String;

.field public HostKey:Ljava/lang/String;

.field public Id:I

.field public Img:Ljava/lang/String;

.field public LastChapter:Ljava/lang/String;

.field public Leble:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public ParentName:Ljava/lang/String;

.field public Quality:Ljava/lang/String;

.field public Score:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public jishu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->CIds:Ljava/lang/String;

    return-object v0
.end method

.method public getCName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->CName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->HostKey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Id:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Img:Ljava/lang/String;

    return-object v0
.end method

.method public getJishu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->jishu:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->LastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLeble()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Leble:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->ParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Quality:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Score:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->UpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCIds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->CIds:Ljava/lang/String;

    return-void
.end method

.method public setCName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->CName:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Desc:Ljava/lang/String;

    return-void
.end method

.method public setHostKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->HostKey:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Id:I

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Img:Ljava/lang/String;

    return-void
.end method

.method public setJishu(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->jishu:Ljava/lang/String;

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->LastChapter:Ljava/lang/String;

    return-void
.end method

.method public setLeble(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Leble:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Name:Ljava/lang/String;

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->ParentName:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Quality:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->Score:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$SameCategoryBooksBean;->UpdateTime:Ljava/lang/String;

    return-void
.end method
