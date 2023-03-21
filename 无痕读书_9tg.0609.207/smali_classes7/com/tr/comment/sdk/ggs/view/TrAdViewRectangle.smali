.class public Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;
.super Lcom/apk/v90;
.source "TrAdViewRectangle.java"


# instance fields
.field public break:Lcom/apk/f60;

.field public case:Z

.field public do:Lcom/apk/v90$do;

.field public else:J

.field public for:Ljava/lang/String;

.field public goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrGgBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Landroid/app/Activity;

.field public new:Z

.field public this:I

.field public try:Z


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
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/v90;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->new:Z

    .line 3
    iput-boolean p1, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->try:Z

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static if(Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_3

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
    iget-boolean v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->case:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    invoke-static {v1}, Lcom/apk/k40;->super(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x11

    .line 12
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public do()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->else:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-boolean v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->new:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->do:Lcom/apk/v90$do;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/apk/v90$do;

    invoke-direct {v0, p0}, Lcom/apk/v90$do;-><init>(Lcom/apk/v90;)V

    iput-object v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->do:Lcom/apk/v90$do;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->do:Lcom/apk/v90$do;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->do:Lcom/apk/v90$do;

    iget-wide v2, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->else:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->try:Z

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    :try_start_0
    iget v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->this:I

    iget-object v1, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->goto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->goto:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tr/comment/sdk/bean/TrGgBean;

    .line 9
    invoke-virtual {v0}, Lcom/tr/comment/sdk/bean/TrGgBean;->getAdpt()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/tr/comment/sdk/bean/TrGgBean;->getAdid()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->isTheAd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->try:Z

    .line 13
    iget-object v3, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->for:Ljava/lang/String;

    .line 14
    iget-object v4, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->break:Lcom/apk/f60;

    if-nez v4, :cond_3

    .line 15
    new-instance v4, Lcom/apk/f60;

    iget-object v5, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->if:Landroid/app/Activity;

    new-instance v6, Lcom/apk/ba0;

    invoke-direct {v6, p0}, Lcom/apk/ba0;-><init>(Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;)V

    invoke-direct {v4, v5, v6, v3}, Lcom/apk/f60;-><init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->break:Lcom/apk/f60;

    .line 16
    :cond_3
    iget-object v3, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->break:Lcom/apk/f60;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/apk/f60;->try(Ljava/lang/String;Ljava/lang/String;II)V

    .line 17
    :cond_4
    iget v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->this:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->this:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->new:Z

    return-void
.end method

.method public setLoadSuccessVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->case:Z

    return-void
.end method
