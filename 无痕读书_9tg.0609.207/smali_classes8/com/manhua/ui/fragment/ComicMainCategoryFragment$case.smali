.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;
.super Lcom/apk/r5;
.source "ComicMainCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicMainCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public new(Ljava/util/List;ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->a(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 3
    iget-boolean v1, v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->const:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->f(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;ZLjava/util/List;ZI)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->f(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;ZLjava/util/List;ZI)V

    :goto_1
    return-void
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->a(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$case;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    return-void
.end method
