.class public Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;
.super Lcom/apk/f6;
.source "UserServiceWebviewActivity.java"


# instance fields
.field public do:Ljava/lang/String;

.field public if:I

.field public loadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090237
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/q8;

    invoke-direct {v1, p0}, Lcom/apk/q8;-><init>(Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WEBVIEW_TYPE_KEY"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0059

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WEBVIEW_TITLE_KEY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->do:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "WEBVIEW_TYPE_KEY"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->if:I

    :cond_0
    const v0, 0x7f09024f

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->do:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    .line 5
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/q8;

    invoke-direct {v1, p0}, Lcom/apk/q8;-><init>(Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    return-void
.end method
