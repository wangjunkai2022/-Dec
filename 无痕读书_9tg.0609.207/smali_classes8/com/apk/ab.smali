.class public Lcom/apk/ab;
.super Lcom/apk/c1;
.source "BookSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iput p2, p0, Lcom/apk/ab;->do:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 3
    iget v1, p0, Lcom/apk/ab;->do:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apk/v3;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->hideBaseLoading()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 9
    iget v1, p0, Lcom/apk/ab;->do:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    const/4 v0, 0x1

    iget v1, p0, Lcom/apk/ab;->do:I

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->n(II)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 13
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    if-nez p1, :cond_3

    const p1, 0x7f1002de

    .line 14
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/ab;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->showBaseLoading()V

    return-void
.end method
