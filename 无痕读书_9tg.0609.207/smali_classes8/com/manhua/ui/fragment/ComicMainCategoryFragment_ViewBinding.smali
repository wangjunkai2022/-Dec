.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ComicMainCategoryFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09021a

    const-string v2, "field \'categoryRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090408

    const-string v2, "field \'parentCategoryLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090409

    const-string v2, "field \'parentCategoryRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09055c

    const-string v1, "field \'time_choose\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'time_choose\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding$do;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f09012d

    const-string v2, "field \'mSexIView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 11
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f09027b

    const-string v2, "field \'mAreaIView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mAreaIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 12
    const-class v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const v1, 0x7f09046d

    const-string v2, "field \'ptrClassicFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 13
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09048c

    const-string v2, "field \'dataRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryLayout:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->parentCategoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 8
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mAreaIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 9
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->ptrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 10
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
