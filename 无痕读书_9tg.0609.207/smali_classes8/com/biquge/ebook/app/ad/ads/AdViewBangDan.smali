.class public Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;
.super Lcom/apk/strictfp;
.source "AdViewBangDan.java"


# instance fields
.field public break:Z

.field public case:Ljava/lang/String;

.field public catch:J

.field public class:Lcom/apk/z50;

.field public const:Lcom/swl/gg/ggs/SwlAdAdBangDan;

.field public else:Z

.field public goto:Z

.field public new:Lcom/apk/strictfp$do;

.field public this:J

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
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static if(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
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

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->goto:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 14
    throw p0
.end method


# virtual methods
.method public do()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->this:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/apk/strictfp;->for:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/strictfp$do;

    invoke-direct {v0, p0}, Lcom/apk/strictfp$do;-><init>(Lcom/apk/strictfp;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->this:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->catch:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->this:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->catch:J

    .line 9
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->class:Lcom/apk/z50;

    if-nez v0, :cond_6

    .line 13
    new-instance v0, Lcom/apk/z50;

    iget-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try:Landroid/app/Activity;

    new-instance v2, Lcom/apk/volatile;

    invoke-direct {v2, p0}, Lcom/apk/volatile;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;)V

    iget-object v3, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/z50;-><init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->class:Lcom/apk/z50;

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->class:Lcom/apk/z50;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 15
    invoke-static {}, Lcom/apk/q70;->do()Lcom/apk/q70;

    move-result-object v2

    iget-object v3, v0, Lcom/apk/p70;->do:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/apk/q70;->if(Ljava/lang/String;)Lcom/apk/c50;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2}, Lcom/apk/c50;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/apk/c50;->do()Ljava/lang/String;

    move-result-object v4

    .line 17
    iget v5, v2, Lcom/apk/c50;->for:I

    .line 18
    iget v2, v2, Lcom/apk/c50;->new:I

    .line 19
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/apk/z50;->try(Ljava/lang/String;Ljava/lang/String;II)V

    .line 20
    :cond_7
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_8

    return-void

    .line 21
    :cond_8
    throw v1

    .line 22
    :cond_9
    throw v1
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->goto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->case:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/apk/i;->if(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->this:J

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan$do;

    invoke-direct {p2, p0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan$do;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07004f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setLoadSuccessVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->goto:Z

    return-void
.end method

.method public try()V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new:Lcom/apk/strictfp$do;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->class:Lcom/apk/z50;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/z50;->case()V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->class:Lcom/apk/z50;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->const:Lcom/swl/gg/ggs/SwlAdAdBangDan;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdAdBangDan;->onDestroy()V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->const:Lcom/swl/gg/ggs/SwlAdAdBangDan;

    :cond_2
    return-void
.end method
