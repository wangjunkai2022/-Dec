.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BookStoreCategoryFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 3
    const-class v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const v1, 0x7f09046d

    const-string v2, "field \'mPtrClassicFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    const-class v0, Lcom/manhua/ui/widget/PageRecyclerView;

    const v1, 0x7f09012c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/PageRecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    const v0, 0x7f09016c

    const-string v1, "field \'mHeaderTxt\' and method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mHeaderTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;->if:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Lcom/manhua/ui/widget/PublicLoadingView;

    const v1, 0x7f09043a

    const-string v2, "field \'mPublicLoadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
