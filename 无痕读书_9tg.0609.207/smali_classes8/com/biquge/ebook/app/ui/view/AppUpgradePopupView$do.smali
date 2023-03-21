.class public Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;
.super Lcom/apk/bg;
.source "AppUpgradePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900b6

    if-ne p1, v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getFile()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->catch:Landroid/app/Activity;

    .line 10
    invoke-static {v0, p1}, Lcom/apk/eg;->abstract(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 12
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 14
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getNewVersion()I

    move-result p1

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 16
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 17
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/ze;->l(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 19
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->catch:Landroid/app/Activity;

    .line 20
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->final:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 21
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apk/ze;->g0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 23
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 25
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    .line 26
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 28
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->catch:Landroid/app/Activity;

    .line 29
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/apk/ze;->z(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 31
    :cond_4
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 32
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->catch:Landroid/app/Activity;

    .line 33
    invoke-virtual {p1, v0}, Lcom/apk/p;->else(Landroid/app/Activity;)V

    :cond_5
    :goto_0
    return-void
.end method
