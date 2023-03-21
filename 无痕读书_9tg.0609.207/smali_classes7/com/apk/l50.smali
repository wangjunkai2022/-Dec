.class public Lcom/apk/l50;
.super Lcom/apk/f70;
.source "CsjProviderSplash.java"


# instance fields
.field public case:Landroid/os/CountDownTimer;

.field public else:Landroid/view/View;

.field public try:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    return-void
.end method

.method public static k(Lcom/apk/l50;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/apk/a70;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    new-instance v7, Lcom/apk/o50;

    invoke-direct {v7}, Lcom/apk/o50;-><init>()V

    .line 2
    sget v1, Lcom/swl/gg/sdk/R$layout;->tr_ad_sdk_splash_skip_view:I

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    sget v0, Lcom/swl/gg/sdk/R$id;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/apk/o50;->do:Landroid/widget/TextView;

    .line 4
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setNotAllowSdkCountdown()V

    .line 5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800035

    .line 6
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 7
    invoke-static {v0}, Lcom/apk/r70;->if(F)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 8
    invoke-static {v0}, Lcom/apk/r70;->if(F)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 9
    invoke-virtual {p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance p2, Lcom/apk/m50;

    invoke-direct {p2, p0, p4, p5}, Lcom/apk/m50;-><init>(Lcom/apk/l50;Ljava/lang/String;Lcom/apk/a70;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/apk/l50;->case:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    :cond_0
    iget-object p1, v7, Lcom/apk/o50;->do:Landroid/widget/TextView;

    const-string p2, "5"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Lcom/apk/n50;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/apk/n50;-><init>(Lcom/apk/l50;JJLcom/apk/o50;Ljava/lang/String;Lcom/apk/a70;)V

    iput-object p1, p0, Lcom/apk/l50;->case:Landroid/os/CountDownTimer;

    .line 15
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    .line 16
    :cond_1
    throw v0
.end method


# virtual methods
.method public final j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V
    .locals 9

    .line 1
    iput-object p4, p0, Lcom/apk/l50;->try:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/l50;->else:Landroid/view/View;

    const-wide/16 v3, 0x1770

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, p5

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/apk/e70;->abstract(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 6
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 8
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 9
    sget v0, Lcom/apk/n60$do;->for:I

    sget v1, Lcom/apk/n60$do;->new:I

    invoke-virtual {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 10
    invoke-static {p1}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p3

    new-instance v8, Lcom/apk/l50$do;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/apk/l50$do;-><init>(Lcom/apk/l50;Ljava/lang/String;Lcom/apk/a70;ZLandroid/app/Activity;Landroid/view/ViewGroup;)V

    sget p1, Lcom/apk/n60$do;->if:I

    invoke-interface {v0, p3, v8, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    return-void
.end method
