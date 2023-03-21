.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$if;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->onData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupBooks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v3, v3, v2}, Lcom/apk/n2;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/ze;->V()V

    :cond_1
    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/ja;

    invoke-direct {v1, p0}, Lcom/apk/ja;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$if;)V

    .line 2
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
