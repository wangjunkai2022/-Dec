.class public Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;
.super Lcom/apk/r5;
.source "ComicNewStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicNewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    :cond_0
    return-void
.end method

.method public final(Lcom/biquge/ebook/app/bean/ComicStoreBean;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 2
    iput-object p1, v1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/v10;

    invoke-direct {v0, v1}, Lcom/apk/v10;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_0
    throw v0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public new(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicBean;

    const/16 v1, 0x9

    .line 3
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$if;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-static {p3, p1, p2}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->h(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Ljava/util/List;Z)V

    return-void
.end method
