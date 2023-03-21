.class public Lcom/apk/ke;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->for(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public goto()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->goto()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 5
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->class:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->class:Z

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 11
    iget-boolean v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->try(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public instanceof(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->instanceof(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    if-eqz p1, :cond_6

    const-string p2, "SP_SHOW_WEB_READ_JS_POPUP_KEY"

    const/4 v0, 0x1

    .line 5
    invoke-static {p2, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 6
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, p2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    new-instance p2, Lcom/apk/lv;

    invoke-direct {p2}, Lcom/apk/lv;-><init>()V

    .line 9
    sget-object v0, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 10
    iput-object v0, p2, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebMenuGuidePopupView;

    .line 12
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebMenuGuidePopupView;-><init>(Landroid/content/Context;)V

    .line 13
    instance-of p1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p1, :cond_1

    .line 14
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_1
    instance-of p1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p1, :cond_2

    .line 17
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_2
    instance-of p1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p1, :cond_3

    .line 20
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 22
    :cond_3
    instance-of p1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p1, :cond_4

    .line 23
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 24
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 25
    :cond_4
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 26
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    .line 27
    :goto_0
    iput-object p2, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 28
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_5
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public interface(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->interface(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v2, Lcom/apk/ce;

    invoke-direct {v2, p1, v1}, Lcom/apk/ce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->class(Ljava/lang/String;ZZ)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public static(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;->static(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/ke$do;

    invoke-direct {v1, p0, p2, p1}, Lcom/apk/ke$do;-><init>(Lcom/apk/ke;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method
