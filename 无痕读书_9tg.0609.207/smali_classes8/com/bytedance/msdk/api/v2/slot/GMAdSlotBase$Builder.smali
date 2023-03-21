.class public abstract Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;
.super Ljava/lang/Object;
.source "GMAdSlotBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field public break:Ljava/lang/String;

.field public case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public do:Z

.field public else:Ljava/lang/String;

.field public for:Z

.field public goto:I

.field public if:F

.field public new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

.field public this:Z

.field public try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->case:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->goto:I

    return-void
.end method
