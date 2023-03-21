.class public Lcom/manhua/data/bean/CreateComicList;
.super Lorg/litepal/crud/LitePalSupport;
.source "CreateComicList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x35c7baddeba65b6eL


# instance fields
.field public bookCount:I

.field public bookListId:Ljava/lang/String;

.field public books:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public forMen:Z

.field public intro:Ljava/lang/String;

.field public isCheck:Z

.field public saveTime:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/CreateComicList;->bookCount:I

    return v0
.end method

.method public getBookListId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/CreateComicList;->bookListId:Ljava/lang/String;

    return-object v0
.end method

.method public getBooks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/CreateComicList;->books:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/CreateComicList;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/CreateComicList;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/CreateComicList;->saveTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/CreateComicList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/data/bean/CreateComicList;->isCheck:Z

    return v0
.end method

.method public isForMen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/data/bean/CreateComicList;->forMen:Z

    return v0
.end method

.method public setBookCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/CreateComicList;->bookCount:I

    return-void
.end method

.method public setBookListId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/CreateComicList;->bookListId:Ljava/lang/String;

    return-void
.end method

.method public setBooks(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/CreateComicList;->books:Ljava/lang/String;

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/data/bean/CreateComicList;->isCheck:Z

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/CreateComicList;->cover:Ljava/lang/String;

    return-void
.end method

.method public setForMen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/data/bean/CreateComicList;->forMen:Z

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/CreateComicList;->intro:Ljava/lang/String;

    return-void
.end method

.method public setSaveTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/CreateComicList;->saveTime:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/CreateComicList;->title:Ljava/lang/String;

    return-void
.end method
