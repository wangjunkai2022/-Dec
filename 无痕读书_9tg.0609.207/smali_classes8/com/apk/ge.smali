.class public Lcom/apk/ge;
.super Ljava/lang/Object;
.source "WebBookDirLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ge;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/ge;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    .line 3
    iget-object p1, p1, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/apk/ge;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 5
    iget-object p3, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->this:Lcom/apk/h1;

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {p3, p1}, Lcom/apk/h1;->for(Lcom/biquge/ebook/app/bean/ChapterBean;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setReadChapterUrl(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/apk/ge;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/apk/ge;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 10
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 11
    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    :cond_1
    :goto_0
    return-void
.end method
