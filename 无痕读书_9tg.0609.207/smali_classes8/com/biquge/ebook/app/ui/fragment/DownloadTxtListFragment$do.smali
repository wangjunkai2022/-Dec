.class public Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;
.super Lcom/apk/c1;
.source "DownloadTxtListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/TaskInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    const-string v0, "1"

    .line 1
    const-class v1, Lcom/biquge/ebook/app/bean/TaskInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 3
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->if:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 5
    invoke-static {v1, v0}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v3, "2"

    .line 6
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 7
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->if:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "finish = ?"

    if-eqz v3, :cond_1

    :try_start_1
    const-string v0, "0"

    .line 9
    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 10
    :cond_1
    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/TaskInfo;

    .line 14
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 15
    sget-object v4, Lcom/apk/kf;->new:Lcom/apk/gg;

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v4, v3}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/hy;

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_2

    .line 17
    sget-object v3, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 18
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    iget v3, v1, Lcom/apk/hy;->break:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/4 v3, 0x3

    .line 20
    iput v3, v1, Lcom/apk/hy;->break:I

    .line 21
    sget-object v3, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 22
    invoke-virtual {v3, v1}, Lcom/apk/xx;->update(Lcom/apk/hy;)Z

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->synchronized()V

    return-void
.end method
