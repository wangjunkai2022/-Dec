.class public Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ComicDetailDirFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDetailDirFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    const v0, 0x7f0903ec

    const-string v1, "field \'mDirSortView\' and method \'menuClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mDirSortView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;->if:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding$do;-><init>(Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;Lcom/manhua/ui/fragment/ComicDetailDirFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const v1, 0x7f090183

    const-string v2, "field \'mDirListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903ee

    const-string v2, "field \'mDirCountTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirCountTv:Landroid/widget/TextView;

    .line 9
    const-class v0, Lcom/manhua/ui/widget/PublicLoadingView;

    const v1, 0x7f090439

    const-string v2, "field \'mLoadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object p2, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    .line 5
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirCountTv:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
