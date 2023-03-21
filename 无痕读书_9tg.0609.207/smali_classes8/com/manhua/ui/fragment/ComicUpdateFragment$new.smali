.class public Lcom/manhua/ui/fragment/ComicUpdateFragment$new;
.super Lcom/apk/r5;
.source "ComicUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicUpdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicUpdateFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Ljava/util/List;ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->f(Lcom/manhua/ui/fragment/ComicUpdateFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    .line 3
    iget-object v1, v1, Lcom/manhua/ui/fragment/ComicUpdateFragment;->new:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    sget-object v1, Lcom/apk/dg;->do:Ljava/util/Random;

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 7
    new-instance v2, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v2}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/4 v3, 0x2

    .line 8
    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 10
    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->h(Lcom/manhua/ui/fragment/ComicUpdateFragment;ZLjava/util/List;ZI)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->h(Lcom/manhua/ui/fragment/ComicUpdateFragment;ZLjava/util/List;ZI)V

    :goto_1
    return-void
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->f(Lcom/manhua/ui/fragment/ComicUpdateFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    return-void
.end method
