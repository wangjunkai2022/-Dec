.class public abstract Lcom/apk/t50;
.super Landroid/widget/FrameLayout;
.source "TrGdtNativeUnifiedAD.java"


# instance fields
.field public break:Landroid/widget/TextView;

.field public case:Lcom/qq/e/ads/nativ/MediaView;

.field public catch:Z

.field public do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field public else:Landroid/widget/ImageView;

.field public for:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

.field public goto:Landroid/widget/TextView;

.field public final if:Lcom/apk/x60;

.field public new:Landroid/widget/LinearLayout;

.field public this:Landroid/widget/TextView;

.field public try:Lcom/swl/gg/sdk/core/widget/TrNiceImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/x60;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/t50;->catch:Z

    .line 3
    iput-object p2, p0, Lcom/apk/t50;->if:Lcom/apk/x60;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apk/t50;->getLayoutId()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/swl/gg/sdk/R$id;->native_ad_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    iput-object p1, p0, Lcom/apk/t50;->for:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 6
    sget p1, Lcom/swl/gg/sdk/R$id;->gdt_native_ad_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/apk/t50;->new:Landroid/widget/LinearLayout;

    .line 7
    sget p1, Lcom/swl/gg/sdk/R$id;->gdt_native_img_logo:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;

    iput-object p1, p0, Lcom/apk/t50;->try:Lcom/swl/gg/sdk/core/widget/TrNiceImageView;

    .line 8
    sget p1, Lcom/swl/gg/sdk/R$id;->gdt_media_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/nativ/MediaView;

    iput-object p1, p0, Lcom/apk/t50;->case:Lcom/qq/e/ads/nativ/MediaView;

    .line 9
    sget p1, Lcom/swl/gg/sdk/R$id;->gdt_poster_img:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    .line 10
    sget p1, Lcom/swl/gg/sdk/R$id;->gdt_native_btn_detail:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/apk/t50;->goto:Landroid/widget/TextView;

    .line 11
    sget p1, Lcom/swl/gg/sdk/R$id;->text_title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/apk/t50;->this:Landroid/widget/TextView;

    .line 12
    sget p1, Lcom/swl/gg/sdk/R$id;->text_desc:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/apk/t50;->break:Landroid/widget/TextView;

    return-void
.end method

.method public static for(Lcom/apk/t50;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 13

    .line 1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 2
    sget v0, Lcom/swl/gg/sdk/R$id;->native_3img_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lcom/swl/gg/sdk/R$id;->native_3img_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_3

    .line 4
    iget-object v0, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/apk/t50;->this:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/apk/t50;->break:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/swl/gg/sdk/TrAdSdk;->loadImageGlide(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 8
    iget-object v0, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/apk/t50;->this:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/apk/t50;->break:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/apk/t50;->try:Lcom/swl/gg/sdk/core/widget/TrNiceImageView;

    invoke-static {v0, v7}, Lcom/swl/gg/sdk/TrAdSdk;->loadImageGlide(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 12
    iget-object v0, p0, Lcom/apk/t50;->goto:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/apk/t50;->if(Landroid/widget/TextView;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v7, p0, Lcom/apk/t50;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v7, p0, Lcom/apk/t50;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/apk/t50;->for:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    const/4 v10, 0x0

    move-object v7, p1

    move-object v11, v0

    invoke-interface/range {v7 .. v12}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v8

    if-eq v8, v6, :cond_5

    .line 20
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v8

    if-ne v8, v4, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v8

    if-ne v8, v2, :cond_6

    .line 22
    sget v2, Lcom/swl/gg/sdk/R$id;->img_1:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget v2, Lcom/swl/gg/sdk/R$id;->img_2:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget v2, Lcom/swl/gg/sdk/R$id;->img_3:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 27
    invoke-interface {p1, v7, v5}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindImageViews(Ljava/util/List;I)V

    goto :goto_5

    .line 28
    :cond_7
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 29
    iget-object v0, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/apk/t50;->case:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    invoke-direct {p0}, Lcom/apk/t50;->getVideoOption()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/apk/t50;->case:Lcom/qq/e/ads/nativ/MediaView;

    new-instance v2, Lcom/apk/v50;

    invoke-direct {v2}, Lcom/apk/v50;-><init>()V

    invoke-interface {p1, v1, v0, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    .line 33
    invoke-interface {p1, v6}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setVideoMute(Z)V

    goto :goto_5

    .line 34
    :cond_8
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v1

    if-eq v1, v6, :cond_a

    .line 35
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v1

    if-ne v1, v4, :cond_9

    goto :goto_4

    .line 36
    :cond_9
    sget v1, Lcom/swl/gg/sdk/R$id;->native_3img_ad_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/apk/t50;->else:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_5
    new-instance v0, Lcom/apk/u50;

    invoke-direct {v0, p0, p1}, Lcom/apk/u50;-><init>(Lcom/apk/t50;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    invoke-interface {p1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    return-void
.end method

.method private getVideoOption()Lcom/qq/e/ads/cfg/VideoOption;
    .locals 3

    .line 1
    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 3
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 5
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 6
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 7
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 8
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 9
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    return-object v0
.end method

.method public static if(Landroid/widget/TextView;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isWeChatCanvasAd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "\u53bb\u5fae\u4fe1\u770b\u770b"

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_3
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/16 p1, 0x8

    if-eq v1, p1, :cond_6

    const/16 p1, 0x10

    if-eq v1, p1, :cond_5

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string p1, "\u91cd\u65b0\u4e0b\u8f7d"

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string p1, "\u5b89\u88c5"

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const-string p1, "\u542f\u52a8"

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 4
    :cond_0
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/apk/t50$do;

    invoke-direct {v2, p0}, Lcom/apk/t50$do;-><init>(Lcom/apk/t50;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    return-void
.end method

.method public abstract getLayoutId()I
.end method
