.class public Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;
.super Lcom/lxj/xpopup/impl/FullScreenPopupView;
.source "AppUpgradePopupView.java"


# instance fields
.field public break:Landroid/widget/TextView;

.field public final catch:Landroid/app/Activity;

.field public final class:Z

.field public final const:I

.field public else:Landroid/widget/TextView;

.field public final final:Lcom/biquge/ebook/app/bean/NewVersionBean;

.field public goto:Landroid/widget/TextView;

.field public super:Ljava/lang/String;

.field public this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

.field public final throw:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/NewVersionBean;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;-><init>(Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->throw:Lcom/apk/bg;

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->catch:Landroid/app/Activity;

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce_user()Z

    move-result p1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->class:Z

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getXgDay_user()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->const:I

    .line 6
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c01b2

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0900b5

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->else:Landroid/widget/TextView;

    const v0, 0x7f0900b2

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->goto:Landroid/widget/TextView;

    const v0, 0x7f0900b7

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    const v0, 0x7f0900b6

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/16 v1, 0x19

    .line 6
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setButtonRadius(I)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const v1, 0x7f060093

    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setBtnTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600c7

    invoke-static {v2}, Lcom/apk/tr0;->do(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setBackgroundSecondColor(I)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-static {v2}, Lcom/apk/tr0;->do(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setmBackgroundColor(I)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const v1, 0x7f1001e6

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setState(I)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->goto:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->throw:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->throw:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_1

    .line 19
    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->class:Z

    if-eqz v2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->goto:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->else:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getTips2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getTips()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->const:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{days}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->else:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_0
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/p;->new()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this(Z)V

    .line 26
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->class:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    new-instance v1, Lcom/apk/pc;

    invoke-direct {v1, p0}, Lcom/apk/pc;-><init>(Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDestroy()V

    return-void
.end method

.method public final this(Z)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getNewVersion()I

    move-result v0

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/ze;->l(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->else:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\r\n"

    if-eqz v2, :cond_2

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getTips2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f10002d

    .line 11
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->else:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const v0, 0x7f1001f0

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const v0, 0x7f1001a5

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method
