.class public Lcom/apk/g9;
.super Lcom/apk/c1;
.source "NewBookReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/apk/g9;->if:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f10030a

    invoke-static {v1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v0, v3, v2, v2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 7

    const-string v0, "SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->C(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->implements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/apk/ze;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "readChapterId"

    const-string v3, ""

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "fileType"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    const-class v4, Lcom/biquge/ebook/app/bean/CollectBook;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "collectId = ?"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v0, v2, v5

    invoke-static {v4, v1, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 10
    iget-object v1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 11
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 12
    invoke-virtual {v1}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_0
    iput-object v3, p0, Lcom/apk/g9;->if:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/apk/v3;->import(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 18
    iget-object v2, p0, Lcom/apk/g9;->if:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/g9;->do:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/g9;->if:Ljava/lang/String;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/apk/g9;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 23
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/apk/g9;->do:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/n2;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 26
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 27
    iget-object v1, p0, Lcom/apk/g9;->do:Ljava/lang/String;

    .line 28
    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 29
    :cond_3
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const v1, 0x7f100309

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3, v3}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/g9;->do:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 4
    iput-boolean v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    .line 5
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 6
    iput-boolean v2, v3, Lcom/apk/h2;->return:Z

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setImportFile(Z)V

    .line 8
    iget-object p1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 10
    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    .line 11
    iget-object p1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch()V

    .line 12
    iget-object p1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v2, Lcom/apk/u8;

    invoke-direct {v2, p0}, Lcom/apk/u8;-><init>(Lcom/apk/g9;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY"

    .line 13
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->C(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v3, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const-string v4, ""

    .line 15
    invoke-virtual {v3, p1, v4, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->f0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iget-object p1, p0, Lcom/apk/g9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v2, Lcom/apk/t8;

    invoke-direct {v2, p0}, Lcom/apk/t8;-><init>(Lcom/apk/g9;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
