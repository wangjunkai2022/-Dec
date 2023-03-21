.class public Lcom/apk/mh;
.super Landroid/webkit/WebChromeClient;
.source "ProgressBarWebView.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/mh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const-string p2, "File"

    .line 1
    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    return v0

    .line 3
    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 4
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x5f

    if-gt p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/mh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do:Lcom/apk/kh;

    .line 4
    invoke-virtual {p1, p2}, Lcom/apk/kh;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/apk/mh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->interface(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u7f51\u9875\u65e0\u6cd5\u6253\u5f00"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/apk/mh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try:Z

    :cond_2
    return-void
.end method
