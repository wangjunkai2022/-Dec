.class public Lcom/apk/ne;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ne;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ne;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ne;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 5
    iget-boolean v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/apk/ne;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 8
    iget-object v0, p0, Lcom/apk/ne;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    :cond_0
    return-void
.end method
