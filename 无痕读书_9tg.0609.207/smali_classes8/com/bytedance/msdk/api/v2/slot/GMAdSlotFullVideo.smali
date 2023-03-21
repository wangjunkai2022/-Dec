.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotFullVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;
    }
.end annotation


# instance fields
.field public class:Ljava/lang/String;

.field public const:I

.field public final:Ljava/lang/String;

.field public super:I

.field public throw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->catch:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->class:Ljava/lang/String;

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->const:I

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->const:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->final:Ljava/lang/String;

    .line 8
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->final:I

    .line 9
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->super:I

    .line 10
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->super:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->throw:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->throw:Ljava/util/Map;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->const:I

    return v0
.end method

.method public getRewardAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->super:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->final:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->class:Ljava/lang/String;

    return-object v0
.end method
