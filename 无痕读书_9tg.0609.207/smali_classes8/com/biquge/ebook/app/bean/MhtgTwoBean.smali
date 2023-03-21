.class public Lcom/biquge/ebook/app/bean/MhtgTwoBean;
.super Ljava/lang/Object;
.source "MhtgTwoBean.java"


# instance fields
.field public apkurl:Ljava/lang/String;

.field public maxdays:I

.field public md5:Ljava/lang/String;

.field public moredays:I

.field public openflag:Z

.field public pgname:Ljava/lang/String;

.field public read:I

.field public showcounts:I

.field public tips:Ljava/lang/String;

.field public tips2:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->apkurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxdays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->maxdays:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->maxdays:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->maxdays:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMoredays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->moredays:I

    return v0
.end method

.method public getPgname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->pgname:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->read:I

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->read:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->read:I

    return v0
.end method

.method public getShowcounts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->showcounts:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->showcounts:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->showcounts:I

    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTips2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->tips2:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenflag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->openflag:Z

    return v0
.end method

.method public setApkurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->apkurl:Ljava/lang/String;

    return-void
.end method

.method public setMaxdays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->maxdays:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setMoredays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->moredays:I

    return-void
.end method

.method public setOpenflag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->openflag:Z

    return-void
.end method

.method public setPgname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->pgname:Ljava/lang/String;

    return-void
.end method

.method public setRead(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->read:I

    return-void
.end method

.method public setShowcounts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->showcounts:I

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->tips:Ljava/lang/String;

    return-void
.end method

.method public setTips2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->tips2:Ljava/lang/String;

    return-void
.end method
