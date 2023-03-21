.class public Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;
.super Landroid/widget/FrameLayout;
.source "AppUpgradeLayout.java"


# instance fields
.field public final break:Lcom/apk/bg;

.field public case:Z

.field public do:Landroid/widget/TextView;

.field public else:I

.field public for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

.field public goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/TextView;

.field public this:Ljava/lang/String;

.field public try:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout$do;-><init>(Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->break:Lcom/apk/bg;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01b2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->this:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->try(Z)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    if-eqz v0, :cond_0

    const v1, 0x7f100326

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public if(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/apk/ze;->return(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    long-to-int p4, p3

    invoke-virtual {v0, p4}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setMaxProgress(I)V

    .line 5
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    long-to-float p1, p1

    invoke-virtual {p3, p1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setProgress(F)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public new(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/NewVersionBean;Z)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->try:Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce_user()Z

    move-result p1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->case:Z

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getXgDay_user()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->else:I

    .line 4
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

    const p1, 0x7f0900b5

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->do:Landroid/widget/TextView;

    const p1, 0x7f0900b2

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->if:Landroid/widget/TextView;

    const p1, 0x7f0900b7

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new:Landroid/widget/TextView;

    const p1, 0x7f0900b6

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/16 p2, 0x19

    .line 9
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setButtonRadius(I)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const p2, 0x7f060093

    invoke-static {p2}, Lcom/apk/ze;->p(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setBtnTextColor(I)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0600c7

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setBackgroundSecondColor(I)V

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06003c

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setmBackgroundColor(I)V

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const p2, 0x7f1001e6

    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setState(I)V

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->if:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->break:Lcom/apk/bg;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->break:Lcom/apk/bg;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz p1, :cond_1

    .line 22
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->case:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->if:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->do:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getTips2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getTips()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->else:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{days}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->do:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_0
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/p;->new()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->this:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p2}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->try(Z)V

    .line 29
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->case:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->this:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    new-instance p2, Lcom/apk/oc;

    invoke-direct {p2, p0}, Lcom/apk/oc;-><init>(Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz p3, :cond_2

    const p1, 0x7f0900b4

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900b3

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->break:Lcom/apk/bg;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final try(Z)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getNewVersion()I

    move-result v0

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

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
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->this:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->this:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->do:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\r\n"

    if-eqz v2, :cond_2

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->goto:Lcom/biquge/ebook/app/bean/NewVersionBean;

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
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->do:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const v0, 0x7f1001f0

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const v0, 0x7f1001a5

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

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
