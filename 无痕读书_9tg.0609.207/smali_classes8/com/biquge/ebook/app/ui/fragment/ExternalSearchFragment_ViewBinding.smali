.class public Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ExternalSearchFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0904b4

    const-string v2, "field \'mSearchET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f090249

    const-string v2, "field \'mWebSiteFlexLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebSiteFlexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 5
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0904b0

    const-string v2, "field \'mHistoryFlexboxLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 6
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0904ac

    const-string v2, "field \'fastLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    .line 7
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0904ad

    const-string v2, "field \'fastRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    const-class v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    const v1, 0x7f09063a

    const-string v2, "field \'mWebResultLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 9
    const-class v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v1, 0x7f0900a9

    const-string v2, "field \'mAdViewRectangle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v0, 0x7f0905e2

    const-string v1, "method \'menuClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->if:Landroid/view/View;

    .line 12
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding$do;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904af

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->for:Landroid/view/View;

    .line 15
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090244

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->new:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebSiteFlexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->if:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->for:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
