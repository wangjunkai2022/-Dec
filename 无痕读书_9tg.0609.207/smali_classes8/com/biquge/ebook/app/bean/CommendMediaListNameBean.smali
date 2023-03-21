.class public Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;
.super Ljava/lang/Object;
.source "CommendMediaListNameBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x33261c8a8623329dL


# instance fields
.field public Author:Ljava/lang/String;

.field public BookName:Ljava/lang/String;

.field public Desc:Ljava/lang/String;

.field public H5Url:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Score:Ljava/lang/String;

.field public SourceType:Ljava/lang/String;

.field public Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->BookName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u300a<font color=\"#0693EA\" size=\"26\" >{name}</font>\u300b\u5c0f\u8bf4\u7684\u4f5c\u8005\u300a<font color=\"#fc6a00\">{author}</font>\u300b\u51fa\u6f2b\u753b\u4e86\uff0c\u8bc4\u5206\u9ad8\u8fbe <font color=\"#F7B11B\">{score}</font>\uff0c\n\u4e3a\u60a8\u63a8\u8350\uff0c\u70b9\u51fb\u67e5\u770b >>"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Desc:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->H5Url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Score:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "9.6"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Score:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->SourceType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Author:Ljava/lang/String;

    return-void
.end method

.method public setBookName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->BookName:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Desc:Ljava/lang/String;

    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->H5Url:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Id:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Score:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->SourceType:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->Url:Ljava/lang/String;

    return-void
.end method
