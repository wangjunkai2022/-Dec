.class public Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;
.super Ljava/lang/Object;
.source "GMPreloadRequestInfo.java"


# instance fields
.field public do:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->do:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGmAdSlot()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->do:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    return-object v0
.end method

.method public getPrimeRitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->if:Ljava/util/List;

    return-object v0
.end method
