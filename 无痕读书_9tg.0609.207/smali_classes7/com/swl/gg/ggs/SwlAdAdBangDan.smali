.class public Lcom/swl/gg/ggs/SwlAdAdBangDan;
.super Ljava/lang/Object;
.source "SwlAdAdBangDan.java"

# interfaces
.implements Lcom/apk/o40;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mNativeAdListenner:Lcom/apk/q40;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/q40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdAdBangDan;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdAdBangDan;->setRectangle(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdAdBangDan;)Lcom/apk/q40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

    return-object p0
.end method

.method private setRectangle(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090525

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09052a

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09052b

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090524

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090526

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 7
    sget-object v6, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v6, :cond_0

    .line 8
    iget-object v7, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v8

    check-cast v6, Lcom/apk/y;

    invoke-virtual {v6, v7, v8, v1, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAddesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5510\u5bb6\u4e09\u5c11"

    .line 12
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1, v0}, Lcom/apk/q40;->new(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

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
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

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

    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdBangDan$1;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdAdBangDan$1;-><init>(Lcom/swl/gg/ggs/SwlAdAdBangDan;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/l40;->do(Lcom/apk/m40;)Lcom/apk/l40;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_5

    :try_start_1
    const-string v0, "1"

    .line 2
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getBrowser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    .line 7
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/apk/y;

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v1, p1, v2}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

    invoke-interface {p1}, Lcom/apk/q40;->onAdClick()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdBangDan;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/q40;->do()V

    :cond_0
    return-void
.end method
