.class public Lcom/apk/b;
.super Lcom/apk/strictfp;
.source "AdViewText.java"


# instance fields
.field public break:I

.field public case:Landroid/widget/LinearLayout;

.field public catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public class:J

.field public const:Z

.field public else:Landroid/widget/ImageView;

.field public final:I

.field public goto:I

.field public new:Lcom/apk/strictfp$do;

.field public super:Z

.field public this:I

.field public throw:Lcom/swl/gg/ggs/SwlAdTextView;

.field public try:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/apk/strictfp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/apk/b;->break:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0064

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const p1, 0x7f0900a7

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/apk/b;->case:Landroid/widget/LinearLayout;

    const p1, 0x7f0900a8

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/apk/b;->else:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 8
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/apk/b;->goto:I

    int-to-float p1, p1

    const v0, 0x40c66666    # 6.2f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/apk/b;->this:I

    return-void
.end method

.method public static if(Lcom/apk/b;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/b;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/b;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

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

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    iget-object p0, p0, Lcom/apk/b;->case:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 11
    throw p0
.end method


# virtual methods
.method public do()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/apk/b;->class:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/apk/strictfp;->for:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/b;->new:Lcom/apk/strictfp$do;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/strictfp$do;

    invoke-direct {v0, p0}, Lcom/apk/strictfp$do;-><init>(Lcom/apk/strictfp;)V

    iput-object v0, p0, Lcom/apk/b;->new:Lcom/apk/strictfp$do;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/b;->new:Lcom/apk/strictfp$do;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/apk/b;->new:Lcom/apk/strictfp$do;

    iget-wide v2, p0, Lcom/apk/b;->class:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/apk/b;->const:Z

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/b;->super:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/b;->catch:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 10
    :cond_3
    iget v0, p0, Lcom/apk/b;->final:I

    iget-object v1, p0, Lcom/apk/b;->catch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 11
    iget v1, p0, Lcom/apk/b;->final:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/b;->final:I

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/apk/b;->catch:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    .line 13
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    const-string v2, "swl"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v1, Lcom/swl/gg/ggs/SwlAdTextView;

    iget-object v2, p0, Lcom/apk/b;->try:Landroid/app/Activity;

    new-instance v3, Lcom/apk/a;

    invoke-direct {v3, p0}, Lcom/apk/a;-><init>(Lcom/apk/b;)V

    invoke-direct {v1, v2, v3}, Lcom/swl/gg/ggs/SwlAdTextView;-><init>(Landroid/app/Activity;Lcom/apk/q40;)V

    iput-object v1, p0, Lcom/apk/b;->throw:Lcom/swl/gg/ggs/SwlAdTextView;

    .line 17
    iget v2, p0, Lcom/apk/b;->break:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 18
    invoke-virtual {v1, v2}, Lcom/swl/gg/ggs/SwlAdTextView;->setTxtGravity(I)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/apk/b;->throw:Lcom/swl/gg/ggs/SwlAdTextView;

    invoke-virtual {v1, v0}, Lcom/swl/gg/ggs/SwlAdTextView;->loadAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public for()V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/apk/b;->case:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/b;->new:Lcom/apk/strictfp$do;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/b;->throw:Lcom/swl/gg/ggs/SwlAdTextView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdTextView;->onDestroy()V

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/apk/b;->goto:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/apk/b;->this:I

    .line 2
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setTxtGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/b;->break:I

    return-void
.end method
