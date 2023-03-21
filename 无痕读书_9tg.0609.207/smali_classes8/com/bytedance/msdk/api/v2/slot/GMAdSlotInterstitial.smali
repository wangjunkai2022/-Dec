.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;
    }
.end annotation


# instance fields
.field public class:I

.field public const:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->catch:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->class:I

    .line 4
    iget p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->class:I

    .line 5
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->const:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->const:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->class:I

    return v0
.end method
