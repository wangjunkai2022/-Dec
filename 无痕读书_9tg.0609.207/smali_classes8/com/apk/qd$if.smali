.class public Lcom/apk/qd$if;
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
.field public do:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:I

.field public final synthetic try:Lcom/apk/qd;


# direct methods
.method public constructor <init>(Lcom/apk/qd;Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qd$if;->try:Lcom/apk/qd;

    iput-object p2, p0, Lcom/apk/qd$if;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/qd$if;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iput p4, p0, Lcom/apk/qd$if;->new:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/qd$if;->if:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/qd$if;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v0, v1}, Lcom/apk/nd;->goto(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/apk/qd$if;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v2, v3, v0, v4}, Lcom/apk/nd;->this(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/qd$if;->do:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 6
    invoke-static {v2, v1}, Lcom/apk/nd;->try(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/qd$if;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/apk/qd$if;->if:Ljava/lang/String;

    invoke-static {v2}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/apk/qd$if;->if:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/qd$if;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v3, v2, v0, v4}, Lcom/apk/nd;->this(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/qd$if;->do:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 11
    iget-object v0, p0, Lcom/apk/qd$if;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd;->try(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

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
    iget-object v0, p0, Lcom/apk/qd$if;->try:Lcom/apk/qd;

    .line 4
    iget-object v0, v0, Lcom/apk/qd;->for:Lcom/apk/md;

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/apk/qd$if;->new:I

    iget-object v2, p0, Lcom/apk/qd$if;->do:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/apk/md;->do(ILcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;Ljava/util/List;)V

    :cond_0
    return-void
.end method
