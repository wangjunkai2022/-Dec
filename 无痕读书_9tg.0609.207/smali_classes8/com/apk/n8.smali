.class public Lcom/apk/n8;
.super Lcom/apk/c1;
.source "SetActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/SetActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n8;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o0;->import()V

    .line 2
    iget-object v0, p0, Lcom/apk/n8;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v2, Lcom/apk/m30;

    invoke-direct {v2, v0}, Lcom/apk/m30;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, v1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/ii;->if()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/apk/mu;->catch(Landroid/content/Context;)V

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "progress"

    const/4 v2, 0x0

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "state"

    const/4 v3, 0x1

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 14
    const-class v0, Lcom/manhua/data/bean/ComicCacheFailedBean;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_2

    .line 16
    :try_start_3
    iget-object v1, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v1, :cond_3

    .line 17
    iget-object v0, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    check-cast v0, Ljava/util/HashSet;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 20
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_3
    :goto_2
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/apk/n8;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    .line 3
    invoke-virtual {p1}, Lcom/apk/f6;->hideBaseLoading()V

    .line 4
    iget-object p1, p0, Lcom/apk/n8;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity;->l(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    const p1, 0x7f100311

    .line 5
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/n8;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    const v1, 0x7f100312

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/f6;->showBaseLoading(Ljava/lang/String;)V

    return-void
.end method
