.class public Lcom/biquge/ebook/app/bean/MarqueeBean;
.super Ljava/lang/Object;
.source "MarqueeBean.java"


# instance fields
.field public landingtype:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->msg:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->url:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->pkg:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->landingtype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLandingtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->landingtype:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->msg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->pkg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setLandingtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->landingtype:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MarqueeBean;->url:Ljava/lang/String;

    return-void
.end method
