.class public Lcom/swl/gg/ggs/SwlAdTextView;
.super Ljava/lang/Object;
.source "SwlAdTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mNativeAdListenner:Lcom/apk/q40;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/q40;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    .line 4
    :try_start_0
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    const-string p1, "#00ACF5"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    const/4 p2, 0x2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 7
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    const/high16 p2, 0x40a00000    # 5.0f

    .line 9
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 11
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p1, 0x11

    .line 12
    invoke-virtual {p0, p1}, Lcom/swl/gg/ggs/SwlAdTextView;->setTxtGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdTextView;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdTextView;->setTextView(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdTextView;)Lcom/apk/q40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    return-object p0
.end method

.method private setTextView(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/apk/q40;->new(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_0

    const/16 v0, 0xbba

    const-string v1, "activity\u6216\u8005\u5176\u5b83\u53c2\u6570\u4e3a\u7a7a"

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/apk/q40;->if(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/apk/k40;->strictfp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_2

    const/16 v0, 0xbbc

    const-string v1, "\u6ca1\u6709\u7f51\u7edc"

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/apk/q40;->if(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance v0, Lcom/apk/l40;

    invoke-direct {v0}, Lcom/apk/l40;-><init>()V

    new-instance v1, Lcom/swl/gg/ggs/SwlAdTextView$1;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdTextView$1;-><init>(Lcom/swl/gg/ggs/SwlAdTextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/l40;->do(Lcom/apk/m40;)Lcom/apk/l40;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    .line 2
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getBrowser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/apk/k40;->do:Lcom/apk/r40;

    .line 6
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/apk/y;

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 7
    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->p(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mNativeAdListenner:Lcom/apk/q40;

    invoke-interface {p1}, Lcom/apk/q40;->onAdClick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public setTxtGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
