.class public Lcom/manhua/data/bean/ComicCategory;
.super Ljava/lang/Object;
.source "ComicCategory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "Ljava/lang/Comparable<",
        "Lcom/manhua/data/bean/ComicCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0xb20dd8deeb9c019L


# instance fields
.field public Count:I

.field public Image:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public cId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field public itemType:I

.field public select:Ljava/lang/String;

.field public sex:Ljava/lang/String;

.field public sort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/manhua/data/bean/ComicCategory;)I
    .locals 1
    .param p1    # Lcom/manhua/data/bean/ComicCategory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/manhua/data/bean/ComicCategory;->sort:I

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCategory;->getSort()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/manhua/data/bean/ComicCategory;

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicCategory;->compareTo(Lcom/manhua/data/bean/ComicCategory;)I

    move-result p1

    return p1
.end method

.method public getCId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->cId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicCategory;->Count:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->Image:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicCategory;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->select:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->sex:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicCategory;->sort:I

    return v0
.end method

.method public isMan()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->sex:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelect()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicCategory;->select:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicCategory;->Count:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicCategory;->Image:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicCategory;->itemType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicCategory;->Name:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/manhua/data/bean/ComicCategory;->select:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicCategory;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicCategory;->sort:I

    return-void
.end method

.method public setcId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicCategory;->cId:Ljava/lang/String;

    return-void
.end method
