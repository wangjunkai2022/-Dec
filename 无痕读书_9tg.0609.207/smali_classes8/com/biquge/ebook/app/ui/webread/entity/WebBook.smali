.class public Lcom/biquge/ebook/app/ui/webread/entity/WebBook;
.super Ljava/lang/Object;
.source "WebBook.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x5c92b266a477e580L


# instance fields
.field public author:Ljava/lang/String;

.field public bookId:Ljava/lang/String;

.field public chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public firsturl:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public latestName:Ljava/lang/String;

.field public latestTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sign:Ljava/lang/Object;

.field public url:Ljava/lang/String;

.field public webTitle:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getChapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->chapters:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFirsturl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->firsturl:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->latestName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->chapters:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->chapters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->latestName:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->latestName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getLatestTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->latestTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->sign:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->webTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->author:Ljava/lang/String;

    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->bookId:Ljava/lang/String;

    return-void
.end method

.method public setChapters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->chapters:Ljava/util/List;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->desc:Ljava/lang/String;

    return-void
.end method

.method public setFirsturl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->firsturl:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->img:Ljava/lang/String;

    return-void
.end method

.method public setLatestName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->latestName:Ljava/lang/String;

    return-void
.end method

.method public setLatestTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->latestTime:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->name:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->sign:Ljava/lang/Object;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->url:Ljava/lang/String;

    return-void
.end method

.method public setWebTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->webTitle:Ljava/lang/String;

    return-void
.end method
