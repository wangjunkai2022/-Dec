.class public Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;
.super Landroid/widget/RelativeLayout;
.source "ProgressBarWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;,
        Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;
    }
.end annotation


# instance fields
.field public break:Z

.field public case:Lcom/apk/o1;

.field public do:Lcom/apk/kh;

.field public else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

.field public for:Lcom/apk/re;

.field public goto:Z

.field public if:Lcom/apk/ph;

.field public new:Lcom/apk/jh;

.field public this:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lxj/xpopup/impl/LoadingPopupView;",
            ">;"
        }
    .end annotation
.end field

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/apk/kh;

    invoke-direct {v0, p1, p2}, Lcom/apk/kh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/apk/ph;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/apk/ph;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    if-nez p2, :cond_2

    .line 7
    new-instance p2, Lcom/apk/re;

    invoke-direct {p2, p1}, Lcom/apk/re;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    new-instance p2, Lcom/apk/lh;

    invoke-direct {p2, p0}, Lcom/apk/lh;-><init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V

    invoke-virtual {p1, p2}, Lcom/apk/re;->setReloadListener(Lcom/apk/re$do;)V

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    new-instance p2, Lcom/apk/mh;

    invoke-direct {p2, p0}, Lcom/apk/mh;-><init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 11
    new-instance p1, Lcom/apk/nh;

    invoke-direct {p1, p0}, Lcom/apk/nh;-><init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->new:Lcom/apk/jh;

    .line 12
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    new-instance p2, Lcom/apk/oh;

    invoke-direct {p2, p0}, Lcom/apk/oh;-><init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/apk/re;->do:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/re;->do:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/kh;->setProgress(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    check-cast v0, Lcom/apk/je;

    .line 6
    iget-object v0, v0, Lcom/apk/je;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    check-cast v0, Lcom/apk/je;

    .line 8
    iget-object v0, v0, Lcom/apk/je;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    check-cast v0, Lcom/apk/je;

    .line 10
    iget-object v0, v0, Lcom/apk/je;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    check-cast v0, Lcom/apk/je;

    .line 13
    iget-object v0, v0, Lcom/apk/je;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getProgressBar()Lcom/apk/kh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    return-object v0
.end method

.method public getWebView()Lcom/apk/ih;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    return-object v0
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic new()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDownloadListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {v0, p1}, Lcom/apk/ih;->setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;)V

    :cond_0
    return-void
.end method

.method public setInterceptRequest(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->new:Lcom/apk/jh;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, v0, Lcom/apk/jh;->do:Z

    :cond_0
    return-void
.end method

.method public setWebViewBackForwardListener(Lcom/apk/o1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    return-void
.end method

.method public setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    :cond_0
    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
