.class public Lcom/swl/gg/ggs/SwlAdBesttopView;
.super Landroid/widget/FrameLayout;
.source "SwlAdBesttopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;
    }
.end annotation


# instance fields
.field public mAdViewListener:Lcom/apk/n40;

.field public mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

.field public mCloseView:Landroid/widget/FrameLayout;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mZoneid:Ljava/lang/String;

.field public persize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/swl/gg/ggs/SwlAdBesttopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->persize:I

    .line 4
    invoke-direct {p0}, Lcom/swl/gg/ggs/SwlAdBesttopView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/apk/n40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdViewListener:Lcom/apk/n40;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdBesttopView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->persize:I

    return p0
.end method

.method public static synthetic access$200(Lcom/swl/gg/ggs/SwlAdBesttopView;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/swl/gg/ggs/SwlAdBesttopView;->initAds(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01d2

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09009c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mCloseView:Landroid/widget/FrameLayout;

    const v0, 0x7f0900a0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method private initAds(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 4
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance v0, Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;-><init>(Ljava/util/List;ILcom/swl/gg/ggs/SwlAdBesttopView$1;)V

    iput-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    .line 6
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    new-instance p2, Lcom/swl/gg/ggs/SwlAdBesttopView$3;

    invoke-direct {p2, p0}, Lcom/swl/gg/ggs/SwlAdBesttopView$3;-><init>(Lcom/swl/gg/ggs/SwlAdBesttopView;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdapter:Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdViewListener:Lcom/apk/n40;

    if-eqz p1, :cond_2

    .line 12
    check-cast p1, Lcom/apk/class$do;

    invoke-virtual {p1}, Lcom/apk/class$do;->for()V

    :cond_2
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
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mZoneid:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdViewListener:Lcom/apk/n40;

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

    new-instance v1, Lcom/swl/gg/ggs/SwlAdBesttopView$2;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopView$2;-><init>(Lcom/swl/gg/ggs/SwlAdBesttopView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public setAdViewListener(Lcom/apk/n40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mAdViewListener:Lcom/apk/n40;

    return-void
.end method

.method public setClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mCloseView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView;->mCloseView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/swl/gg/ggs/SwlAdBesttopView$1;

    invoke-direct {v0, p0}, Lcom/swl/gg/ggs/SwlAdBesttopView$1;-><init>(Lcom/swl/gg/ggs/SwlAdBesttopView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
