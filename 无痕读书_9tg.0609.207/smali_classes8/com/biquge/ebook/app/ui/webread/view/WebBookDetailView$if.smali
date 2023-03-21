.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;
.super Lcom/apk/c1;
.source "WebBookDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->new()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/da;->final(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/qd;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/apk/qd;-><init>(Landroid/app/Activity;Lcom/apk/md;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 7
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 8
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 9
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/apk/qd;->break(ILjava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->isSearchBook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    .line 15
    :cond_1
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
