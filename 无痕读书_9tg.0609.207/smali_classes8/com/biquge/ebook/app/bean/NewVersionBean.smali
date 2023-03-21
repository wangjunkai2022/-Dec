.class public Lcom/biquge/ebook/app/bean/NewVersionBean;
.super Ljava/lang/Object;
.source "NewVersionBean.java"


# instance fields
.field public appid:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public isForce:Ljava/lang/String;

.field public isForce_user:Z

.field public landingtype:Ljava/lang/String;

.field public maxdays:I

.field public md5:Ljava/lang/String;

.field public newVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new"
    .end annotation
.end field

.field public other_pkg:Ljava/lang/String;

.field public showcounts:I

.field public tips:Ljava/lang/String;

.field public tips2:Ljava/lang/String;

.field public xgDay_user:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->appid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIsForce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->landingtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxdays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->maxdays:I

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->maxdays:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->maxdays:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->newVersion:I

    return v0
.end method

.method public getOther_pkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->other_pkg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getShowcounts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->showcounts:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->showcounts:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->showcounts:I

    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTips2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips2:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips2:Ljava/lang/String;

    return-object v0
.end method

.method public getXgDay_user()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->xgDay_user:I

    return v0
.end method

.method public isForce()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce:Ljava/lang/String;

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isForce_user()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce_user:Z

    return v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->file:Ljava/lang/String;

    return-void
.end method

.method public setForce_user(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce_user:Z

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setIsForce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce:Ljava/lang/String;

    return-void
.end method

.method public setLandingtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->landingtype:Ljava/lang/String;

    return-void
.end method

.method public setMaxdays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->maxdays:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setNewVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->newVersion:I

    return-void
.end method

.method public setOther_pkg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->other_pkg:Ljava/lang/String;

    return-void
.end method

.method public setShowcounts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->showcounts:I

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips:Ljava/lang/String;

    return-void
.end method

.method public setTips2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->tips2:Ljava/lang/String;

    return-void
.end method

.method public setXgDay_user(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewVersionBean;->xgDay_user:I

    return-void
.end method
