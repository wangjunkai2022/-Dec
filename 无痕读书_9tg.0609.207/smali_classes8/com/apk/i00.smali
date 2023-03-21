.class public Lcom/apk/i00;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00;


# direct methods
.method public constructor <init>(Lcom/apk/f00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i00;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/apk/i00;->do:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/apk/i00;->do:Lcom/apk/f00;

    .line 4
    iget-object v1, v1, Lcom/apk/f00;->default:Lcom/apk/gg;

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/apk/i00;->do:Lcom/apk/f00;

    .line 8
    iget-object v1, v1, Lcom/apk/f00;->default:Lcom/apk/gg;

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/apk/i00;->do:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->throw()Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/apk/i00;->do:Lcom/apk/f00;

    if-eqz v1, :cond_2

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/apk/f00;->break:Lcom/apk/e00;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v1, v0}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/apk/mu;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, v1, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v1}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/apk/e00;->for(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, v1, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v2, v0}, Lcom/apk/e00;->do(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 20
    :cond_1
    iget-object v2, v1, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v1}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/apk/e00;->for(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 21
    throw v0

    :cond_3
    :goto_0
    return-void
.end method
