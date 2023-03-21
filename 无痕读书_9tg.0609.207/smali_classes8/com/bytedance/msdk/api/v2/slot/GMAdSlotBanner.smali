.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    }
.end annotation


# instance fields
.field public class:I

.field public const:I

.field public final:I

.field public super:Z

.field public throw:Ljava/lang/String;

.field public while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->catch:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->class:I

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->const:I

    .line 6
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->const:I

    .line 7
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->final:I

    .line 8
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->final:Z

    .line 9
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->super:Z

    .line 10
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->super:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->throw:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->while:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    return-object v0
.end method

.method public getBannerSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->final:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->const:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->throw:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->class:I

    return v0
.end method

.method public isAllowShowCloseBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->super:Z

    return v0
.end method
