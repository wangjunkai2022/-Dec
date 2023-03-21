.class public Lcom/manhua/data/bean/ComicChapterBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "ComicChapterBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x50a047a5377315f1L


# instance fields
.field public HostKey:Ljava/lang/String;

.field public changeSourceUrl:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public hasContent:Z

.field public isCache:Z

.field public name:Ljava/lang/String;

.field public need_share:Ljava/lang/String;

.field public nid:Ljava/lang/String;

.field public novelId:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public position:I

.field public rollName:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeSourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->changeSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHostKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->HostKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeed_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->need_share:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->nid:Ljava/lang/String;

    return-object v0
.end method

.method public getNovelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->novelId:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->position:I

    return v0
.end method

.method public getRollName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->rollName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->isCache:Z

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ROLLNAME_LAYOUT_KEY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHasContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/data/bean/ComicChapterBean;->hasContent:Z

    return v0
.end method

.method public setCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->isCache:Z

    return-void
.end method

.method public setChangeSourceUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->changeSourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setHasContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->hasContent:Z

    return-void
.end method

.method public setHostKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->HostKey:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeed_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->need_share:Ljava/lang/String;

    return-void
.end method

.method public setNid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->nid:Ljava/lang/String;

    return-void
.end method

.method public setNovelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->novelId:Ljava/lang/String;

    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->oid:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->position:I

    return-void
.end method

.method public setRollName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->rollName:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicChapterBean;->url:Ljava/lang/String;

    return-void
.end method
