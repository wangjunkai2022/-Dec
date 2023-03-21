.class public Lcom/manhua/ui/fragment/ComicDownloadFragment$for;
.super Lcom/apk/c1;
.source "ComicDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicDownloadFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/manhua/data/bean/ComicCollectBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$for;->do:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/apk/mu;->implements()Ljava/util/List;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lcom/apk/gg;

    invoke-direct {v3}, Lcom/apk/gg;-><init>()V

    iput-object v3, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    .line 7
    iget-object v4, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v1

    :cond_4
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$for;->do:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$200(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Lcom/manhua/adapter/ComicDownloadAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$for;->do:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$200(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Lcom/manhua/adapter/ComicDownloadAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
