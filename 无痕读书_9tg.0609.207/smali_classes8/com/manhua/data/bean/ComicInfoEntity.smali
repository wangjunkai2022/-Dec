.class public Lcom/manhua/data/bean/ComicInfoEntity;
.super Ljava/lang/Object;
.source "ComicInfoEntity.java"


# instance fields
.field public addTime:Ljava/lang/String;

.field public bookCount:I

.field public books:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public forMan:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBookCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->bookCount:I

    return v0
.end method

.method public getBooks()Ljava/util/List;
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
    iget-object v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->books:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isForMan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/data/bean/ComicInfoEntity;->forMan:Z

    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setBookCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->bookCount:I

    return-void
.end method

.method public setBooks(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->books:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->cover:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setForMan(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->forMan:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicInfoEntity;->title:Ljava/lang/String;

    return-void
.end method
