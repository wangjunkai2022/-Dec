.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;
.super Lcom/apk/u5;
.source "BookStoreRankChildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public switch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 6
    iget v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public try(Ljava/util/List;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    .line 2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 3
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->this:Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 5
    new-instance v2, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v2}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    .line 7
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 8
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    const-string v5, "week"

    .line 9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 11
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 14
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    const-string v4, "month"

    .line 15
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 18
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    const-string v3, "total"

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 21
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;ZLjava/util/List;ZI)V

    goto :goto_1

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;ZLjava/util/List;ZI)V

    :goto_1
    return-void
.end method
