.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$if;
.super Lcom/apk/c1;
.source "BookShelfFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-static {}, Lcom/apk/t4;->for()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-static {}, Lcom/apk/da;->this()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->q(I)V

    return-void
.end method
