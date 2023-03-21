.class public Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;
.super Ljava/lang/Object;
.source "ComicStoreRankLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090513

    const-string v2, "field \'topRankLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->topRankLayout:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09050a

    const-string v2, "field \'listLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->listLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f090511

    const-string v2, "field \'topIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090514

    const-string v2, "field \'topRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->topRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090516

    const-string v1, "method \'menuClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->topRankLayout:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->listLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->topRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
