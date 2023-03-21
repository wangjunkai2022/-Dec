.class public Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;
.super Ljava/lang/Object;
.source "ListenDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/listen/bean/ListenDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameCategoryBooksBean"
.end annotation


# instance fields
.field public Author:Ljava/lang/String;

.field public Id:I

.field public Img:Ljava/lang/String;

.field public ImgKey:Ljava/lang/String;

.field public LastChapter:Ljava/lang/String;

.field public LastChapterId:I

.field public Name:Ljava/lang/String;

.field public Score:D


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
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Id:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->ImgKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->LastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->LastChapterId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Score:D

    return-wide v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Author:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Id:I

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Img:Ljava/lang/String;

    return-void
.end method

.method public setImgKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->ImgKey:Ljava/lang/String;

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->LastChapter:Ljava/lang/String;

    return-void
.end method

.method public setLastChapterId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->LastChapterId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Name:Ljava/lang/String;

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/expand/listen/bean/ListenDetail$SameCategoryBooksBean;->Score:D

    return-void
.end method
