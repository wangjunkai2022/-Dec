.class public Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadTxtListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090223

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
