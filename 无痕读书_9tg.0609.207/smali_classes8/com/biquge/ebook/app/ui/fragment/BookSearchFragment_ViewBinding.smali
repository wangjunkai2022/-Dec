.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BookSearchFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public goto:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    const v0, 0x7f0904be

    const-string v1, "field \'mMoreTagView\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mMoreTagView:Landroid/view/View;

    const v0, 0x7f0904b8

    const-string v1, "field \'mSpinnerTxt\' and method \'menuClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSpinnerTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0904b4

    const-string v2, "field \'mSearchEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 9
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0904b2

    const-string v2, "field \'mHotSearchRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0904b0

    const-string v2, "field \'mHistoryFlexboxLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 11
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0904ac

    const-string v2, "field \'fastLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    .line 12
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0904ad

    const-string v2, "field \'fastRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904b9

    const-string v2, "field \'mResultLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    .line 14
    const-class v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const v1, 0x7f09046d

    const-string v2, "field \'mPtrClassicFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 15
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09048c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0904c2

    const-string v1, "field \'mSelectFinishBT\' and method \'menuClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mSelectFinishBT\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSelectFinishBT:Landroid/widget/Button;

    .line 18
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->for:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904ba

    const-string v2, "field \'mForBooksLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksLayout:Landroid/widget/LinearLayout;

    .line 21
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904bb

    const-string v2, "field \'mForBooksTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksTv:Landroid/widget/TextView;

    .line 22
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f0904b6

    const-string v2, "field \'mModuleIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 23
    const-class v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v1, 0x7f0900ab

    const-string v2, "field \'mAdViewRectangle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v0, 0x7f0904a6

    const-string v1, "method \'menuClick\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->new:Landroid/view/View;

    .line 26
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904af

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->try:Landroid/view/View;

    .line 29
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b3

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->case:Landroid/view/View;

    .line 32
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b1

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->else:Landroid/view/View;

    .line 35
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$case;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c0

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->goto:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$else;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding$else;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mMoreTagView:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 12
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSelectFinishBT:Landroid/widget/Button;

    .line 14
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksLayout:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksTv:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 17
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->if:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->for:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->new:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->try:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->case:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->else:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->goto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment_ViewBinding;->goto:Landroid/view/View;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
