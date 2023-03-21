.class public Lcom/bytedance/msdk/api/AdSlot$Builder;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public break:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public case:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public catch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public class:Lcom/bytedance/msdk/api/TTVideoOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public const:Lcom/bytedance/msdk/api/TTRequestExtraParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public default:Ljava/lang/String;

.field public do:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public else:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public for:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public goto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public if:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public import:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public native:Z

.field public new:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public public:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public return:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public super:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public switch:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public this:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public throws:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public try:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public while:Landroid/widget/FrameLayout$LayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->do:I

    const/16 v0, 0x140

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->if:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->for:Z

    .line 5
    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->new:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->final:I

    const/4 v1, 0x3

    .line 7
    iput v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->super:I

    .line 8
    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->public:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->return:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/AdSlot;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/AdSlot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdSlot;-><init>(Lcom/bytedance/msdk/api/AdSlot$1;)V

    .line 2
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->new:I

    .line 3
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->case:I

    .line 4
    iget-boolean v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->for:Z

    .line 5
    iput-boolean v1, v0, Lcom/bytedance/msdk/api/AdSlot;->else:Z

    .line 6
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->do:I

    .line 7
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->new:I

    .line 8
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->if:I

    .line 9
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->try:I

    .line 10
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->try:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->catch:Ljava/lang/String;

    .line 12
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->case:I

    .line 13
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->class:I

    .line 14
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->else:Ljava/lang/String;

    .line 15
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->const:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->goto:Ljava/util/Map;

    .line 17
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->super:Ljava/util/Map;

    .line 18
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->this:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->final:Ljava/lang/String;

    .line 20
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->break:I

    .line 21
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->throw:I

    .line 22
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->catch:I

    .line 23
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->goto:I

    .line 24
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->final:I

    .line 25
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->this:I

    .line 26
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->class:Lcom/bytedance/msdk/api/TTVideoOption;

    .line 27
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->while:Lcom/bytedance/msdk/api/TTVideoOption;

    .line 28
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->const:Lcom/bytedance/msdk/api/TTRequestExtraParams;

    .line 29
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->import:Lcom/bytedance/msdk/api/TTRequestExtraParams;

    .line 30
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    .line 31
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->native:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    .line 32
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->super:I

    .line 33
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->break:I

    .line 34
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->while:Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->public:Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->import:Ljava/lang/String;

    .line 37
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->return:Ljava/lang/String;

    .line 38
    iget-boolean v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->native:Z

    .line 39
    iput-boolean v1, v0, Lcom/bytedance/msdk/api/AdSlot;->static:Z

    .line 40
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->public:I

    .line 41
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->switch:I

    .line 42
    iget v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->return:I

    .line 43
    iput v1, v0, Lcom/bytedance/msdk/api/AdSlot;->throws:I

    .line 44
    iget-boolean v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->static:Z

    .line 45
    iput-boolean v1, v0, Lcom/bytedance/msdk/api/AdSlot;->default:Z

    .line 46
    iget-boolean v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->switch:Z

    .line 47
    iput-boolean v1, v0, Lcom/bytedance/msdk/api/AdSlot;->extends:Z

    .line 48
    iget-boolean v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->throws:Z

    .line 49
    iput-boolean v1, v0, Lcom/bytedance/msdk/api/AdSlot;->abstract:Z

    .line 50
    iget-object v1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->default:Ljava/lang/String;

    .line 51
    iput-object v1, v0, Lcom/bytedance/msdk/api/AdSlot;->continue:Ljava/lang/String;

    return-object v0
.end method

.method public setAdCount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->new:I

    return-object p0
.end method

.method public setAdStyleType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->final:I

    return-object p0
.end method

.method public setAdType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->catch:I

    return-object p0
.end method

.method public setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    return-object p0
.end method

.method public setBannerSize(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->super:I

    return-object p0
.end method

.method public setBidNotify(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->static:Z

    return-object p0
.end method

.method public setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/msdk/api/AdSlot$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->goto:Ljava/util/Map;

    return-object p0
.end method

.method public setDownloadType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->return:I

    return-object p0
.end method

.method public setForceLoadBottom(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->switch:Z

    return-object p0
.end method

.method public setGdtNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->while:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method public setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->do:I

    .line 2
    iput p2, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->if:I

    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->else:Ljava/lang/String;

    return-object p0
.end method

.method public setOrientation(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->break:I

    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->case:I

    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->try:Ljava/lang/String;

    return-object p0
.end method

.method public setScenarioId(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->default:Ljava/lang/String;

    return-object p0
.end method

.method public setSplashButtonType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->public:I

    return-object p0
.end method

.method public setSplashShakeButton(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->throws:Z

    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->for:Z

    return-object p0
.end method

.method public setTTRequestExtraParams(Lcom/bytedance/msdk/api/TTRequestExtraParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->const:Lcom/bytedance/msdk/api/TTRequestExtraParams;

    return-object p0
.end method

.method public setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->class:Lcom/bytedance/msdk/api/TTVideoOption;

    return-object p0
.end method

.method public setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->import:Ljava/lang/String;

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->this:Ljava/lang/String;

    return-object p0
.end method

.method public setV2Request(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/AdSlot$Builder;->native:Z

    return-object p0
.end method
