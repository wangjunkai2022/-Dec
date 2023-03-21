.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;
.super Lcom/apk/c1;
.source "BookSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->i(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 3
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 4
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/Book;

    .line 5
    sget-object v3, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/Book;->setHaveShelf(Z)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/Book;->setHaveShelf(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_3
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
