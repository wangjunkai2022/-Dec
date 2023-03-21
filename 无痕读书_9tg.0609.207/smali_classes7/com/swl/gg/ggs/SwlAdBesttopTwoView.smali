.class public Lcom/swl/gg/ggs/SwlAdBesttopTwoView;
.super Landroid/widget/FrameLayout;
.source "SwlAdBesttopTwoView.java"


# instance fields
.field public mAdViewListener:Lcom/apk/n40;

.field public mCloseView:Landroid/widget/ImageView;

.field public mDescTv:Landroid/widget/TextView;

.field public mIconImgView:Landroid/widget/ImageView;

.field public mLinkTv:Landroid/widget/TextView;

.field public mTitleTv:Landroid/widget/TextView;

.field public mZoneid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;)Lcom/apk/n40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mAdViewListener:Lcom/apk/n40;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->initAds(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01d3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09009c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mCloseView:Landroid/widget/ImageView;

    const v0, 0x7f09009e

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mIconImgView:Landroid/widget/ImageView;

    const v0, 0x7f0900a1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mTitleTv:Landroid/widget/TextView;

    const v0, 0x7f09009d

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mDescTv:Landroid/widget/TextView;

    const v0, 0x7f09009f

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mLinkTv:Landroid/widget/TextView;

    .line 7
    new-instance v0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;

    invoke-direct {v0, p0}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$1;-><init>(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAds(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mIconImgView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    check-cast v0, Lcom/apk/y;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mDescTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAddesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mLinkTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getLinktxt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mAdViewListener:Lcom/apk/n40;

    if-eqz p1, :cond_1

    .line 8
    check-cast p1, Lcom/apk/class$do;

    invoke-virtual {p1}, Lcom/apk/class$do;->for()V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mZoneid:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mAdViewListener:Lcom/apk/n40;

    if-eqz p1, :cond_1

    .line 4
    check-cast p1, Lcom/apk/class$do;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;-><init>(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public setAdViewListener(Lcom/apk/n40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mAdViewListener:Lcom/apk/n40;

    return-void
.end method

.method public setClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mCloseView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->mCloseView:Landroid/widget/ImageView;

    new-instance v0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$2;

    invoke-direct {v0, p0}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$2;-><init>(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
