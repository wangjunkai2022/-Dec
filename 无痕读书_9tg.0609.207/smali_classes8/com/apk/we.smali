.class public Lcom/apk/we;
.super Ljava/lang/Object;
.source "WebSearchResultLayout.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/we;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/we;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/apk/we;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 3
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/apk/we;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/apk/we;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 8
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 10
    iget-object v2, p0, Lcom/apk/we;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 11
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->for:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12
    new-instance v3, Lcom/apk/b1;

    invoke-direct {v3}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/ae;

    invoke-direct {v4, v1, v2, v0}, Lcom/apk/ae;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
