.class public Lcom/apk/g00;
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
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/f00;


# direct methods
.method public constructor <init>(Lcom/apk/f00;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/g00;->if:Lcom/apk/f00;

    iput-object p2, p0, Lcom/apk/g00;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/g00;->if:Lcom/apk/f00;

    iget-object v1, p0, Lcom/apk/g00;->do:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v3, v0, Lcom/apk/f00;->this:Z

    .line 4
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 5
    iput-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 6
    iput v5, v0, Lcom/apk/f00;->else:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getReadChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getReadPage()I

    move-result v1

    iput v1, v0, Lcom/apk/f00;->else:I

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "saveTime"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "isNew"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    const-class v2, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "collectId = ?"

    aput-object v6, v4, v5

    invoke-virtual {v0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v1, v4}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getComicFootprint(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getChapterId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getReadPage()I

    move-result v1

    iput v1, v0, Lcom/apk/f00;->else:I

    goto :goto_0

    .line 18
    :cond_4
    iget-object v1, v0, Lcom/apk/f00;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 20
    :cond_5
    iput v5, v0, Lcom/apk/f00;->else:I

    .line 21
    :goto_0
    invoke-virtual {v0}, Lcom/apk/f00;->h()V

    .line 22
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/g00;->if:Lcom/apk/f00;

    .line 3
    iget-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/f00;->case:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/apk/f00;->import:Lcom/apk/k1;

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Lcom/apk/k30;->const(Ljava/lang/String;Ljava/lang/String;Lcom/apk/k1;)V

    return-void
.end method
