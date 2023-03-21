.class public Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;
.super Ljava/lang/Object;
.source "BookDownloadFragment.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->resumeOrPause(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:I

.field public final synthetic if:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final synthetic new:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->new:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    iput p4, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->new:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$100(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/apk/gg;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->new:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$100(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/apk/gg;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->new:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$200(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    move-result-object p1

    iget v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->for:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;->new:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$302(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Z)Z

    return-void
.end method
