.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;
.super Lcom/apk/u5;
.source "BookStoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NovelCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 2
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->break:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    new-array v2, v0, [Ljava/lang/String;

    .line 6
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->do:[Ljava/lang/String;

    .line 7
    new-array v2, v0, [Ljava/lang/String;

    .line 8
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->if:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/NovelCategory;

    .line 10
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 11
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->do:[Ljava/lang/String;

    .line 12
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NovelCategory;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 13
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 14
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->if:[Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NovelCategory;->getCId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 17
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f09027d

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 19
    invoke-virtual {v2, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const v2, 0x7f09027f

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->try:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 21
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 22
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v1, 0x7f09027e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/apk/gb;

    invoke-direct {v1, p1}, Lcom/apk/gb;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->do:[Ljava/lang/String;

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->class:Lcom/apk/b40$new;

    const/high16 v3, 0x42960000    # 75.0f

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 24
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->try:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {}, Lcom/apk/q0;->for()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->class:Lcom/apk/b40$new;

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 25
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 26
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->case:Lcom/apk/v3;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Z)V

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    goto :goto_1

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public switch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->else:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 3
    iget-boolean p3, p3, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->this:Z

    if-eqz p3, :cond_1

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
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    invoke-static {p3, v0, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;ZLjava/util/List;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    invoke-static {p3, v1, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;ZLjava/util/List;Z)V

    :goto_1
    return-void
.end method
