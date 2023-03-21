.class public Lcom/biquge/ebook/app/ui/activity/WebViewActivity;
.super Lcom/apk/f6;
.source "WebViewActivity.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "WEBVIEW_URL_KEY"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0060

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0003

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->if:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->for:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v2, v2}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/activity/WebViewActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/WebViewActivity;)V

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->try:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09024e

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->if:Ljava/lang/String;

    const-string v1, "WEBVIEW_URL_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->for:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->if:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->onBackPressed()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->onBackPressed()V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f090084

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900d8

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08034d

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
