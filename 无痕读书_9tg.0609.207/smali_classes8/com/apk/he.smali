.class public Lcom/apk/he;
.super Ljava/lang/Object;
.source "WebBookDirLayout.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/he;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/apk/he;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 2
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/he;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 5
    iput-object p2, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/apk/he;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 7
    iput p1, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    const/4 p1, 0x2

    .line 8
    iget-object v0, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->break:Lcom/apk/qd;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0, p1, v1, p2}, Lcom/apk/qd;->break(ILjava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    :cond_0
    return-void
.end method
