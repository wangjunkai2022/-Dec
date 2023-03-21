.class public Lcom/apk/h00;
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
    iput-object p1, p0, Lcom/apk/h00;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/h00;->do:Lcom/apk/f00;

    .line 2
    iget-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v1, p0, Lcom/apk/h00;->do:Lcom/apk/f00;

    .line 5
    iget-object v2, v1, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v2, :cond_9

    .line 6
    iget v3, v1, Lcom/apk/f00;->public:I

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/apk/f00;->public(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v4

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-1"

    .line 10
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/apk/e00;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v7

    if-nez v7, :cond_1

    .line 12
    iget-object v5, v1, Lcom/apk/f00;->break:Lcom/apk/e00;

    .line 13
    iget-object v5, v5, Lcom/apk/e00;->do:Lcom/apk/gg;

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual {v5, v6}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x1

    :cond_1
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 15
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/apk/f00;->import()I

    move-result v4

    if-nez v4, :cond_4

    .line 17
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v4

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v2

    if-ne v4, v2, :cond_3

    iget-object v2, v1, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v4, v1, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {v4}, Lcom/apk/lz;->getCount()I

    move-result v4

    sub-int/2addr v4, v8

    if-eq v2, v4, :cond_3

    .line 18
    invoke-virtual {v1, v0, v3}, Lcom/apk/f00;->else(Lcom/manhua/data/bean/ComicChapterBean;I)V

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v1}, Lcom/apk/f00;->return()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, v1, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {v3}, Lcom/apk/lz;->getCount()I

    move-result v3

    sub-int/2addr v3, v8

    if-ne v2, v3, :cond_8

    .line 20
    invoke-virtual {v1, v0}, Lcom/apk/f00;->break(Lcom/manhua/data/bean/ComicChapterBean;)V

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v4

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v2

    if-ne v4, v2, :cond_5

    .line 22
    invoke-virtual {v1, v0, v3}, Lcom/apk/f00;->else(Lcom/manhua/data/bean/ComicChapterBean;I)V

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v1}, Lcom/apk/f00;->return()Z

    move-result v2

    if-nez v2, :cond_8

    .line 24
    invoke-virtual {v1}, Lcom/apk/f00;->extends()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 25
    invoke-virtual {v2}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_6
    iget-object v2, v1, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 26
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_8

    .line 27
    :goto_0
    invoke-virtual {v1, v0}, Lcom/apk/f00;->break(Lcom/manhua/data/bean/ComicChapterBean;)V

    goto :goto_2

    .line 28
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/apk/f00;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_8
    :goto_2
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    :goto_3
    return-void
.end method
