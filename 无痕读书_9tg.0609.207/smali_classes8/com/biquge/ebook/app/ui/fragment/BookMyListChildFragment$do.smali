.class public Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;
.super Lcom/apk/u5;
.source "BookMyListChildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public break(ZLcom/biquge/ebook/app/bean/CreateBookList;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getBookListId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CreateBookList;->isCheck()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const-string v1, "my_release"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "createBookList"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    invoke-virtual {p2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    const/16 v0, 0x7d1

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f100149

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public this(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->remove(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public throw(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookElement;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/BookElement;

    const-string v2, "commend"

    .line 4
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 8
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 9
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_2
    return-void
.end method
