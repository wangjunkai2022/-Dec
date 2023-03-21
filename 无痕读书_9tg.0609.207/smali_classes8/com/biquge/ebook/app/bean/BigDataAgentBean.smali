.class public Lcom/biquge/ebook/app/bean/BigDataAgentBean;
.super Ljava/lang/Object;
.source "BigDataAgentBean.java"


# instance fields
.field public app_id:Ljava/lang/String;

.field public app_key:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public openflag:Z

.field public rd_interval:I

.field public rep_interval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->app_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getApp_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->app_key:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getRd_interval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->rd_interval:I

    return v0
.end method

.method public getRep_interval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->rep_interval:I

    return v0
.end method

.method public isOpenflag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->openflag:Z

    return v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setApp_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->app_key:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->host:Ljava/lang/String;

    return-void
.end method

.method public setOpenflag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->openflag:Z

    return-void
.end method

.method public setRd_interval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->rd_interval:I

    return-void
.end method

.method public setRep_interval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BigDataAgentBean;->rep_interval:I

    return-void
.end method
