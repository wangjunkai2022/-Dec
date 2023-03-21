.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;
.super Ljava/lang/Object;
.source "WebBookDetailView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->new()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 3
    iget-object p3, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object p3

    .line 5
    iput-object p3, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 7
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 8
    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 9
    iget-object p3, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 10
    invoke-virtual {p3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p2, p3, v0, v1}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 13
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 14
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setReadChapterUrl(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;->if:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 17
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    .line 18
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 19
    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    :cond_1
    return-void
.end method
