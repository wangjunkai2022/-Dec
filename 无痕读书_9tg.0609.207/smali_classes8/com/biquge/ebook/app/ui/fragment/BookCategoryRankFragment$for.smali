.class public Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;
.super Lcom/apk/u5;
.source "BookCategoryRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public switch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    return-void
.end method

.method public try(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    .line 3
    iget-object p3, p3, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    if-eqz p3, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 6
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    .line 7
    iget-object p3, p3, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    .line 8
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    .line 10
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    .line 11
    invoke-interface {p1, p3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    invoke-static {p3, v0, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;ZLjava/util/List;Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    invoke-static {p3, v1, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;ZLjava/util/List;Z)V

    :goto_1
    return-void
.end method
