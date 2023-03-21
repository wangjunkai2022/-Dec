.class public Lcom/biquge/ebook/app/bean/DiscoverBean;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# instance fields
.field public discoverIcon:Ljava/lang/String;

.field public discoverTitle:Ljava/lang/String;

.field public discoverUrl:Ljava/lang/String;

.field public isExternalUrl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscoverIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->discoverIcon:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDiscoverTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->discoverTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDiscoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->discoverUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isExternalUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->isExternalUrl:Z

    return v0
.end method

.method public setDiscoverIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->discoverIcon:Ljava/lang/String;

    return-void
.end method

.method public setDiscoverTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->discoverTitle:Ljava/lang/String;

    return-void
.end method

.method public setDiscoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->discoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setExternalUrl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/DiscoverBean;->isExternalUrl:Z

    return-void
.end method
