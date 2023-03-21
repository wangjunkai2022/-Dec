.class public Lcom/apk/m3;
.super Lcom/apk/c1;
.source "ComicShelfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/p3;


# direct methods
.method public constructor <init>(Lcom/apk/p3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 13

    const-string v0, "data"

    const-string v1, "status"

    const-string v2, "action"

    .line 1
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "bookcaselimit"

    .line 2
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/apk/w;->goto()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 4
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 5
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 6
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v0, :cond_9

    .line 7
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 8
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    const v1, 0x7f10002c

    .line 9
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/s5;->try(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "isclose"

    .line 11
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "canupload"

    .line 12
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v4, :cond_1

    .line 13
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 14
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 16
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    const v1, 0x7f1003b5

    .line 17
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/s5;->try(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-nez v6, :cond_3

    const-string v0, "caselimit"

    .line 18
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "alreadyuse"

    .line 19
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 21
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 23
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    const v1, 0x7f1003b7

    .line 24
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/s5;->try(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 26
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 28
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    const v1, 0x7f1003b9

    .line 29
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/s5;->try(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 30
    :cond_3
    invoke-static {}, Lcom/apk/mu;->synchronized()Ljava/util/List;

    move-result-object v3

    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/manhua/data/bean/ComicCollectBean;

    add-int/2addr v7, v5

    .line 33
    invoke-virtual {v8}, Lcom/manhua/data/bean/ComicCollectBean;->getFileType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/manhua/data/bean/ComicCollectBean;->isLocalBook(I)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, " / "

    if-eqz v9, :cond_5

    .line 34
    :try_start_1
    iget-object v8, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 35
    iget-object v8, v8, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v8, :cond_4

    .line 36
    iget-object v8, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 37
    iget-object v8, v8, Lcom/apk/p3;->for:Lcom/apk/s5;

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/apk/s5;->case(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 39
    :cond_5
    :try_start_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v11, "addbookmark"

    .line 40
    invoke-virtual {v9, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "bookid"

    .line 41
    invoke-virtual {v8}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "chapterid"

    .line 42
    invoke-virtual {v8}, Lcom/manhua/data/bean/ComicCollectBean;->getReadChapterId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "chaptername"

    .line 43
    invoke-virtual {v8}, Lcom/manhua/data/bean/ComicCollectBean;->getReadChapterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/apk/w;->goto()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 45
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 46
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "result"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v8, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 47
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 49
    iget-object v8, v8, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v8, :cond_4

    .line 50
    iget-object v8, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 51
    iget-object v8, v8, Lcom/apk/p3;->for:Lcom/apk/s5;

    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/apk/s5;->case(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne v4, v6, :cond_8

    const v0, 0x7f1003b8

    .line 53
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const v0, 0x7f1003b6

    .line 54
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_9
    :goto_2
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 5
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, p1, v1, v2}, Lcom/apk/ze;->c0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 8
    iget-object p1, p1, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/apk/s5;->do()V

    :cond_1
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/m3;->do:Lcom/apk/p3;

    .line 3
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v0, :cond_0

    const v1, 0x7f10025c

    .line 4
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/s5;->new(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
