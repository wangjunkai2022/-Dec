.class public Lcom/apk/f00$if;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/f00;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/data/bean/ComicChapterBean;

.field public final synthetic for:Lcom/apk/f00;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/apk/f00;Lcom/manhua/data/bean/ComicChapterBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    iput-object p2, p0, Lcom/apk/f00$if;->do:Lcom/manhua/data/bean/ComicChapterBean;

    iput-boolean p3, p0, Lcom/apk/f00$if;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 3
    invoke-virtual {v1}, Lcom/apk/f00;->extends()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 5
    iget-object v1, v1, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    .line 6
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 8
    iget-object p1, p1, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 9
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result p1

    add-int/2addr p1, v2

    .line 10
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 11
    iget-object p2, p2, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    .line 12
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    if-le p2, p1, :cond_2

    .line 13
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 14
    iget-object p2, p2, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p2, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 16
    iget-object v1, v1, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 17
    iget-object v1, v1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 19
    iget-object p1, p1, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 20
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_2

    .line 21
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    invoke-virtual {p1}, Lcom/apk/f00;->import()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 22
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 23
    iget-object p1, p1, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 24
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v2

    .line 25
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 26
    iget-object p2, p2, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 27
    invoke-virtual {p2}, Lcom/apk/lz;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 28
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 29
    iget-object p2, p2, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 30
    invoke-virtual {p2, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 32
    iget-object p1, p1, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 33
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    .line 34
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 35
    iget-object p2, p2, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 36
    invoke-virtual {p2, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    invoke-virtual {p1, v0}, Lcom/apk/f00;->m(Z)V

    .line 38
    iget-object p1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 39
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :goto_1
    iget-object p1, p1, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 41
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    return-void

    .line 42
    :goto_2
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    invoke-virtual {p2, v0}, Lcom/apk/f00;->m(Z)V

    .line 43
    iget-object p2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 44
    iget-object p2, p2, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 45
    invoke-virtual {p2, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    .line 46
    throw p1
.end method

.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/apk/f00$if;->do:Lcom/manhua/data/bean/ComicChapterBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 5
    invoke-virtual {v2, v1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    invoke-static {v1, v2}, Lcom/apk/f00;->new(Lcom/apk/f00;Lcom/manhua/data/bean/ComicChapterBean;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 9
    invoke-virtual {v3}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3, v1}, Lcom/apk/mu;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    invoke-static {v1, v2}, Lcom/apk/f00;->new(Lcom/apk/f00;Lcom/manhua/data/bean/ComicChapterBean;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 13
    iget-object v1, v1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 14
    check-cast v1, Lcom/apk/k00;

    const v2, 0x7f100320

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/apk/k00;->const(Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/apk/f00$if;->for:Lcom/apk/f00;

    .line 16
    iget-object v1, v1, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 17
    iget-boolean v2, p0, Lcom/apk/f00$if;->if:Z

    new-instance v3, Lcom/apk/tz;

    invoke-direct {v3, p0, v0, v2}, Lcom/apk/tz;-><init>(Lcom/apk/f00$if;Ljava/util/List;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
