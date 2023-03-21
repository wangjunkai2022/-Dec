.class public Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;
.super Lcom/apk/strictfp;
.source "AdViewRectangle.java"


# instance fields
.field public break:Z

.field public case:Ljava/lang/String;

.field public catch:Lcom/apk/d1;

.field public class:J

.field public const:Lcom/apk/f60;

.field public else:Z

.field public final:Lcom/swl/gg/ggs/SwlAdAdRectangle;

.field public goto:J

.field public new:Lcom/apk/strictfp$do;

.field public super:I

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
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    return-void
.end method

.method public static if(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 8
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->catch:Lcom/apk/d1;

    if-eqz p1, :cond_3

    .line 11
    iget-object p0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->catch:Lcom/apk/d1;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    .line 14
    :cond_4
    throw v0
.end method


# virtual methods
.method public do()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->goto:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/apk/strictfp;->for:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/strictfp$do;

    invoke-direct {v0, p0}, Lcom/apk/strictfp$do;-><init>(Lcom/apk/strictfp;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->goto:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->class:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->goto:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->class:J

    .line 9
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    if-nez v0, :cond_5

    return-void

    .line 11
    :cond_5
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->this:Z

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_6
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->const:Lcom/apk/f60;

    if-nez v0, :cond_7

    .line 16
    new-instance v0, Lcom/apk/f60;

    iget-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->try:Landroid/app/Activity;

    new-instance v2, Lcom/apk/implements;

    invoke-direct {v2, p0}, Lcom/apk/implements;-><init>(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;)V

    iget-object v3, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/f60;-><init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->const:Lcom/apk/f60;

    .line 17
    iget v1, p0, Lcom/apk/strictfp;->do:I

    .line 18
    iput v1, v0, Lcom/apk/b60;->if:I

    .line 19
    iget v1, p0, Lcom/apk/strictfp;->if:I

    .line 20
    iput v1, v0, Lcom/apk/b60;->for:I

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->const:Lcom/apk/f60;

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
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/apk/f60;->try(Ljava/lang/String;Ljava/lang/String;II)V

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

.method public for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->try:Landroid/app/Activity;

    .line 2
    iput-object p3, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->case:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->catch:Lcom/apk/d1;

    .line 4
    invoke-static {p3}, Lcom/apk/i;->if(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->goto:J

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->do()V

    return-void
.end method

.method public new()V
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new:Lcom/apk/strictfp$do;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->final:Lcom/swl/gg/ggs/SwlAdAdRectangle;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdAdRectangle;->onDestroy()V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->final:Lcom/swl/gg/ggs/SwlAdAdRectangle;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->const:Lcom/apk/f60;

    if-eqz v0, :cond_3

    .line 9
    iget-object v2, v0, Lcom/apk/f60;->case:Lcom/apk/j60;

    if-eqz v2, :cond_2

    .line 10
    iput-object v1, v0, Lcom/apk/f60;->case:Lcom/apk/j60;

    .line 11
    :cond_2
    iput-object v1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->final:Lcom/swl/gg/ggs/SwlAdAdRectangle;

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->super:I

    if-le p2, p1, :cond_0

    .line 3
    iput p2, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->super:I

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->goto:J

    return-void
.end method

.method public setMove(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
