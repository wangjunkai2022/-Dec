.class public Lcom/biquge/ebook/app/ad/ads/AdViewBanner;
.super Lcom/apk/strictfp;
.source "AdViewBanner.java"


# instance fields
.field public break:Z

.field public case:Ljava/lang/String;

.field public catch:J

.field public class:Lcom/apk/a60;

.field public const:Lcom/swl/gg/ggs/SwlAdAdBanner;

.field public else:Z

.field public final:I

.field public goto:J

.field public new:Lcom/apk/strictfp$do;

.field public this:Z

.field public try:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/strictfp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    .line 3
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->break:Z

    const-string p1, "#05000000"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public static if(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 11
    throw p0
.end method


# virtual methods
.method public do()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->goto:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/apk/strictfp;->for:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/strictfp$do;

    invoke-direct {v0, p0}, Lcom/apk/strictfp$do;-><init>(Lcom/apk/strictfp;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->goto:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->catch:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->goto:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->catch:J

    .line 9
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    if-nez v0, :cond_6

    .line 13
    new-instance v0, Lcom/apk/a60;

    iget-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->try:Landroid/app/Activity;

    new-instance v2, Lcom/apk/protected;

    invoke-direct {v2, p0}, Lcom/apk/protected;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;)V

    iget-object v3, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/a60;-><init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->break:Z

    .line 15
    iget-object v0, v0, Lcom/apk/a60;->new:Lcom/apk/k50;

    if-eqz v0, :cond_7

    .line 16
    iput-boolean v1, v0, Lcom/apk/k50;->do:Z

    .line 17
    iget-object v0, v0, Lcom/apk/k50;->try:Lcom/apk/p60;

    if-eqz v0, :cond_7

    .line 18
    iput-boolean v1, v0, Lcom/apk/p60;->try:Z

    .line 19
    iget-object v0, v0, Lcom/apk/p60;->case:Lcom/apk/w50;

    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {v0, v1}, Lcom/apk/w50;->setThemeDayNight(Z)V

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 22
    invoke-static {}, Lcom/apk/q70;->do()Lcom/apk/q70;

    move-result-object v2

    iget-object v3, v0, Lcom/apk/p70;->do:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/apk/q70;->if(Ljava/lang/String;)Lcom/apk/c50;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 23
    invoke-virtual {v2}, Lcom/apk/c50;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/apk/c50;->do()Ljava/lang/String;

    move-result-object v4

    .line 24
    iget v5, v2, Lcom/apk/c50;->for:I

    .line 25
    iget v2, v2, Lcom/apk/c50;->new:I

    .line 26
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/apk/a60;->try(Ljava/lang/String;Ljava/lang/String;II)V

    .line 27
    :cond_8
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    .line 28
    :cond_9
    throw v1

    .line 29
    :cond_a
    throw v1
.end method

.method public for(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->try:Landroid/app/Activity;

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->case:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 4
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x40c66666    # 6.2f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 5
    iput p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->final:I

    .line 6
    invoke-static {p2}, Lcom/apk/i;->if(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->goto:J

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->do()V

    return-void
.end method

.method public new()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->const:Lcom/swl/gg/ggs/SwlAdAdBanner;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdAdBanner;->onDestroy()V

    .line 4
    iput-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->const:Lcom/swl/gg/ggs/SwlAdAdBanner;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/a60;->case()V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new:Lcom/apk/strictfp$do;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    const/high16 p2, 0x40000000    # 2.0f

    .line 1
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->final:I

    .line 2
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setThemeDayNight(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->break:Z

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->class:Lcom/apk/a60;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/a60;->new:Lcom/apk/k50;

    if-eqz v0, :cond_0

    .line 4
    iput-boolean p1, v0, Lcom/apk/k50;->do:Z

    .line 5
    iget-object v0, v0, Lcom/apk/k50;->try:Lcom/apk/p60;

    if-eqz v0, :cond_0

    .line 6
    iput-boolean p1, v0, Lcom/apk/p60;->try:Z

    .line 7
    iget-object v0, v0, Lcom/apk/p60;->case:Lcom/apk/w50;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/apk/w50;->setThemeDayNight(Z)V

    :cond_0
    return-void
.end method
