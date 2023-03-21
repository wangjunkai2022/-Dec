.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;
.super Lcom/apk/u5;
.source "BookMainCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->goto:Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public switch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    return-void
.end method

.method public try(Ljava/util/List;ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 3
    iget-boolean p3, p3, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->class:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 5
    new-instance p3, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {p3}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p3, v1}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 8
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-static {p3, v0, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->f(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;ZLjava/util/List;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-static {p3, v1, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->f(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;ZLjava/util/List;Z)V

    :goto_1
    return-void
.end method
