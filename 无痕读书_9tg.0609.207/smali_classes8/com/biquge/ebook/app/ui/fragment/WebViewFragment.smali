.class public Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;
.super Lcom/apk/g6;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


# instance fields
.field public do:Ljava/lang/String;

.field public for:Z

.field public if:Ljava/lang/String;

.field public mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024a
    .end annotation
.end field

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009a
    .end annotation
.end field

.field public new:Z

.field public try:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WEBVIEW_TITLE_KEY"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "WEBVIEW_URL_KEY"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    if-eqz p3, :cond_2

    const-string p1, "WEBVIEW_SHOW_TOOLBAR_KEY"

    .line 7
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "WEBVIEW_TYPE_KEY"

    .line 8
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-eqz p4, :cond_4

    const-string p1, "WEBVIEW_IS_INTERCEPT_KEY"

    .line 9
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public continue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, ".apk"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, ".APK"

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_0
    const-string p4, ".bin"

    .line 2
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public for(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00cf

    return v0
.end method

.method public goto()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    if-eqz v0, :cond_0

    const-string v0, "SP_YU_POOLS_HOST_VALUE_KEY"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:getRdomYu(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\');"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->try:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->goto()V

    :cond_2
    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    const-string v2, "azhandler"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    const-string v2, "sandeshandler"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    const-string v2, "userhandler"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    const-string v2, "contenthandler"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    const-string v2, "readhandler"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    const-string v2, "varlogin"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setDownloadListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;)V

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->synchronized()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->do:Ljava/lang/String;

    const-string v1, "WEBVIEW_URL_KEY"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->if:Ljava/lang/String;

    const-string v1, "WEBVIEW_TYPE_KEY"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->for:Z

    const-string v1, "WEBVIEW_SHOW_TOOLBAR_KEY"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09024c

    .line 7
    invoke-virtual {p0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09024b

    .line 8
    invoke-virtual {p0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->do:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "WEBVIEW_IS_INTERCEPT_KEY"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->new:Z

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 12
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V

    return-void
.end method

.method public instanceof(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public interface(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->try:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->interface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->public(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public static(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synchronized()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->if:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->if:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text/html; charset=UTF-8"

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->if:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
