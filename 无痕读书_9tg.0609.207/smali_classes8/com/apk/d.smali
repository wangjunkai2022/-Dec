.class public Lcom/apk/d;
.super Ljava/lang/Object;
.source "ReadAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/d$do;
    }
.end annotation


# instance fields
.field public do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public if:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/biquge/ebook/app/ad/ads/AdViewBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/apk/strictfp;->setAdWidth(I)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    const-wide/16 v2, 0x7d0

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->setIntervalTime(J)V

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->this:Z

    if-eqz p3, :cond_0

    const-string p3, "chaptersmid_mh2"

    goto :goto_0

    :cond_0
    const-string p3, "chaptersmid2"

    .line 8
    :goto_0
    invoke-virtual {v0, p1, v1, p3}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->do()V

    .line 12
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 13
    invoke-static {p2, p1}, Lcom/apk/d;->if(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public for(Landroid/app/Activity;)Lcom/biquge/ebook/app/ad/ads/AdViewBanner;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    const-string v1, "bannerlastpage2"

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->for(Landroid/app/Activity;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->do()V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    return-object p1
.end method

.method public final new(Landroid/app/Activity;)Lcom/apk/b;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/apk/finally;->abstract:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/apk/b;

    invoke-direct {v1, p1}, Lcom/apk/b;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/apk/finally;->abstract:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, v1, Lcom/apk/b;->try:Landroid/app/Activity;

    .line 7
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v3, Lcom/apk/synchronized;

    invoke-direct {v3, v1, v2, v0}, Lcom/apk/synchronized;-><init>(Lcom/apk/b;Lorg/json/JSONObject;Lcom/apk/d1;)V

    invoke-virtual {p1, v3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new()V

    .line 3
    iput-object v1, p0, Lcom/apk/d;->if:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    .line 6
    iput-object v1, p0, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    .line 9
    iput-object v1, p0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method
