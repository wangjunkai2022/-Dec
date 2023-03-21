.class public Lcom/biquge/ebook/app/bean/CacheFailedBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "CacheFailedBean.java"


# instance fields
.field public chapterId:Ljava/lang/String;

.field public novelId:Ljava/lang/String;

.field public position:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->position:I

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->novelId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->chapterId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->chapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNovelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->novelId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->position:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->chapterId:Ljava/lang/String;

    return-void
.end method

.method public setNovelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->novelId:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->position:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;->url:Ljava/lang/String;

    return-void
.end method
