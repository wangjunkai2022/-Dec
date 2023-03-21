.class public Lcom/swl/gg/ggs/SwlAdBesttopView$3;
.super Ljava/lang/Object;
.source "SwlAdBesttopView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdBesttopView;->initAds(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdBesttopView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$400(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getPkg()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getOpentype()Ljava/lang/String;

    move-result-object p2

    const-string p3, "apk"

    .line 7
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p2, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-static {p2, v0, p3, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "inner_page"

    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    iget-object p2, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p3, "browser_page"

    .line 11
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    iget-object p2, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method
