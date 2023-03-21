.class public Lcom/apk/tg;
.super Landroid/widget/FrameLayout;
.source "ReadContentAdView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public do(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    sget v0, Lcom/apk/bf;->for:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->extends()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 7
    iget-object v3, p1, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v4, 0x0

    .line 9
    invoke-direct {v3, v0, v4}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    invoke-virtual {v3, v1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    .line 11
    iput-boolean v2, v3, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->this:Z

    const-string v1, "insertstsw2"

    .line 12
    invoke-virtual {v3, v0, v4, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->do()V

    .line 15
    :goto_0
    iget-object p1, p1, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 16
    invoke-static {p0, p1}, Lcom/apk/d;->if(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/apk/tg;->if()V

    :goto_1
    return v2

    .line 18
    :cond_2
    sget v0, Lcom/apk/bf;->new:I

    if-lt p1, v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/apk/tg;->if()V

    return v2

    :cond_3
    return v1
.end method

.method public final if()V
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->throw()Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/finally;->default()Z

    move-result v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 5
    sget-object v2, Lcom/apk/dg;->do:Ljava/util/Random;

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/d;->new(Landroid/app/Activity;)Lcom/apk/b;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Lcom/apk/d;->for(Landroid/app/Activity;)Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lcom/apk/d;->for(Landroid/app/Activity;)Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Lcom/apk/d;->new(Landroid/app/Activity;)Lcom/apk/b;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 11
    invoke-static {p0, v0}, Lcom/apk/d;->if(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_4
    return-void
.end method
