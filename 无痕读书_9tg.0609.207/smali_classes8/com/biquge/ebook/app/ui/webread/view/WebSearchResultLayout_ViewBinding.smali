.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;
.super Ljava/lang/Object;
.source "WebSearchResultLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 3
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f090642

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 4
    const-class v0, Lcom/shizhefei/view/viewpager/SViewPager;

    const v1, 0x7f090649

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/viewpager/SViewPager;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const v0, 0x7f0901db

    const-string v1, "field \'mBgView\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090616

    const-string v2, "field \'mWebSiteLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090637

    const-string v2, "field \'mPlatformIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090638

    const-string v2, "field \'mPlatformName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformName:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09063b

    const-string v2, "field \'mSearchResultTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mSearchResultTv:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09011d

    const-string v2, "field \'mShowBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mShowBtn:Landroid/widget/TextView;

    .line 11
    const-class v0, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    const v1, 0x7f090617

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    .line 12
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09011c

    const-string v2, "field \'mHideLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f09011b

    const-string v1, "field \'mHideBtn\' and method \'menuClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mHideBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideBtn:Landroid/widget/TextView;

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->if:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09011f

    const-string v2, "field \'mHideTipView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideTipView:Landroid/widget/TextView;

    const v0, 0x7f09011e

    const-string v1, "method \'menuClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->for:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformIcon:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mPlatformName:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mSearchResultTv:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mShowBtn:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    .line 12
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideLayout:Landroid/widget/FrameLayout;

    .line 13
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideBtn:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mHideTipView:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->if:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout_ViewBinding;->for:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
