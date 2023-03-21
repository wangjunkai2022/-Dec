.class public Lcom/apk/ih;
.super Landroid/webkit/WebView;
.source "BridgeWebView.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 8
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 12
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 14
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 15
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 17
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cache"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 20
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 23
    :goto_0
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 24
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const-string p2, "utf-8"

    .line 25
    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 26
    sget-object p2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 27
    new-instance p2, Lcom/apk/gh;

    invoke-direct {p2, p0}, Lcom/apk/gh;-><init>(Lcom/apk/ih;)V

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 28
    new-instance p2, Lcom/apk/hh;

    invoke-direct {p2, p0}, Lcom/apk/hh;-><init>(Lcom/apk/ih;)V

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string p2, "searchBoxJavaBridge_"

    .line 29
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibility"

    .line 30
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    .line 31
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method


# virtual methods
.method public getWebViewListener()Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ih;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;

    return-object v0
.end method

.method public setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ih;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;

    return-void
.end method
