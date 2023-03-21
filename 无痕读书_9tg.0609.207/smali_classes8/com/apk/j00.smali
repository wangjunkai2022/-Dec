.class public Lcom/apk/j00;
.super Lcom/apk/c1;
.source "ComicReadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/apk/f00;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/apk/f00;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/j00;->for:Lcom/apk/f00;

    iput-boolean p2, p0, Lcom/apk/j00;->do:Z

    iput-boolean p3, p0, Lcom/apk/j00;->if:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/j00;->for:Lcom/apk/f00;

    .line 2
    invoke-virtual {v0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/apk/z2;->throw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicChapterBean;

    .line 7
    iget-boolean v3, p0, Lcom/apk/j00;->do:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/apk/j00;->for:Lcom/apk/f00;

    .line 8
    iget-object v5, v5, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 10
    :goto_1
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_2

    const-string v3, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    .line 11
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 12
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, ""

    const-string v6, "content"

    .line 14
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-class v6, Lcom/manhua/data/bean/ComicChapterBean;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "novelId = ? and oid = ?"

    aput-object v8, v7, v1

    .line 16
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 17
    invoke-static {v6, v3, v7}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v3

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/apk/da;->case(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v2, v5}, Lcom/manhua/data/bean/ComicChapterBean;->setContent(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/apk/da;->do(Lcom/manhua/data/bean/ComicChapterBean;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/apk/j00;->for:Lcom/apk/f00;

    if-eqz v0, :cond_7

    .line 22
    :try_start_0
    invoke-virtual {v0}, Lcom/apk/f00;->throw()Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 25
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 27
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/apk/mu;->private(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 33
    :cond_5
    iget-object v1, v0, Lcom/apk/f00;->break:Lcom/apk/e00;

    .line 34
    iget-object v1, v1, Lcom/apk/e00;->do:Lcom/apk/gg;

    if-eqz v1, :cond_6

    .line 35
    invoke-virtual {v1}, Lcom/apk/gg;->clear()V

    .line 36
    :cond_6
    iget v1, v0, Lcom/apk/f00;->else:I

    invoke-virtual {v0, v1}, Lcom/apk/f00;->j(I)V

    .line 37
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    .line 38
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/apk/j00;->if:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/j00;->for:Lcom/apk/f00;

    .line 4
    iget-object p1, p1, Lcom/apk/qz;->if:Landroid/app/Activity;

    const v0, 0x7f1002bd

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/apk/ze;->c0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Z)V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {v0}, Lcom/apk/mu;->catch(Landroid/content/Context;)V

    return-void
.end method
