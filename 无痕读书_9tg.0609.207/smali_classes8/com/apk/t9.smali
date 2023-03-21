.class public Lcom/apk/t9;
.super Lcom/apk/c1;
.source "NewBookReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I

.field public final synthetic for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 8
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 10
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->isGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 14
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    .line 15
    iget-object v0, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 16
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    .line 17
    iget-object v0, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 19
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/apk/t9;->do:I

    const/4 v1, 0x0

    .line 21
    :goto_1
    iget v2, p0, Lcom/apk/t9;->do:I

    if-ge v1, v2, :cond_3

    .line 22
    iget-object v2, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 23
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 26
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default:Ljava/util/List;

    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    iput v1, p0, Lcom/apk/t9;->if:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_3
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/apk/t9;->do:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    iget-object p1, p0, Lcom/apk/t9;->for:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/apk/t9;->if:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
