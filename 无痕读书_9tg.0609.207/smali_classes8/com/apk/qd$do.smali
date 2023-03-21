.class public Lcom/apk/qd$do;
.super Lcom/apk/c1;
.source "WebPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/qd;->break(ILjava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/ChapterBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public final synthetic new:Lcom/apk/qd;


# direct methods
.method public constructor <init>(Lcom/apk/qd;Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qd$do;->new:Lcom/apk/qd;

    iput-object p2, p0, Lcom/apk/qd$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/qd$do;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iput p4, p0, Lcom/apk/qd$do;->for:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/qd$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/qd$do;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v0, v1}, Lcom/apk/nd;->goto(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0, v1}, Lcom/apk/nd;->try(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/qd$do;->do:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd;->try(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/qd$do;->new:Lcom/apk/qd;

    .line 5
    iget-object v0, v0, Lcom/apk/qd;->for:Lcom/apk/md;

    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/apk/qd$do;->for:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/apk/md;->do(ILcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;Ljava/util/List;)V

    :cond_0
    return-void
.end method
