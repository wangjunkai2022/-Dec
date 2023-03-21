.class public abstract Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;
.super Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.source "GMDrawBaseAdapter.java"


# instance fields
.field public extends:Landroid/content/Context;

.field public mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->extends:Landroid/content/Context;

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->extends:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mGMAdSlotBase:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    instance-of p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "ClassCastException\uff1aload ad fail mGMAdSlotDraw is not GMAdSlotDraw"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public notifyLoadFailBecauseGMAdSlotIsNull()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "load ad fail mGMAdSlotDraw is null"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
