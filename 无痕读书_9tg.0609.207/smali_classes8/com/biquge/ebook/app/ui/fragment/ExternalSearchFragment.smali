.class public Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;
.super Lcom/apk/g6;
.source "ExternalSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

.field public fastLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ac
    .end annotation
.end field

.field public fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ad
    .end annotation
.end field

.field public final for:Lcom/apk/u5;

.field public if:Lcom/apk/v3;

.field public mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a9
    .end annotation
.end field

.field public mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b0
    .end annotation
.end field

.field public mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b4
    .end annotation
.end field

.field public mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063a
    .end annotation
.end field

.field public mWebSiteFlexLayout:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090249
    .end annotation
.end field

.field public new:Lcom/apk/final;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->for:Lcom/apk/u5;

    return-void
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x7f0c0129

    .line 5
    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09031a

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v5, Lcom/apk/mb;

    invoke-direct {v5, p0, v2}, Lcom/apk/mb;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void

    .line 11
    :cond_2
    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 4
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do(Z)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_7

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    .line 11
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    new-instance v4, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;

    invoke-direct {v4, p0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz v0, :cond_2

    .line 14
    iput-object p1, v0, Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;->do:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    const-string v4, "SP_WEB_SEARCH_FAST_OPEN_KEY"

    .line 15
    invoke-static {v4, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_7

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->if:Lcom/apk/v3;

    if-eqz v2, :cond_6

    const-string v2, ""

    const-string v3, "SP_WEB_SEARCH_FAST_URL_KEY"

    .line 21
    invoke-static {v3, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "SP_WEB_FAST_SEARCH_HOST_KEY"

    .line 23
    invoke-static {v3, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "https://souxs.leeyegy.com"

    :cond_4
    const-string v3, "/search.aspx?key={keywords}&page={page}&siteid=app3&lx=1"

    .line 25
    invoke-static {v2, v3}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    const-string v2, "{keywords}"

    .line 26
    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{page}"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->if:Lcom/apk/v3;

    if-eqz v2, :cond_6

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-wide/32 v3, 0x1b7740

    .line 29
    sget-object p1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v5, Lcom/apk/a4;

    invoke-direct {v5, v2}, Lcom/apk/a4;-><init>(Lcom/apk/v3;)V

    invoke-static {v1, v3, v4, p1, v5}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->new:Lcom/apk/final;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v0, p1, Lcom/apk/final;->if:Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz p1, :cond_3

    .line 4
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->new:Lcom/apk/final;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v0, p1, Lcom/apk/final;->if:Z

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz p1, :cond_3

    .line 8
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ba

    return v0
.end method

.method public final h()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v0}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v1}, Lcom/apk/ow;->if(Landroid/view/View;)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do(Z)V

    .line 11
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->for:Ljava/lang/String;

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    const/4 v4, 0x0

    .line 13
    :goto_0
    iget-object v5, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->if:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 14
    iget-object v7, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    aget-object v7, v7, v4

    aget-object v5, v5, v4

    .line 15
    iget-object v8, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->for:Ljava/lang/String;

    const-string v9, "{keywords}"

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 16
    iget-object v8, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->for:Ljava/lang/String;

    .line 17
    new-instance v9, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-direct {v9}, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;-><init>()V

    .line 18
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "WEBVIEW_INDEX_KEY"

    .line 19
    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "WEBVIEW_SOURCE_KEY"

    .line 20
    invoke-virtual {v10, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "WEBVIEW_NAME_KEY"

    .line 21
    invoke-virtual {v10, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "WEBVIEW_URL_KEY"

    .line 22
    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "WEBVIEW_SEARCH_KEY_KEY"

    .line 23
    invoke-virtual {v10, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    iget-object v4, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->super:Lcom/apk/kd;

    .line 26
    iput-object v4, v9, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    .line 27
    iget-object v4, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 28
    :cond_2
    iget-object v4, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v5, Lcom/apk/nz;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    .line 29
    invoke-direct {v5, v6, v7, v3}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v4, v5}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 31
    new-instance v4, Lcom/apk/e40;

    iget-object v5, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v6, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v4, v5, v6}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 32
    new-instance v5, Lcom/apk/y30;

    iget-object v6, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    iget-object v7, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    invoke-direct {v5, v2, v6, v7}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 33
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2, v3, v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if(IZ)V

    .line 34
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v2, v3, v3}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(IZ)V

    .line 35
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v1, ".php|.aspx|.asp|.jsp|.htm|.html|.com|.com.cn|.edu|.gov|.net|.org|.info|.pro|.biz|.top|.cn|.vip|.cc|.wang|.me|.tv|.tw|.net.cn|.org.cn|.la|.xin|.xyz|.shop|.site|.club|.fun|.online|.link|.wiki|.store|.tech|.pub|.live|.name|.ltd|.gov.cn                    .PHP|.ASPX|.ASP|.JSP|.HTM|.HTML|.COM|.COM.CN|.EDU|.GOV|.NET|.ORG|.INFO|.PRO|.BIZ|.TOP|.CN|.VIP|.CC|.WANG|.ME|.TV|.TW|.NET.CN|.ORG.CN|.LA|.XIN|.XYZ|.SHOP|.SITE|.CLUB|.FUN|.ONLINE|.LINK|.WIKI|.STORE|.TECH|.PUB|.LIVE|.NAME|.LTD|.GOV.CN"

    .line 36
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/lb;

    invoke-direct {v2, p0, v0}, Lcom/apk/lb;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_3
    return-void
.end method

.method public initData()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->for:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->if:Lcom/apk/v3;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP_WEB_SEARCH_HOST_KEY"

    const-string v3, ""

    .line 3
    invoke-static {v2, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "https://searchapi.apptianwangxing.com"

    :cond_0
    const-string v3, "/api/v1/Rule/GetSites?siteType=2"

    .line 5
    invoke-static {v1, v2, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    .line 6
    sget-object v4, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v5, Lcom/apk/b4;

    invoke-direct {v5, v0}, Lcom/apk/b4;-><init>(Lcom/apk/v3;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/lb;

    invoke-direct {v2, p0, v0}, Lcom/apk/lb;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 8
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->while()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/apk/final;

    invoke-direct {v0}, Lcom/apk/final;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->new:Lcom/apk/final;

    .line 10
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const v2, 0x7f0903d8

    invoke-virtual {p0, v2}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v0, v1, v2}, Lcom/apk/final;->if(Landroid/app/Activity;Landroid/view/ViewStub;)V

    :cond_2
    const/4 v0, 0x1

    .line 11
    :try_start_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/apk/finally;->public:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "rectzwsearch"

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v1}, Lcom/apk/finally;->final()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v1, v1, Lcom/apk/finally;->public:Lorg/json/JSONObject;

    invoke-static {v1, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    new-instance v3, Lcom/apk/nb;

    invoke-direct {v3, p0}, Lcom/apk/nb;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 19
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebResultLayout:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->setSearchEt(Landroid/widget/EditText;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0905e2,
            0x7f0904af,
            0x7f090244
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090244

    if-eq p1, v0, :cond_2

    const v0, 0x7f0904af

    if-eq p1, v0, :cond_1

    const v0, 0x7f0905e2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->a()Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->h()V

    goto :goto_0

    .line 4
    :cond_2
    :try_start_0
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "txt_download_search_history_key"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->new:Lcom/apk/final;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/final;->new()V

    .line 4
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->new:Lcom/apk/final;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->h()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->f(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->f(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->f(Z)V

    return-void
.end method
