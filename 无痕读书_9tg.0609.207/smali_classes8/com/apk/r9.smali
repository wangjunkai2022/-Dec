.class public Lcom/apk/r9;
.super Lcom/apk/c1;
.source "NewBookReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/ChapterBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/r9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/r9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/r9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 6
    invoke-static {v0, v1}, Lcom/apk/qd;->else(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/r9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/v3;->import(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/r9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->super(Ljava/util/List;)V

    :cond_0
    return-void
.end method
