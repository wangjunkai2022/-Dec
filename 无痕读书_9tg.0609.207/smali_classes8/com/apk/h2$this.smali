.class public Lcom/apk/h2$this;
.super Landroid/os/AsyncTask;
.source "BookReadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Z

.field public final synthetic for:Lcom/apk/h2;

.field public final if:Lcom/biquge/ebook/app/bean/ChapterBean;


# direct methods
.method public constructor <init>(Lcom/apk/h2;ZLcom/biquge/ebook/app/bean/ChapterBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/apk/h2$this;->do:Z

    .line 3
    iput-object p3, p0, Lcom/apk/h2$this;->if:Lcom/biquge/ebook/app/bean/ChapterBean;

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 3
    invoke-virtual {v1}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 5
    iget-object v1, v1, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    .line 6
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 7
    iget-boolean p1, p0, Lcom/apk/h2$this;->do:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 9
    iget-object p1, p1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 10
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 11
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 12
    iget-object v1, v1, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    .line 13
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 15
    iget-object v1, v1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 16
    invoke-virtual {v1, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 18
    iget-object v1, v1, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 19
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 21
    iget-object p1, p1, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 22
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 23
    iget-boolean p1, p0, Lcom/apk/h2$this;->do:Z

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 25
    iget-object p1, p1, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 26
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 27
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 28
    iget-object v1, v1, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 29
    invoke-virtual {v1}, Lcom/apk/v9;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 31
    iget-object v1, v1, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 32
    invoke-virtual {v1, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-virtual {p1, v0}, Lcom/apk/h2;->H(Z)V

    .line 34
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 35
    iget-object p1, p1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 36
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    .line 37
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 38
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz p1, :cond_2

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

    .line 40
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-virtual {p1, v0}, Lcom/apk/h2;->H(Z)V

    .line 41
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 42
    iget-object p1, p1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 43
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    .line 44
    iget-object p1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 45
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz p1, :cond_2

    .line 46
    :goto_1
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1, v0, v0}, Lcom/apk/l2;->do(ZZ)V

    :cond_2
    return-void

    .line 47
    :goto_2
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-virtual {v1, v0}, Lcom/apk/h2;->H(Z)V

    .line 48
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 49
    iget-object v1, v1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 50
    invoke-virtual {v1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    .line 51
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 52
    iget-object v1, v1, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz v1, :cond_3

    .line 53
    check-cast v1, Lcom/apk/l2;

    invoke-interface {v1, v0, v0}, Lcom/apk/l2;->do(ZZ)V

    .line 54
    :cond_3
    throw p1
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/apk/h2$this;->if:Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-virtual {v0, v2}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-static {v0, v2}, Lcom/apk/h2;->for(Lcom/apk/h2;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-static {v1, v0}, Lcom/apk/h2;->try(Lcom/apk/h2;Lcom/biquge/ebook/app/bean/ChapterBean;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 10
    invoke-virtual {v5}, Lcom/apk/h2;->finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v5

    const/4 v6, 0x1

    .line 11
    invoke-static/range {v1 .. v6}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    invoke-static {v1, v0}, Lcom/apk/h2;->try(Lcom/apk/h2;Lcom/biquge/ebook/app/bean/ChapterBean;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 14
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 15
    check-cast v0, Lcom/apk/l2;

    const v1, 0x7f100320

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apk/l2;->const(Ljava/lang/String;)V

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 17
    iget-object v0, v0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 18
    new-instance v1, Lcom/apk/a2;

    invoke-direct {v1, p0, p1}, Lcom/apk/a2;-><init>(Lcom/apk/h2$this;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPreExecute()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/h2$this;->for:Lcom/apk/h2;

    .line 3
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/apk/l2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/apk/l2;->do(ZZ)V

    :cond_0
    return-void
.end method
