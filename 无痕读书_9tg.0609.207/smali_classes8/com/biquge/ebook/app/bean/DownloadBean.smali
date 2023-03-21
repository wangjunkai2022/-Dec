.class public Lcom/biquge/ebook/app/bean/DownloadBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "DownloadBean.java"


# instance fields
.field public max:I

.field public name:Ljava/lang/String;

.field public novelId:Ljava/lang/String;

.field public progress:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->max:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNovelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->novelId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->progress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->state:I

    return v0
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->max:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNovelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->novelId:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->progress:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/DownloadBean;->state:I

    return-void
.end method
