.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/wv;


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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    .line 3
    iget v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/CollectBook;->setName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    .line 6
    iget v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    add-int/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/n2;->G(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
