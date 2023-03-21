.class public Lcom/expand/videoplayer/ui/PlayWebViewActivity;
.super Lcom/apk/f6;
.source "PlayWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;
    }
.end annotation


# instance fields
.field public case:Lcom/apk/yt;

.field public do:Landroid/webkit/WebView;

.field public else:Lcom/apk/iu;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field public mLoadingView:Lcom/biquge/ebook/app/widget/AppProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field public mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "WEBVIEW_URL_KEY"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "WEBVIEW_REQUEST_URL_KEY"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "WEBVIEW_SOURCE_TYPE_KEY"

    .line 9
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c005a

    return v0
.end method

.method public i(Z)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 3
    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->setListenUrl(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    const-string v2, "vPlay"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    const-string v2, "aPlay"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;-><init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-static {p0}, Lcom/apk/iu;->super(Landroid/app/Activity;)Lcom/apk/iu;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->else:Lcom/apk/iu;

    .line 4
    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/apk/cu;->goto:Z

    const v1, 0x106000c

    .line 5
    iget-object v2, v0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 6
    iget-object v2, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput v1, v2, Lcom/apk/cu;->do:I

    .line 7
    invoke-virtual {v0}, Lcom/apk/iu;->else()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "WEBVIEW_URL_KEY"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->if:Ljava/lang/String;

    const-string v1, "WEBVIEW_REQUEST_URL_KEY"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->for:Ljava/lang/String;

    const-string v1, "WEBVIEW_SOURCE_TYPE_KEY"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->new:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    .line 14
    new-instance v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;-><init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 15
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    new-instance v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;-><init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    new-instance v0, Lcom/apk/yt;

    new-instance v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity$if;

    invoke-direct {v1, p0}, Lcom/expand/videoplayer/ui/PlayWebViewActivity$if;-><init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/apk/yt;-><init>(Landroid/app/Activity;Lcom/apk/xt;)V

    iput-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->case:Lcom/apk/yt;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->i(Z)V

    return-void
.end method

.method public isImmersionBarEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/u0;->if()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p0, v2, v2, v2}, Lcom/apk/u0;->for(Landroid/app/Activity;ZZZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x800

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 6
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/u0;->if()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7
    invoke-static {p0, p1, p1, v2}, Lcom/apk/u0;->for(Landroid/app/Activity;ZZZ)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p0}, Lcom/apk/f6;->setWindowStatusBarColor(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->try:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->mLoadingView:Lcom/biquge/ebook/app/widget/AppProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f100177

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/expand/videoplayer/ui/PlayWebViewActivity$new;

    invoke-direct {v2, p0}, Lcom/expand/videoplayer/ui/PlayWebViewActivity$new;-><init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/apk/eg;->i(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    const-string v1, "javascript:canBack()"

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->try:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->k(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->try:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->k(Z)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->i(Z)V

    .line 2
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->public(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->case:Lcom/apk/yt;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/yt;->if:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->case:Lcom/apk/yt;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/yt;->if:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const-string v1, "javascript:triggerSave()"

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
