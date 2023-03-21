.class public Lcom/biquge/ebook/app/bean/TxtCollect;
.super Lorg/litepal/crud/LitePalSupport;
.source "TxtCollect.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field public itemType:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->url:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->itemType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->itemType:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TxtCollect;->url:Ljava/lang/String;

    return-void
.end method
