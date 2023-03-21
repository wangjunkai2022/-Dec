.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;
.super Landroid/widget/FrameLayout;
.source "WebSearchResultLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;
    }
.end annotation


# instance fields
.field public break:I

.field public case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

.field public final catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;"
        }
    .end annotation
.end field

.field public class:I

.field public const:Landroid/widget/FrameLayout$LayoutParams;

.field public do:[Ljava/lang/String;

.field public else:Landroid/widget/EditText;

.field public final:Z

.field public for:Ljava/lang/String;

.field public goto:Z

.field public if:[Ljava/lang/String;

.field public mBgView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901db
    .end annotation
.end field

.field public mHideBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011b
    .end annotation
.end field

.field public mHideLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011c
    .end annotation
.end field

.field public mHideTipView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011f
    .end annotation
.end field

.field public mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090642
    .end annotation
.end field

.field public mPlatformIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090637
    .end annotation
.end field

.field public mPlatformName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090638
    .end annotation
.end field

.field public mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090617
    .end annotation
.end field

.field public mSearchResultTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063b
    .end annotation
.end field

.field public mShowBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011d
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090649
    .end annotation
.end field

.field public mWebSiteLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090616
    .end annotation
.end field

.field public new:I

.field public final super:Lcom/apk/kd;

.field public this:I

.field public try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->final:Z

    .line 4
    new-instance p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    invoke-direct {p2, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->super:Lcom/apk/kd;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c01d0

    invoke-virtual {p2, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    :try_start_0
    const-string p2, "SP_EXTERNAL_SITES_KEY"

    const-string v1, "[{\"srh_name\":\"\u641c\u72d7\",\"srh_url\":\"https://wap.sogou.com/web/searchList.jsp?keyword={keywords}&prs=8&rfh=1\"},{\"srh_name\":\"\u767e\u5ea6\",\"srh_url\":\"https://m.baidu.com/s?word={keywords}\"},{\"srh_name\":\"\u5fc5\u5e94\",\"srh_url\":\"https://www.bing.com/search?q={keywords}\"},{\"srh_name\":\"\u5934\u6761\",\"srh_url\":\"https://m.toutiao.com/search?keyword={keywords}&source=input&pd=synthesis&original_source=\"}]"

    .line 7
    invoke-static {p2, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->if:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 13
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    const-string v4, "srh_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    .line 15
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->if:[Ljava/lang/String;

    const-string v4, "srh_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p2, p1}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    .line 18
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 19
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->if:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 20
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/apk/se;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/apk/h40$do;->case:Lcom/apk/h40$do;

    const v4, 0x7f08022e

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/apk/se;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;Landroid/content/Context;ILcom/apk/h40$do;)V

    invoke-virtual {p2, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setScrollBar(Lcom/apk/h40;)V

    .line 21
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/apk/i40;

    invoke-direct {v1}, Lcom/apk/i40;-><init>()V

    const v2, 0x7f060093

    .line 22
    invoke-virtual {v1, v2, v2}, Lcom/apk/i40;->for(II)Lcom/apk/i40;

    const/high16 v2, 0x41480000    # 12.5f

    .line 23
    invoke-virtual {v1, v2, v2}, Lcom/apk/i40;->new(FF)Lcom/apk/i40;

    .line 24
    invoke-virtual {p2, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/apk/b40$try;)V

    .line 25
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/ReadLinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/view/ReadLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-static {p2}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v1, Lcom/apk/te;

    invoke-direct {v1, p0}, Lcom/apk/te;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 29
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    new-instance v1, Lcom/apk/ee;

    invoke-direct {v1, p0}, Lcom/apk/ee;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 30
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mSearchResultTv:Landroid/widget/TextView;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const v0, 0x7f1003fb

    invoke-static {v0, p1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    new-instance p2, Lcom/apk/ue;

    invoke-direct {p2, p0}, Lcom/apk/ue;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->setSlideCallback(Lcom/biquge/ebook/app/ui/view/SlideRecyclerView$do;)V

    .line 32
    new-instance p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    .line 33
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    new-instance p2, Lcom/apk/ve;

    invoke-direct {p2, p0}, Lcom/apk/ve;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 35
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    new-instance p2, Lcom/apk/we;

    invoke-direct {p2, p0}, Lcom/apk/we;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private getIndexSize()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 4
    iget v0, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :catch_1
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private setDialogBgAlpha(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v0

    const/4 v0, 0x1

    aput v2, v4, v0

    const-string v0, "alpha"

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setSiteDialog(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    check-cast v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mBgView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 5
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final case(IIZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string p1, "height"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    int-to-long v0, p2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance p2, Lcom/apk/de;

    invoke-direct {p2, p0}, Lcom/apk/de;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;

    invoke-direct {p2, p0, p3, p4}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;ZZ)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public do(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 4
    check-cast v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->public(Landroid/webkit/WebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto:Z

    .line 15
    iput p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->break:I

    .line 16
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto(IIZZ)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try(ILjava/util/List;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 18
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final else()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->getIndexSize()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->this:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x41

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto(IIZZ)V

    return-void
.end method

.method public synthetic for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->new:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->class:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->class:I

    :cond_0
    return-void
.end method

.method public final goto(IIZZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->break:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->break:I

    const/high16 v0, 0x428c0000    # 70.0f

    .line 3
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    mul-int v0, v0, p1

    .line 4
    iget v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->new:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case(IIZZ)V

    .line 5
    iput p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->this:I

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->setDialogBgAlpha(Z)V

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideLayout:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mShowBtn:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->setSiteDialog(Z)V

    return-void
.end method

.method public final if()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->this:I

    mul-int/lit8 v0, v0, 0x3c

    .line 2
    iget v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->new:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case(IIZZ)V

    .line 3
    invoke-direct {p0, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->setDialogBgAlpha(Z)V

    .line 4
    iput v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->this:I

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mShowBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-direct {p0, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->setSiteDialog(Z)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->setCallScrollUp(Z)V

    .line 10
    iput v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->break:I

    const-string v0, "SP_SHOW_WEB_SCALING_POPUP_KEY"

    .line 11
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 14
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 15
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 16
    iput-object v1, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 17
    new-instance v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchScalingGuidePopupView;

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchScalingGuidePopupView;-><init>(Landroid/content/Context;)V

    .line 19
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_0

    .line 20
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 22
    :cond_0
    instance-of v2, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_1

    .line 23
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 24
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 25
    :cond_1
    instance-of v2, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_2

    .line 26
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 27
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 28
    :cond_2
    instance-of v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_3

    .line 29
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 30
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 31
    :cond_3
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 32
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 33
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 34
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_4
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09011e,
            0x7f09011b
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09011e

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mShowBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto:Z

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09011b

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto:Z

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->if()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic new(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->const:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->const:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->const:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->const:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->break:I

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->closeLoadAnimation()V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->setCallScrollUp(Z)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideTipView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    new-instance v2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;I)V

    .line 14
    iget-object p1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mIndeterminateView:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    if-eqz p1, :cond_2

    .line 15
    iget-object v3, p1, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;->continue:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x65

    .line 16
    iput v4, v3, Landroid/os/Message;->what:I

    .line 17
    iget-object v4, p1, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;->continue:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    new-instance v0, Lcom/apk/ud;

    invoke-direct {v0, v1, v2}, Lcom/apk/ud;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;Lcom/apk/g1;)V

    .line 20
    sget-object v1, Lcom/apk/dg;->do:Ljava/util/Random;

    const/16 v2, 0x1f4

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mSearchResultTv:Landroid/widget/TextView;

    const v0, 0x7f1003f6

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/ow;->if(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setSearchEt(Landroid/widget/EditText;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else:Landroid/widget/EditText;

    :cond_0
    return-void
.end method

.method public final try(ILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    iget-boolean v1, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->goto:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v1, v2

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    aget-object p1, v3, p1

    .line 6
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformName:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u641c\u72d7"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    const v3, 0x7f080348

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    const-string v3, "\u767e\u5ea6"

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    const v3, 0x7f080342

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    const-string v3, "\u5fc5\u5e94"

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    const v3, 0x7f080343

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    const-string v3, "\u5934\u6761"

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    const v3, 0x7f080349

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    const-string v3, "360"

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v5, 0x7f080345

    if-eqz v3, :cond_6

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    const-string v3, "\u795e\u9a6c"

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    const v3, 0x7f080347

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    goto :goto_3

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    goto :goto_4

    .line 21
    :cond_8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1, v4}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    :goto_4
    const/4 p1, 0x4

    if-eqz p2, :cond_a

    .line 22
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz v3, :cond_9

    .line 23
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    if-eqz v2, :cond_c

    .line 25
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    .line 26
    iput-boolean v4, p2, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->new:Z

    .line 27
    invoke-virtual {p2, v4}, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->setCallScrollUp(Z)V

    .line 28
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideBtn:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideTipView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    .line 30
    :try_start_2
    iget-object p2, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->break:Ljava/util/List;

    if-eqz p2, :cond_b

    .line 31
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 32
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_5
    if-nez v2, :cond_c

    .line 35
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideTipView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_6
    if-eqz v1, :cond_d

    .line 37
    :try_start_3
    iget p1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 38
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mSearchResultTv:Landroid/widget/TextView;

    const v1, 0x7f1003fb

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_d
    :goto_7
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto:Z

    if-nez p1, :cond_e

    .line 41
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else()V

    :cond_e
    return v2
.end method
