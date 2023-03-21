.class public Lcom/apk/ya;
.super Ljava/lang/Object;
.source "BookSearchFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ya;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/ya;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090131

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/apk/ya;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 6
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/apk/ya;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->n(II)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/apk/ya;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    const/4 p2, 0x2

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->n(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
