.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;
    }
.end annotation


# instance fields
.field public class:I

.field public const:I

.field public final:I

.field public super:I

.field public throw:Ljava/lang/String;

.field public while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->catch:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->class:I

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->const:I

    .line 6
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->const:I

    .line 7
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->final:I

    .line 8
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->super:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->throw:Ljava/lang/String;

    .line 10
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->final:I

    .line 11
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->super:I

    .line 12
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->final:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public getAdStyleType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->super:I

    return v0
.end method

.method public getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->const:I

    return v0
.end method

.method public getRequestCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getNetWorkNum()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    if-lez v0, :cond_1

    return v0

    .line 2
    :cond_1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->final:I

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    if-le v0, v1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->throw:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->class:I

    return v0
.end method
