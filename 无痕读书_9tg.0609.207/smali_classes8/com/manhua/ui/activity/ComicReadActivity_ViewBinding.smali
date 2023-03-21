.class public Lcom/manhua/ui/activity/ComicReadActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ComicReadActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity_ViewBinding;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 3
    const-class v0, Lcom/manhua/ui/widget/ComicReadMenuView;

    const v1, 0x7f090443

    const-string v2, "field \'mMenuView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/ComicReadMenuView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 4
    const-class v0, Lcom/manhua/ui/widget/ComicPageTitleView;

    const v1, 0x7f090448

    const-string v2, "field \'mTitleTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/ComicPageTitleView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;

    .line 5
    const-class v0, Lcom/manhua/ui/widget/PublicLoadingView;

    const v1, 0x7f09037f

    const-string v2, "field \'mLoadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const v0, 0x7f090182

    const-string v1, "field \'mNightView\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mNightView:Landroid/view/View;

    .line 7
    const-class v0, Lcom/manhua/ui/widget/ComicReaderViewpager;

    const v1, 0x7f09044d

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/ComicReaderViewpager;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 8
    const-class v0, Lcom/manhua/ui/widget/ZoomRecyclerView;

    const v1, 0x7f09044b

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/ZoomRecyclerView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 9
    const-class v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const v1, 0x7f0900a6

    const-string v2, "field \'mAdViewBanner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    iput-object p2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity_ViewBinding;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity_ViewBinding;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;

    .line 5
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 6
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mNightView:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 8
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 9
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
