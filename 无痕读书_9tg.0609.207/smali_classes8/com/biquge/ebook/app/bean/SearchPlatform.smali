.class public Lcom/biquge/ebook/app/bean/SearchPlatform;
.super Ljava/lang/Object;
.source "SearchPlatform.java"


# instance fields
.field public pid:Ljava/lang/String;

.field public sename:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->sename:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->pid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->pid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->sename:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->pid:Ljava/lang/String;

    return-void
.end method

.method public setSename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->sename:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SearchPlatform;->url:Ljava/lang/String;

    return-void
.end method
