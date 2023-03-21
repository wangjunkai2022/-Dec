.class public Lcom/biquge/ebook/app/bean/MhtgBean;
.super Ljava/lang/Object;
.source "MhtgBean.java"


# instance fields
.field public apkurl:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public pgname:Ljava/lang/String;

.field public read:I

.field public retry:I

.field public tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->apkurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPgname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->pgname:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->read:I

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->read:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->read:I

    return v0
.end method

.method public getRetry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->retry:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->retry:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->retry:I

    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public setApkurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->apkurl:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setPgname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->pgname:Ljava/lang/String;

    return-void
.end method

.method public setRead(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->read:I

    return-void
.end method

.method public setRetry(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->retry:I

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgBean;->tips:Ljava/lang/String;

    return-void
.end method
