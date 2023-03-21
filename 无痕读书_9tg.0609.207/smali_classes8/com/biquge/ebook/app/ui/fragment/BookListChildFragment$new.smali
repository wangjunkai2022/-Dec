.class public Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;
.super Lcom/apk/u5;
.source "BookListChildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public catch(Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookElement;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->f(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 3
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 6
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    .line 7
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 9
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    invoke-static {v2, v0, p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;ZLjava/util/List;ZI)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    invoke-static {v2, v1, p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;ZLjava/util/List;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    .line 15
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->try:Z

    .line 16
    iput-boolean v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->this:Z

    return-void
.end method
