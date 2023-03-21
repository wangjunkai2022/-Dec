.class public Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;
.super Lcom/apk/f6;
.source "WebReadActivity.java"


# instance fields
.field public break:Lcom/apk/c60;

.field public case:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final catch:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

.field public class:Z

.field public do:Ljava/lang/String;

.field public else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

.field public for:Z

.field public goto:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a6
    .end annotation
.end field

.field public mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041f
    .end annotation
.end field

.field public new:Z

.field public this:Z

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->this:Z

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->catch:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->m(Z)V

    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->k(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WEBVIEW_SITE_OPEN_URL_KEY"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_IS_ZHUANMA_KEY"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_IS_DEFAULT_JS_KEY"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_IS_OPEN_DOWNLOAD_KEY"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SOURCE_VALUE_KEY"

    .line 6
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_SOURCE_KEY"

    const/4 p2, 0x1

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;ZZLcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WEBVIEW_SITE_OPEN_URL_KEY"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_IS_ZHUANMA_KEY"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_IS_DEFAULT_JS_KEY"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_IS_OPEN_DOWNLOAD_KEY"

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SITE_SOURCE_SHELF_KEY"

    .line 6
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "WEBVIEW_SOURCE_VALUE_KEY"

    const-string p2, "\u4e66\u67b6"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c005f

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->do:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->for:Z

    iget-boolean v3, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->new:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->catch(Ljava/lang/String;ZZZ)V

    .line 3
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->try:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->for:Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 7
    iget-object v2, v0, Lcom/apk/finally;->default:Lorg/json/JSONObject;

    const-string v3, "bannerzhanwai"

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v0, v0, Lcom/apk/finally;->default:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0, p0, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->for(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "WEBVIEW_SITE_OPEN_URL_KEY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->do:Ljava/lang/String;

    const-string v1, "WEBVIEW_SITE_IS_ZHUANMA_KEY"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->for:Z

    const-string v1, "WEBVIEW_SITE_IS_DEFAULT_JS_KEY"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->new:Z

    const-string v1, "WEBVIEW_SITE_IS_OPEN_DOWNLOAD_KEY"

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->try:Z

    const-string v1, "WEBVIEW_SITE_SOURCE_SHELF_KEY"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->case:Lcom/biquge/ebook/app/bean/CollectBook;

    :cond_0
    const-string v1, "WEBVIEW_SOURCE_VALUE_KEY"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->if:Ljava/lang/String;

    const-string v1, "WEBVIEW_SITE_SOURCE_KEY"

    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->for:Z

    if-eqz v0, :cond_2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getWebView()Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setInterceptRequest(Z)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SP_WEBVIEW_CACHE_MODE_TODAY_KEY"

    const-string v4, ""

    .line 14
    invoke-static {v3, v4}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    new-instance v1, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$do;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->setWebCodeCallback(Lcom/apk/jd;)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->catch:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V

    return-void
.end method

.method public isDarkFont()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    const v0, 0x7f090444

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->try:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/n0;->else()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setTitle(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/n0;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setDes(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/n0;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setAdBtnTxt(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/n0;->case()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setShareBtnTxt(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    new-instance v2, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$for;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$for;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setOnRewardBtnCallback(Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if(Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x27e5

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->m(Z)V

    .line 3
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object p2

    new-array p3, p3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lcom/apk/n0;->try()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    const p1, 0x7f1002a0

    invoke-static {p1, p3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/apk/eg;->h(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    .line 6
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/a1;->catch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->m(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->goto:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new()V

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->class:Z

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mWebContentView:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 9
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/ze;->public(Landroid/webkit/WebView;)V

    .line 10
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v2

    .line 11
    iput-boolean v0, v2, Lcom/apk/a1;->package:Z

    .line 12
    iput-boolean v0, v2, Lcom/apk/n0;->break:Z

    .line 13
    iget-object v0, v2, Lcom/apk/n0;->default:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 15
    :cond_3
    sput-object v1, Lcom/apk/a1;->private:Lcom/apk/a1;

    .line 16
    iget v0, v2, Lcom/apk/n0;->return:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CACHE_WEB_AD_KEY"

    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/apk/n0;->this:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/apk/a1;->package:Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/apk/a1;->package:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->this:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->for:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->this:Z

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/apk/finally;->for:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "page_web_insert"

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/apk/finally;->super(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v0, Lcom/apk/finally;->for:Lorg/json/JSONObject;

    const-string v4, "showInterval"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 7
    iget-object v4, v0, Lcom/apk/finally;->for:Lorg/json/JSONObject;

    const-string v5, "maxcount"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 8
    invoke-static {v3, v1, v4}, Lcom/apk/i;->new(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, v0, Lcom/apk/finally;->for:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lcom/apk/c60;

    new-instance v0, Lcom/apk/yd;

    invoke-direct {v0, p0, v3}, Lcom/apk/yd;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0, v3}, Lcom/apk/c60;-><init>(Landroid/app/Activity;Lcom/apk/v60;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->break:Lcom/apk/c60;

    .line 11
    invoke-virtual {p1}, Lcom/apk/c60;->try()V

    :cond_1
    return-void
.end method
