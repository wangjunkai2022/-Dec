.class public Lcom/bytedance/msdk/api/AdSlot;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/AdSlot$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final CUSTOM_DATA_KEY_ADMOB:Ljava/lang/String; = "admob"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_BAIDU:Ljava/lang/String; = "baidu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_GDT:Ljava/lang/String; = "gdt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_KLEVIN:Ljava/lang/String; = "klevin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_KS:Ljava/lang/String; = "ks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_MINTEGRAL:Ljava/lang/String; = "mintegral"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_PANGLE:Ljava/lang/String; = "pangle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_SIGMOB:Ljava/lang/String; = "sigmob"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_DATA_KEY_UNITY:Ljava/lang/String; = "unity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FULL_WIDTH:I = -0x1

.field public static final POSITION_BOTTOM:I = 0x2

.field public static final POSITION_FEED:I = 0x3

.field public static final POSITION_FULL_SCREEN:I = 0x5

.field public static final POSITION_MIDDLE:I = 0x4

.field public static final POSITION_TOP:I = 0x1

.field public static final TYPE_BANNER:I = 0x1

.field public static final TYPE_CACHED_SPLASH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_DRAW_FEED:I = 0x9

.field public static final TYPE_EXPRESS_AD:I = 0x1

.field public static final TYPE_FEED:I = 0x5

.field public static final TYPE_FULL_SCREEN_VIDEO:I = 0x8

.field public static final TYPE_INTERACTION_AD:I = 0x2

.field public static final TYPE_INTERACTION_FULL:I = 0xa

.field public static final TYPE_NATIVE_AD:I = 0x2

.field public static final TYPE_REWARD_VIDEO:I = 0x7

.field public static final TYPE_SPLASH:I = 0x3


# instance fields
.field public abstract:Z

.field public break:I

.field public case:I

.field public catch:Ljava/lang/String;

.field public class:I

.field public const:Ljava/lang/String;

.field public continue:Ljava/lang/String;

.field public default:Z

.field public do:Ljava/lang/String;

.field public else:Z

.field public extends:Z

.field public final:Ljava/lang/String;

.field public finally:D

.field public for:Ljava/lang/String;

.field public goto:I

.field public if:J

.field public import:Lcom/bytedance/msdk/api/TTRequestExtraParams;

.field public native:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

.field public new:I

.field public package:I

.field public private:I

.field public public:Landroid/widget/FrameLayout$LayoutParams;

.field public return:Ljava/lang/String;

.field public static:Z

.field public super:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public this:I

.field public throw:I

.field public throws:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public try:I

.field public while:Lcom/bytedance/msdk/api/TTVideoOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot;->this:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot;->break:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/msdk/api/AdSlot$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot;->this:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot;->break:I

    return-void
.end method


# virtual methods
.method public getAdCount()I
    .locals 2

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getNetWorkNum()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    if-lez v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->case:I

    return v0
.end method

.method public getAdStyleType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->this:I

    return v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->goto:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->native:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    return-object v0
.end method

.method public getBannerSize()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->break:I

    return v0
.end method

.method public getBidFloor()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/msdk/api/AdSlot;->finally:D

    return-wide v0
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->super:Ljava/util/Map;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->throws:I

    return v0
.end method

.method public getGdtNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->public:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public getImgAcceptedHeight()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->try:I

    return v0
.end method

.method public getImgAcceptedWidth()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->new:I

    return v0
.end method

.method public getMediaExtra()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->const:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->throw:I

    return v0
.end method

.method public getParalleType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->package:I

    return v0
.end method

.method public getReqParallelNum()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->private:I

    return v0
.end method

.method public getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->import:Lcom/bytedance/msdk/api/TTRequestExtraParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/TTRequestExtraParams;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->import:Lcom/bytedance/msdk/api/TTRequestExtraParams;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->import:Lcom/bytedance/msdk/api/TTRequestExtraParams;

    return-object v0
.end method

.method public getRewardAmount()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->class:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->continue:Ljava/lang/String;

    return-object v0
.end method

.method public getSplashButtonType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/bytedance/msdk/api/AdSlot;->switch:I

    return v0
.end method

.method public getSplashShakeButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdSlot;->abstract:Z

    return v0
.end method

.method public getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->while:Lcom/bytedance/msdk/api/TTVideoOption;

    return-object v0
.end method

.method public getTestSlotId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->return:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->final:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/AdSlot;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getWaterfallId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/msdk/api/AdSlot;->if:J

    return-wide v0
.end method

.method public isBidNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdSlot;->default:Z

    return v0
.end method

.method public isForceLoadBottom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdSlot;->extends:Z

    return v0
.end method

.method public isSupportDeepLink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdSlot;->else:Z

    return v0
.end method

.method public isV2Request()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/AdSlot;->static:Z

    return v0
.end method

.method public setAdCount(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot;->case:I

    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot;->goto:I

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot;->do:Ljava/lang/String;

    return-void
.end method

.method public setBidFloor(D)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/bytedance/msdk/api/AdSlot;->finally:D

    return-void
.end method

.method public setParalleType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot;->package:I

    return-void
.end method

.method public setReqParallelNum(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot;->private:I

    return-void
.end method

.method public setScenarioId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot;->continue:Ljava/lang/String;

    return-void
.end method

.method public setSplashShakeButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdSlot;->abstract:Z

    return-void
.end method

.method public setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot;->while:Lcom/bytedance/msdk/api/TTVideoOption;

    return-void
.end method

.method public setTestSlotId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot;->return:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot;->for:Ljava/lang/String;

    return-void
.end method

.method public setWaterfallId(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/bytedance/msdk/api/AdSlot;->if:J

    return-void
.end method
