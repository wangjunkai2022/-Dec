.class public Lcom/manhua/ui/fragment/ComicDetailDataFragment;
.super Lcom/apk/g6;
.source "ComicDetailDataFragment.java"


# instance fields
.field public authorLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cd
    .end annotation
.end field

.field public authorRefreshBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d4
    .end annotation
.end field

.field public do:Lcom/manhua/data/bean/ComicBean;

.field public for:Lcom/manhua/adapter/ComicAuthorAdapter;

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a9
    .end annotation
.end field

.field public mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ce
    .end annotation
.end field

.field public mBookIntroExpandeTxt:Lcom/biquge/ebook/app/widget/ExpandableTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d1
    .end annotation
.end field

.field public mCategoryTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090051
    .end annotation
.end field

.field public mNewChapterTimeTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090055
    .end annotation
.end field

.field public mNewChapterTitleTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090056
    .end annotation
.end field

.field public mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d3
    .end annotation
.end field

.field public mStarBarView:Lcom/biquge/ebook/app/widget/StarBarView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090058
    .end annotation
.end field

.field public mStarValueTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005a
    .end annotation
.end field

.field public mStatusTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field public mTopCommentLayout:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b1
    .end annotation
.end field

.field public mUpdateTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public sameLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d5
    .end annotation
.end field

.field public sameRefreshBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d2
    .end annotation
.end field

.field public try:Lcom/manhua/adapter/ComicRecommendAdapter;

.field public updateTagView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b6

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "comicBean"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicBean;

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->synchronized()V

    .line 5
    :try_start_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->abstract()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    new-instance v2, Lcom/apk/o10;

    invoke-direct {v2, p0}, Lcom/apk/o10;-><init>(Lcom/manhua/ui/fragment/ComicDetailDataFragment;)V

    const-string v3, "rectbdetail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mTopCommentLayout:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mTopCommentLayout:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    .line 12
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->do(Landroidx/fragment/app/FragmentActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mTopCommentLayout:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mStarBarView:Lcom/biquge/ebook/app/widget/StarBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/StarBarView;->setOpenStar(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090059,
            0x7f090058,
            0x7f0900d4,
            0x7f0900d2
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->if:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->for:Lcom/manhua/adapter/ComicAuthorAdapter;

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->if:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :sswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->new:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->new:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->try:Lcom/manhua/adapter/ComicRecommendAdapter;

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->new:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :sswitch_2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    .line 14
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 15
    new-instance v0, Lcom/biquge/ebook/app/ui/view/StarPopupView;

    .line 16
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/ui/view/StarPopupView;-><init>(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;)V

    .line 17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 19
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 20
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090058 -> :sswitch_2
        0x7f090059 -> :sswitch_2
        0x7f0900d2 -> :sswitch_1
        0x7f0900d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_0
    return-void
.end method

.method public final synchronized()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mCategoryTxt:Landroid/widget/TextView;

    const v2, 0x7f100063

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mStatusTxt:Landroid/widget/TextView;

    const v1, 0x7f100071

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getBookStatus()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getUpdateCycle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mUpdateTxt:Landroid/widget/TextView;

    const v1, 0x7f100072

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getUpdateCycle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mUpdateTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->updateTagView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mStarValueTxt:Landroid/widget/TextView;

    const v1, 0x7f100430

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicBean;->getBookVote()Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->getScore()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mStarBarView:Lcom/biquge/ebook/app/widget/StarBarView;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getBookVote()Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->getScore()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/StarBarView;->setStarMark(F)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mBookIntroExpandeTxt:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mNewChapterTimeTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getLastTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mNewChapterTitleTxt:Landroid/widget/TextView;

    const v1, 0x7f10042e

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getSameCategoryBooks()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getSameCategoryBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getSameCategoryBooks()Ljava/util/List;

    move-result-object v0

    .line 15
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->sameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 18
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->sameRefreshBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :cond_1
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->new:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/manhua/adapter/ComicRecommendAdapter;

    invoke-direct {v0}, Lcom/manhua/adapter/ComicRecommendAdapter;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->try:Lcom/manhua/adapter/ComicRecommendAdapter;

    .line 21
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mRecommendRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->try:Lcom/manhua/adapter/ComicRecommendAdapter;

    .line 23
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->new:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 25
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->try:Lcom/manhua/adapter/ComicRecommendAdapter;

    new-instance v2, Lcom/apk/n10;

    invoke-direct {v2, p0}, Lcom/apk/n10;-><init>(Lcom/manhua/ui/fragment/ComicDetailDataFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getSameUserBooks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getSameUserBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getSameUserBooks()Ljava/util/List;

    move-result-object v0

    .line 29
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 30
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->authorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 32
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->authorRefreshBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :cond_3
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->if:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/manhua/adapter/ComicAuthorAdapter;

    invoke-direct {v0}, Lcom/manhua/adapter/ComicAuthorAdapter;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->for:Lcom/manhua/adapter/ComicAuthorAdapter;

    .line 35
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->mAuthorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->for:Lcom/manhua/adapter/ComicAuthorAdapter;

    .line 37
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->if:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 39
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->for:Lcom/manhua/adapter/ComicAuthorAdapter;

    new-instance v1, Lcom/apk/m10;

    invoke-direct {v1, p0}, Lcom/apk/m10;-><init>(Lcom/manhua/ui/fragment/ComicDetailDataFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
