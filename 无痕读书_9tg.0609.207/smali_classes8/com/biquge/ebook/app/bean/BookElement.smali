.class public Lcom/biquge/ebook/app/bean/BookElement;
.super Lorg/litepal/crud/LitePalSupport;
.source "BookElement.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/litepal/crud/LitePalSupport;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/biquge/ebook/app/bean/BookElement;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x32e31717814db73cL


# instance fields
.field public AddTime:Ljava/lang/String;

.field public BookCount:I

.field public CollectionCount:I

.field public CommendCount:I

.field public CommendImage:Ljava/lang/String;

.field public Cover:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public ForMan:Z

.field public IsCheck:Z

.field public ListId:Ljava/lang/String;

.field public Title:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public UserName:Ljava/lang/String;

.field public itemType:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/biquge/ebook/app/bean/BookElement;)I
    .locals 3
    .param p1    # Lcom/biquge/ebook/app/bean/BookElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/bean/BookElement;->UpdateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/biquge/ebook/app/bean/BookElement;->UpdateTime:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/biquge/ebook/app/bean/BookElement;->AddTime:Ljava/lang/String;

    :goto_0
    const-string v0, "-"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/bean/BookElement;->UpdateTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/biquge/ebook/app/bean/BookElement;->UpdateTime:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/bean/BookElement;->AddTime:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->compareTo(Lcom/biquge/ebook/app/bean/BookElement;)I

    move-result p1

    return p1
.end method

.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->AddTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->BookCount:I

    return v0
.end method

.method public getCollectionCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->CollectionCount:I

    return v0
.end method

.method public getCommendCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->CommendCount:I

    return v0
.end method

.method public getCommendImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->CommendImage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->Cover:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->Description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->itemType:I

    return v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->ListId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->Title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->UpdateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->UserName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->IsCheck:Z

    return v0
.end method

.method public isForMan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/BookElement;->ForMan:Z

    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->AddTime:Ljava/lang/String;

    return-void
.end method

.method public setBookCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->BookCount:I

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->IsCheck:Z

    return-void
.end method

.method public setCollectionCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->CollectionCount:I

    return-void
.end method

.method public setCommendCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->CommendCount:I

    return-void
.end method

.method public setCommendImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->CommendImage:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->Cover:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->Description:Ljava/lang/String;

    return-void
.end method

.method public setForMan(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->ForMan:Z

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->itemType:I

    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->ListId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->Title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookElement;->UserName:Ljava/lang/String;

    return-void
.end method
