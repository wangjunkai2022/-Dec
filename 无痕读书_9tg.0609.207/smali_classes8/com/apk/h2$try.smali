.class public Lcom/apk/h2$try;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h2;->else(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$try;->if:Lcom/apk/h2;

    iput-boolean p2, p0, Lcom/apk/h2$try;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/apk/h2$try;->if:Lcom/apk/h2;

    .line 2
    iget-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/apk/h2;->native(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4
    iget-object v1, p0, Lcom/apk/h2$try;->if:Lcom/apk/h2;

    .line 5
    iget-object v2, v1, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v2, :cond_11

    .line 6
    iget v3, v1, Lcom/apk/h2;->transient:I

    .line 7
    iget-boolean v4, p0, Lcom/apk/h2$try;->do:Z

    .line 8
    invoke-static {v2}, Lcom/apk/h2;->private(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v5

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-1"

    .line 10
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/apk/g2;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v7

    if-nez v7, :cond_0

    .line 12
    iget-object v7, v1, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v7, v6}, Lcom/apk/g2;->switch(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v7

    .line 14
    iget-boolean v10, v1, Lcom/apk/h2;->y:Z

    if-nez v10, :cond_1

    iget-boolean v10, v1, Lcom/apk/h2;->e:Z

    if-eqz v10, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    if-nez v5, :cond_f

    if-nez v6, :cond_f

    if-nez v7, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v5

    if-ne v5, v9, :cond_3

    goto/16 :goto_6

    .line 16
    :cond_3
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v4

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v2

    if-ne v4, v2, :cond_b

    .line 17
    invoke-virtual {v1, v9}, Lcom/apk/h2;->H(Z)V

    add-int/lit8 v2, v3, 0x1

    .line 18
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 19
    invoke-static {v2}, Lcom/apk/h2;->private(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v1, v0, v8}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 23
    invoke-virtual {v1, v0, v9}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LOAD_CHAPTER_DEFAULT_CONTENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 26
    invoke-virtual {v1, v0}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_5
    invoke-static {v2}, Lcom/apk/h2;->private(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {v1, v0}, Lcom/apk/h2;->j(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v1, v0}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_7
    :goto_1
    iget-object v0, v1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 31
    iget-object v0, v1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    new-instance v2, Lcom/apk/e2;

    invoke-direct {v2, v1, v3, v4}, Lcom/apk/e2;-><init>(Lcom/apk/h2;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 32
    :cond_8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v1, v0, v8}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v3

    if-nez v3, :cond_9

    .line 35
    invoke-virtual {v1, v0, v9}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 37
    :cond_9
    invoke-virtual {v1, v0}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_2
    iget-object v0, v1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, v1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    new-instance v3, Lcom/apk/s1;

    invoke-direct {v3, v1, v2}, Lcom/apk/s1;-><init>(Lcom/apk/h2;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :cond_a
    :goto_3
    invoke-virtual {v1, v8}, Lcom/apk/h2;->H(Z)V

    goto :goto_7

    .line 42
    :cond_b
    invoke-virtual {v1}, Lcom/apk/h2;->abstract()Z

    move-result v2

    if-nez v2, :cond_11

    .line 43
    invoke-virtual {v1}, Lcom/apk/h2;->implements()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 44
    invoke-virtual {v2}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_4

    :cond_c
    iget-object v2, v1, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 45
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_11

    .line 46
    :goto_4
    invoke-virtual {v1, v9}, Lcom/apk/h2;->H(Z)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 50
    invoke-virtual {v1, v0, v8}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v3

    if-nez v3, :cond_d

    .line 51
    invoke-virtual {v1, v0, v9}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 53
    :cond_d
    invoke-virtual {v1, v0}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 55
    new-instance v3, Lcom/apk/z1;

    invoke-direct {v3, v1, v2}, Lcom/apk/z1;-><init>(Lcom/apk/h2;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_f
    :goto_6
    if-eqz v4, :cond_10

    const/16 v0, 0x3e7

    .line 56
    iput v0, v1, Lcom/apk/h2;->goto:I

    .line 57
    invoke-virtual {v1}, Lcom/apk/h2;->w()V

    goto :goto_7

    .line 58
    :cond_10
    invoke-virtual {v1}, Lcom/apk/h2;->w()V

    :cond_11
    :goto_7
    return-void
.end method
