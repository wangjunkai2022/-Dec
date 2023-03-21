.class public Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;
.super Lcom/apk/g6;
.source "WebSiteSearchFragment.java"


# instance fields
.field public final break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;"
        }
    .end annotation
.end field

.field public case:Lcom/apk/kd;

.field public catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;>;"
        }
    .end annotation
.end field

.field public class:I

.field public const:Z

.field public do:Z

.field public else:I

.field public final final:Ljava/lang/Runnable;

.field public for:I

.field public goto:Z

.field public if:I

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063d
    .end annotation
.end field

.field public mBgView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090098
    .end annotation
.end field

.field public mIndeterminateView:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063c
    .end annotation
.end field

.field public mPlatfromTitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090639
    .end annotation
.end field

.field public mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090099
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public this:I

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->do:Z

    .line 3
    iput v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->for:I

    .line 4
    iput v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->break:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->final:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ce

    return v0
.end method

.method public initData()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "WEBVIEW_INDEX_KEY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    const-string v1, "WEBVIEW_SOURCE_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->for:I

    const-string v1, "WEBVIEW_SEARCH_KEY_KEY"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WEBVIEW_NAME_KEY"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->new:Ljava/lang/String;

    const-string v2, "WEBVIEW_URL_KEY"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->try:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://"

    .line 9
    invoke-static {v3, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_0
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mPlatfromTitleTv:Landroid/widget/TextView;

    const v2, 0x7f1003fc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->new:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 12
    invoke-virtual {v5}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 13
    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->for:I

    .line 15
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    new-instance v3, Lcom/apk/ae;

    invoke-direct {v3, p0, v1, v0}, Lcom/apk/ae;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->do:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setInterceptRequest(Z)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    new-instance v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mBgView:Landroid/view/View;

    new-instance v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$if;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->public(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public synthetic synchronized(Lcom/apk/g1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mIndeterminateView:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;->new()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
