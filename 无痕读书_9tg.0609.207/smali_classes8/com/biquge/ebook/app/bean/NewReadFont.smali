.class public Lcom/biquge/ebook/app/bean/NewReadFont;
.super Lorg/litepal/crud/LitePalSupport;
.source "NewReadFont.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/litepal/crud/LitePalSupport;",
        "Ljava/lang/Comparable<",
        "Lcom/biquge/ebook/app/bean/NewReadFont;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x7d53b20f1af33c4aL


# instance fields
.field public currentSize:I

.field public fid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public fontname:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public img_checked:Ljava/lang/String;

.field public isFinish:Z

.field public isStartDownload:Z

.field public localPath:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public sort:Ljava/lang/String;

.field public totalSize:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method

.method public static getFontPath(Lcom/biquge/ebook/app/bean/NewReadFont;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/biquge/ebook/app/bean/NewReadFont;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->sort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lcom/biquge/ebook/app/bean/NewReadFont;->sort:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->compareTo(Lcom/biquge/ebook/app/bean/NewReadFont;)I

    move-result p1

    return p1
.end method

.method public getCurrentSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->currentSize:I

    return v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->fid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFontname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->fontname:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_checked()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->img_checked:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFontPath(Lcom/biquge/ebook/app/bean/NewReadFont;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->localPath:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->localPath:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->totalSize:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadOk()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_font_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->isFinish:Z

    return v0
.end method

.method public isStartDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->isStartDownload:Z

    return v0
.end method

.method public setCurrentSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->currentSize:I

    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->fid:Ljava/lang/String;

    return-void
.end method

.method public setFinish(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->isFinish:Z

    return-void
.end method

.method public setFontname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->fontname:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->img:Ljava/lang/String;

    return-void
.end method

.method public setImg_checked(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->img_checked:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->size:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->sort:Ljava/lang/String;

    return-void
.end method

.method public setStartDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->isStartDownload:Z

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->totalSize:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewReadFont;->url:Ljava/lang/String;

    return-void
.end method
