.class public Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BookDetailDataFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090051

    const-string v2, "field \'mCategoryTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mCategoryTxt:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005b

    const-string v2, "field \'mStatusTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mStatusTxt:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005d

    const-string v2, "field \'mUpdateTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mUpdateTxt:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005a

    const-string v2, "field \'mStarValueTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mStarValueTxt:Landroid/widget/TextView;

    const v0, 0x7f090058

    const-string v1, "field \'mStarBarView\' and method \'menuClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Lcom/biquge/ebook/app/widget/StarBarView;

    const-string v3, "field \'mStarBarView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/StarBarView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mStarBarView:Lcom/biquge/ebook/app/widget/StarBarView;

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->if:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    const v1, 0x7f0900d1

    const-string v2, "field \'mBookIntroExpandeTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mBookIntroExpandeTxt:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090055

    const-string v2, "field \'mNewChapterTimeTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mNewChapterTimeTxt:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090056

    const-string v2, "field \'mNewChapterTitleTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mNewChapterTitleTxt:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0900ce

    const-string v2, "field \'mAuthorRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0900d3

    const-string v2, "field \'mRecommendRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09005c

    const-string v1, "field \'updateTagView\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->updateTagView:Landroid/view/View;

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900cd

    const-string v2, "field \'authorLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->authorLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900d4

    const-string v1, "field \'authorRefreshBtn\' and method \'menuClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'authorRefreshBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->authorRefreshBtn:Landroid/widget/TextView;

    .line 20
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->for:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900d5

    const-string v2, "field \'sameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->sameLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900d2

    const-string v1, "field \'sameRefreshBtn\' and method \'menuClick\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'sameRefreshBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->sameRefreshBtn:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->new:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const-class v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v1, 0x7f0900a9

    const-string v2, "field \'mAdViewRectangle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 28
    const-class v0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const v1, 0x7f0900b1

    const-string v2, "field \'mTopCommentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mTopCommentLayout:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const v0, 0x7f090059

    const-string v1, "method \'menuClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->try:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$new;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mCategoryTxt:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mStatusTxt:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mUpdateTxt:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mStarValueTxt:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mStarBarView:Lcom/biquge/ebook/app/widget/StarBarView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mBookIntroExpandeTxt:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mNewChapterTimeTxt:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mNewChapterTitleTxt:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->updateTagView:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->authorLayout:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->authorRefreshBtn:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->sameLayout:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->sameRefreshBtn:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 19
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->mTopCommentLayout:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->if:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->for:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->new:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment_ViewBinding;->try:Landroid/view/View;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
