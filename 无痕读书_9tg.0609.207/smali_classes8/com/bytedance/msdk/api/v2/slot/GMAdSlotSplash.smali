.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotSplash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    }
.end annotation


# instance fields
.field public class:I

.field public const:I

.field public final:Ljava/lang/String;

.field public import:Z

.field public native:Z

.field public super:Z

.field public throw:I

.field public while:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->catch:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->class:I

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->const:I

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->const:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->final:Ljava/lang/String;

    .line 8
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->final:Z

    .line 9
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->super:Z

    .line 10
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->super:I

    .line 11
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->throw:I

    .line 12
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->throw:I

    .line 13
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->while:I

    .line 14
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->while:Z

    .line 15
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->import:Z

    .line 16
    iget-boolean p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->import:Z

    .line 17
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->native:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->const:I

    return v0
.end method

.method public getSplashButtonType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->while:I

    return v0
.end method

.method public getSplashShakeButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->native:Z

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->throw:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->final:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->class:I

    return v0
.end method

.method public isForceLoadBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->import:Z

    return v0
.end method

.method public isSplashPreLoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->super:Z

    return v0
.end method
