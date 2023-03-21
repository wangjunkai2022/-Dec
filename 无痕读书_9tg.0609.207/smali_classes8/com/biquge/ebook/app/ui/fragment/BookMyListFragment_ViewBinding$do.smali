.class public Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BookMyListFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-class v2, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const/16 v1, 0x7d1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
