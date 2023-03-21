.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw$Builder;
    }
.end annotation


# instance fields
.field public class:I

.field public const:I

.field public final:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw$Builder;->catch:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->class:I

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->const:I

    .line 6
    iget p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw$Builder;->const:I

    .line 7
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->final:I

    return-void
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->final:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->const:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->class:I

    return v0
.end method
