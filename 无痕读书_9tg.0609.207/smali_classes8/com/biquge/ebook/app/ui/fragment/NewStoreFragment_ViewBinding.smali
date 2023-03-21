.class public Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NewStoreFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 3
    const-class v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const v1, 0x7f09046d

    const-string v2, "field \'ptrRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09023f

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const-class v0, Lcom/manhua/ui/widget/PublicLoadingView;

    const v1, 0x7f09043a

    const-string v2, "field \'loadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const v0, 0x7f090390

    const-string v1, "field \'mTopView\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 7
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mTopView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->mTopView:Landroid/widget/ImageView;

    .line 8
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->mTopView:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
