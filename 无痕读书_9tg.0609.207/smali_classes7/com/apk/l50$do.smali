.class public Lcom/apk/l50$do;
.super Ljava/lang/Object;
.source "CsjProviderSplash.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/l50;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/l50;

.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/apk/a70;

.field public final synthetic new:Landroid/app/Activity;

.field public final synthetic try:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/apk/l50;Ljava/lang/String;Lcom/apk/a70;ZLandroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iput-object p2, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    iput-boolean p4, p0, Lcom/apk/l50$do;->for:Z

    iput-object p5, p0, Lcom/apk/l50$do;->new:Landroid/app/Activity;

    iput-object p6, p0, Lcom/apk/l50$do;->try:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iget-object v1, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    .line 5
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object p1, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iget-object v0, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    const v2, 0x1443e

    const-string v3, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684\u5e7f\u544a\u4e3anull"

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/apk/l50$do$do;

    invoke-direct {v0, p0}, Lcom/apk/l50$do$do;-><init>(Lcom/apk/l50$do;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    .line 7
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 8
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 9
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iget-object v1, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->package(Ljava/lang/String;Lcom/apk/a70;)V

    .line 11
    iget-boolean v0, p0, Lcom/apk/l50$do;->for:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 13
    iget-object v1, v0, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 16
    iget-object v0, v0, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    .line 17
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    iget-object v2, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iget-object v3, p0, Lcom/apk/l50$do;->new:Landroid/app/Activity;

    iget-object v5, p0, Lcom/apk/l50$do;->try:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v7, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/apk/l50;->k(Lcom/apk/l50;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/apk/a70;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object p1

    .line 20
    iput-object p1, v0, Lcom/apk/l50;->else:Landroid/view/View;

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 22
    iget-object v0, v0, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 25
    iget-object v0, v0, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    .line 26
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    iget-object v2, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iget-object v3, p0, Lcom/apk/l50$do;->new:Landroid/app/Activity;

    iget-object v5, p0, Lcom/apk/l50$do;->try:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v7, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/apk/l50;->k(Lcom/apk/l50;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/apk/a70;)V

    :goto_0
    return-void
.end method

.method public onTimeout()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    iget-object v1, p0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    const v3, 0x1443d

    const-string v4, "csj onTimeout"

    .line 5
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method
