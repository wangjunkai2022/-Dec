.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotRewardVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    }
.end annotation


# instance fields
.field public class:Ljava/lang/String;

.field public const:I

.field public final:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public super:Ljava/lang/String;

.field public throw:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->catch:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->class:Ljava/lang/String;

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->const:I

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->const:Ljava/util/Map;

    .line 7
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->final:Ljava/util/Map;

    .line 8
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->final:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->super:Ljava/lang/String;

    .line 10
    iget p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->super:I

    .line 11
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->throw:I

    return-void
.end method


# virtual methods
.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->final:Ljava/util/Map;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->throw:I

    return v0
.end method

.method public getRewardAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->const:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->class:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->super:Ljava/lang/String;

    return-object v0
.end method
