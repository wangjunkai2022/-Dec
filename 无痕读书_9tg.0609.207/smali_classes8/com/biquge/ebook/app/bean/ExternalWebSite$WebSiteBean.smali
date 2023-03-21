.class public Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;
.super Ljava/lang/Object;
.source "ExternalWebSite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/ExternalWebSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSiteBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x686313242ef5259dL


# instance fields
.field public id:Ljava/lang/String;

.field public isRuleSite:Z

.field public name:Ljava/lang/String;

.field public siteType:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSiteType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->siteType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isRuleSite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->isRuleSite:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRuleSite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->isRuleSite:Z

    return-void
.end method

.method public setSiteType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->siteType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->url:Ljava/lang/String;

    return-void
.end method
