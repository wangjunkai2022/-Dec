.class public Lcom/biquge/ebook/app/ui/webread/ui/WebBookDetailActivity;
.super Lcom/apk/f6;
.source "WebBookDetailActivity.java"

# interfaces
.implements Lcom/apk/jd;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

.field public mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebBook;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/webread/ui/WebBookDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_WEB_BOOK_KEY"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public continue()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c005e

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_WEB_BOOK_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebBookDetailActivity;->do:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebBookDetailActivity;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 4
    iput-object p0, v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    .line 5
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->new()V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebBookDetailActivity;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->setWebCodeCallback(Lcom/apk/jd;)V

    return-void
.end method

.method public initView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    return-void
.end method

.method public isDarkFont()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
