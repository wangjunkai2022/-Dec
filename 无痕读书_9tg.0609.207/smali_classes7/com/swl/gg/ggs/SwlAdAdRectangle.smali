.class public Lcom/swl/gg/ggs/SwlAdAdRectangle;
.super Ljava/lang/Object;
.source "SwlAdAdRectangle.java"

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
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdAdRectangle;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdAdRectangle;->setRectangle(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdAdRectangle;)Lcom/apk/q40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/swl/gg/ggs/SwlAdAdRectangle;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private setRectangle(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0176

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090533

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090534

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090535

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090530

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09052f

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f090531

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f090532

    .line 8
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09052d

    .line 9
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f09052e

    .line 10
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f09052c

    .line 11
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getHimgurl()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_1

    .line 14
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    sget-object v1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v1, :cond_0

    .line 16
    iget-object v8, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/apk/y;

    invoke-virtual {v1, v8, v11, v2, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getActionlab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getActionlab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getActionlab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 24
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getActionlab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getIsvideo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAddesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    sget-object v1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v1, :cond_4

    .line 30
    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/apk/y;

    invoke-virtual {v1, v2, v3, v5, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 31
    :cond_4
    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdRectangle$2;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdAdRectangle$2;-><init>(Lcom/swl/gg/ggs/SwlAdAdRectangle;Lcom/swl/gg/bean/SwlAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz p1, :cond_5

    .line 33
    invoke-interface {p1, v0}, Lcom/apk/q40;->new(Landroid/view/View;)V

    :cond_5
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
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

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
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

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

    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdRectangle$1;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdAdRectangle$1;-><init>(Lcom/swl/gg/ggs/SwlAdAdRectangle;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/l40;->do(Lcom/apk/m40;)Lcom/apk/l40;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

    invoke-interface {v0}, Lcom/apk/q40;->onAdClick()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V
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

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdRectangle;->mNativeAdListenner:Lcom/apk/q40;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/q40;->do()V

    :cond_0
    return-void
.end method
