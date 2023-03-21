.class public Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;
.super Lcom/apk/bg;
.source "SwlAdBesttopTwoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getPkg()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getOpentype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object p1

    const-string v2, "2"

    invoke-static {v0, v2, v1, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "inner_page"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "browser_page"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method
