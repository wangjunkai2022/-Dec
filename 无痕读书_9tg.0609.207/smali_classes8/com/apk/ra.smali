.class public Lcom/apk/ra;
.super Ljava/lang/Object;
.source "BookDetailDataFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ra;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/ra;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->do:Lcom/biquge/ebook/app/adapter/AuthorAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {p2}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;->getImg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/biquge/ebook/app/bean/Book;->setImg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;->getLastChapter()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/biquge/ebook/app/bean/Book;->setLastChapter(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book$SameUserBooksNameBean;->getLastChapterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/apk/ra;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->p(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
