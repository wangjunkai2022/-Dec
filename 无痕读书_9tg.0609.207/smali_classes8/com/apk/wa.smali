.class public Lcom/apk/wa;
.super Ljava/lang/Object;
.source "BookListFragment.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookListFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/wa;->do:Lcom/biquge/ebook/app/ui/fragment/BookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/v0;->const()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/wa;->do:Lcom/biquge/ebook/app/ui/fragment/BookListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/apk/wa;->do:Lcom/biquge/ebook/app/ui/fragment/BookListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/MyListActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/apk/wa;->do:Lcom/biquge/ebook/app/ui/fragment/BookListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    iget-object p2, p0, Lcom/apk/wa;->do:Lcom/biquge/ebook/app/ui/fragment/BookListFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
