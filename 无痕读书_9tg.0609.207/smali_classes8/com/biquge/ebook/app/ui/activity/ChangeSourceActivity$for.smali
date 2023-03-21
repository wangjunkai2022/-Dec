.class public Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;
.super Lcom/apk/c1;
.source "ChangeSourceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/apk/b6<",
        "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 6
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 9
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 10
    invoke-static {v0, v2}, Lcom/apk/nd;->case(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iput-object v0, v1, Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;->do:Ljava/lang/String;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 13
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    .line 14
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->for:Ljava/lang/String;

    .line 15
    iget v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    .line 16
    invoke-static {v1, v2, v0}, Lcom/apk/w;->finally(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->do:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 18
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    .line 19
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->for:Ljava/lang/String;

    .line 20
    iget v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    const/4 v3, 0x1

    .line 21
    invoke-static {v1, v2, v0, v3}, Lcom/apk/qd;->goto(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/apk/b6;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/apk/b6;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 6
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->do:Ljava/lang/String;

    .line 7
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 9
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->else:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 10
    iget v0, v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 11
    iget-object v0, v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 13
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez v1, :cond_2

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 17
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    .line 18
    new-instance v3, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-direct {v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;-><init>()V

    :try_start_0
    const-string v4, "DEFAULT"

    .line 19
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setUrl(Ljava/lang/String;)V

    .line 20
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->do:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setBookId(Ljava/lang/String;)V

    .line 21
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setName(Ljava/lang/String;)V

    .line 22
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->for:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setAuthor(Ljava/lang/String;)V

    .line 23
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->try:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setLatestName(Ljava/lang/String;)V

    .line 24
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->case:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setLatestTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 27
    :cond_2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 30
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    .line 31
    new-instance v3, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-direct {v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;-><init>()V

    .line 32
    :try_start_1
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v4, v5}, Lcom/apk/nd;->case(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setUrl(Ljava/lang/String;)V

    .line 33
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->do:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setBookId(Ljava/lang/String;)V

    .line 34
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setName(Ljava/lang/String;)V

    .line 35
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->for:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setAuthor(Ljava/lang/String;)V

    .line 36
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->try:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->try:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setLatestName(Ljava/lang/String;)V

    .line 37
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->case:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->setLatestTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 41
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 42
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    .line 44
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 45
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    .line 46
    iget-object v4, v4, Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;->do:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 48
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    if-eqz p1, :cond_10

    .line 49
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 50
    iget v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 51
    :goto_5
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v4

    .line 52
    iget-boolean v5, p1, Lcom/apk/b6;->if:Z

    if-nez v4, :cond_8

    const/4 v6, 0x0

    goto :goto_6

    .line 53
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    :goto_6
    if-eqz v1, :cond_b

    .line 54
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    .line 55
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_9
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    if-eqz v1, :cond_f

    .line 57
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v5, :cond_a

    if-lez v6, :cond_a

    .line 58
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 59
    iget v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    goto :goto_7

    .line 60
    :cond_a
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_7

    :cond_b
    if-lez v6, :cond_d

    .line 61
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_c
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    if-eqz v1, :cond_d

    .line 64
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 65
    :cond_d
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    if-eqz v1, :cond_f

    if-eqz v5, :cond_e

    if-lez v6, :cond_e

    .line 66
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 67
    iget v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    goto :goto_7

    .line 68
    :cond_e
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    .line 69
    :cond_f
    :goto_7
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_12

    const p1, 0x7f1000d2

    .line 70
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_8

    .line 71
    :cond_10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 72
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    if-eqz p1, :cond_11

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 74
    :cond_11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 75
    iget p1, p1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    if-ne p1, v2, :cond_12

    const p1, 0x7f1000d3

    .line 76
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_12
    :goto_8
    return-void

    .line 77
    :cond_13
    throw v2
.end method

.method public onPreExecute()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;->if:Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;

    .line 3
    iget v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    :cond_0
    return-void
.end method
