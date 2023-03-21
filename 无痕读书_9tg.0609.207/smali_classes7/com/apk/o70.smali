.class public Lcom/apk/o70;
.super Lcom/apk/f70;
.source "GdtProviderSplash.java"


# instance fields
.field public break:J

.field public case:Z

.field public else:Landroid/app/Activity;

.field public goto:Landroid/view/ViewGroup;

.field public this:Lcom/apk/a70;

.field public try:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    return-void
.end method

.method public static k(Lcom/apk/o70;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/apk/o70;->case:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/apk/r50$if;->do:Lcom/apk/r50;

    .line 3
    iget-object v1, p0, Lcom/apk/o70;->try:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v2, p0, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/apk/o70;->else:Landroid/app/Activity;

    .line 5
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 6
    iput-object v1, v0, Lcom/apk/r50;->goto:Lcom/qq/e/ads/splash/SplashAD;

    .line 7
    iput-object v2, v0, Lcom/apk/r50;->this:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 8
    iget-object v1, v0, Lcom/apk/r50;->class:[I

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/apk/r50;->break:I

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/apk/r50;->catch:I

    :cond_0
    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/apk/r50;->const:I

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/apk/r50;->final:I

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/apk/o70;->this:Lcom/apk/a70;

    if-eqz v0, :cond_2

    .line 14
    check-cast v0, Lcom/apk/e60$do;

    .line 15
    iget-object v0, v0, Lcom/apk/e60$do;->do:Lcom/apk/e60;

    .line 16
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0}, Lcom/apk/y60;->onZoomOut()V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/apk/o70;->this:Lcom/apk/a70;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method


# virtual methods
.method public final j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/apk/o70;->else:Landroid/app/Activity;

    .line 2
    iput-object p4, p0, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    .line 3
    iput-object p5, p0, Lcom/apk/o70;->this:Lcom/apk/a70;

    const-wide/16 v2, 0x1770

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/apk/e70;->abstract(Ljava/lang/String;)V

    .line 6
    new-instance p4, Lcom/qq/e/ads/splash/SplashAD;

    new-instance v0, Lcom/apk/o70$do;

    invoke-direct {v0, p0, p2, p5}, Lcom/apk/o70$do;-><init>(Lcom/apk/o70;Ljava/lang/String;Lcom/apk/a70;)V

    sget p2, Lcom/apk/n60$do;->if:I

    invoke-direct {p4, p1, p3, v0, p2}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    iput-object p4, p0, Lcom/apk/o70;->try:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz p6, :cond_3

    .line 7
    iget-object p1, p0, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 8
    sget-boolean p2, Lcom/apk/n60$do;->do:Z

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p4, p1}, Lcom/qq/e/ads/splash/SplashAD;->fetchFullScreenAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p4, p1}, Lcom/qq/e/ads/splash/SplashAD;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean p1, Lcom/apk/n60$do;->do:Z

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p4}, Lcom/qq/e/ads/splash/SplashAD;->fetchFullScreenAdOnly()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p4}, Lcom/qq/e/ads/splash/SplashAD;->fetchAdOnly()V

    goto :goto_0

    .line 14
    :cond_3
    sget-boolean p1, Lcom/apk/n60$do;->do:Z

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    invoke-virtual {p4, p1}, Lcom/qq/e/ads/splash/SplashAD;->fetchFullScreenAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/apk/o70;->goto:Landroid/view/ViewGroup;

    invoke-virtual {p4, p1}, Lcom/qq/e/ads/splash/SplashAD;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method
