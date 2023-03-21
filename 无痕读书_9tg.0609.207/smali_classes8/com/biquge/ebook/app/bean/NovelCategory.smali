.class public Lcom/biquge/ebook/app/bean/NovelCategory;
.super Ljava/lang/Object;
.source "NovelCategory.java"

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
        "Lcom/biquge/ebook/app/bean/NovelCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x373f9b8b66def3faL


# instance fields
.field public Count:I

.field public Image:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public cId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field public categoryType:I

.field public is_cat:Z

.field public is_hot:Z

.field public itemType:I

.field public py:Ljava/lang/String;

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
.method public compareTo(Lcom/biquge/ebook/app/bean/NovelCategory;)I
    .locals 1
    .param p1    # Lcom/biquge/ebook/app/bean/NovelCategory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->sort:I

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NovelCategory;->getSort()I

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
    check-cast p1, Lcom/biquge/ebook/app/bean/NovelCategory;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/NovelCategory;->compareTo(Lcom/biquge/ebook/app/bean/NovelCategory;)I

    move-result p1

    return p1
.end method

.method public getCId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->cId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCategoryType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->categoryType:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Count:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Image:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/bean/NovelCategory;->getName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Z)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Name:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getPy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->py:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSelect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->select:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->sex:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->sort:I

    return v0
.end method

.method public isSelect()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->select:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public is_cat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->is_cat:Z

    return v0
.end method

.method public is_hot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->is_hot:Z

    return v0
.end method

.method public setCategoryType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->categoryType:I

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Count:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Image:Ljava/lang/String;

    return-void
.end method

.method public setIs_cat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->is_cat:Z

    return-void
.end method

.method public setIs_hot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->is_hot:Z

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->itemType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->Name:Ljava/lang/String;

    return-void
.end method

.method public setPy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->py:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->select:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->select:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->sort:I

    return-void
.end method

.method public setcId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelCategory;->cId:Ljava/lang/String;

    return-void
.end method
