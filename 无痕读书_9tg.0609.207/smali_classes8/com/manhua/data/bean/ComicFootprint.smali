.class public Lcom/manhua/data/bean/ComicFootprint;
.super Lorg/litepal/crud/LitePalSupport;
.source "ComicFootprint.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field public author:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public itemType:I

.field public name:Ljava/lang/String;

.field public novelId:Ljava/lang/String;

.field public saveTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicFootprint;->itemType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNovelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->novelId:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicFootprint;->saveTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->author:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->category:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->content:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->icon:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicFootprint;->itemType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->name:Ljava/lang/String;

    return-void
.end method

.method public setNovelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->novelId:Ljava/lang/String;

    return-void
.end method

.method public setSaveTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicFootprint;->saveTime:Ljava/lang/String;

    return-void
.end method
