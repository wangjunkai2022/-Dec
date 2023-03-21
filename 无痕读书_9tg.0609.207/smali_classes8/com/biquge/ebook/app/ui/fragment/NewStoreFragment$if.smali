.class public Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$if;
.super Lcom/apk/u5;
.source "NewStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    :cond_0
    return-void
.end method

.method public import(Lcom/biquge/ebook/app/bean/StoreBean;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 2
    iput-object p1, v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/bc;

    invoke-direct {v0, v1}, Lcom/apk/bc;-><init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_0
    throw v0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
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

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    const/16 v1, 0x9

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-static {p3, p1, p2}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->f(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;Ljava/util/List;Z)V

    return-void
.end method
