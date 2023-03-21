.class public Lcom/apk/nh;
.super Lcom/apk/jh;
.source "ProgressBarWebView.java"


# instance fields
.field public for:Z

.field public if:Z

.field public final synthetic new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-direct {p0}, Lcom/apk/jh;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/apk/nh;->if:Z

    iput-boolean v0, p0, Lcom/apk/nh;->for:Z

    .line 3
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 4
    iget-boolean v1, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->goto:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->goto:Z

    .line 15
    iget-boolean v3, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try:Z

    if-nez v3, :cond_4

    .line 16
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->goto()V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 19
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    if-eqz v0, :cond_5

    .line 20
    iget-object v3, v0, Lcom/apk/re;->do:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 21
    iget-object v3, v0, Lcom/apk/re;->do:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 24
    :cond_4
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for:Lcom/apk/re;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/apk/re;->setError(Ljava/lang/String;)V

    .line 26
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 27
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    if-nez v0, :cond_6

    .line 29
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 30
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 32
    :cond_6
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 33
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_7

    .line 34
    invoke-interface {v0, p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->instanceof(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/nh;->if:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/nh;->for:Z

    .line 4
    iget-object v1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 5
    iput-boolean v0, v1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try:Z

    .line 6
    iget-boolean v2, v1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->goto:Z

    if-nez v2, :cond_0

    .line 7
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    const/4 v2, 0x4

    .line 8
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 10
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 13
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    const/16 v2, 0xa

    .line 14
    invoke-virtual {v1, v2}, Lcom/apk/kh;->setProgress(I)V

    .line 15
    iget-object v1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 16
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 19
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_2

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->for(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 p3, 0x194

    if-ne p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 3
    iput-boolean p1, p2, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try:Z

    goto :goto_0

    :cond_0
    const/4 p3, -0x2

    if-ne p2, p3, :cond_1

    .line 4
    iget-object p2, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 5
    iput-boolean p1, p2, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try:Z

    goto :goto_0

    :cond_1
    const/4 p3, -0x8

    if-ne p2, p3, :cond_2

    .line 6
    iget-object p2, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 7
    iput-boolean p1, p2, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "url=http"

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    move-object p2, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iput-boolean v0, p0, Lcom/apk/nh;->if:Z

    .line 11
    iget-boolean v2, p0, Lcom/apk/nh;->for:Z

    if-eqz v2, :cond_4

    .line 12
    iget-object v0, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 13
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->static(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->for()V

    return v1

    :cond_4
    return v0

    .line 16
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/apk/nh;->new:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const/4 p2, 0x0

    if-eqz p1, :cond_b

    .line 17
    :try_start_1
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    const v2, 0x7f10025c

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 18
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 19
    new-instance v4, Lcom/apk/lv;

    invoke-direct {v4}, Lcom/apk/lv;-><init>()V

    .line 20
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    iput-object v5, v4, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 22
    iput-object v5, v4, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 23
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c006a

    .line 24
    sget-boolean v7, Lcom/apk/zu;->try:Z

    .line 25
    iput-boolean v7, v4, Lcom/apk/lv;->continue:Z

    .line 26
    new-instance v7, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v7, v3, v6}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-virtual {v7, v5}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 28
    iput-object v4, v7, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 29
    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    .line 30
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v2, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v2}, Lcom/lxj/xpopup/impl/LoadingPopupView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object p2, v0

    .line 33
    :cond_8
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->this:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0, p2}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    .line 35
    :cond_9
    iget-boolean p2, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->break:Z

    if-eqz p2, :cond_a

    goto :goto_3

    .line 36
    :cond_a
    iput-boolean v1, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->break:Z

    .line 37
    new-instance p2, Lcom/apk/fh;

    invoke-direct {p2, p1}, Lcom/apk/fh;-><init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, p2, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v1

    .line 39
    :cond_b
    throw p2
.end method
