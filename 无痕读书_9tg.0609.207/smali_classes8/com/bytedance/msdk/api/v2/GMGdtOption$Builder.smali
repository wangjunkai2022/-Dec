.class public Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;
.super Ljava/lang/Object;
.source "GMGdtOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/GMGdtOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public do:Z

.field public for:Z

.field public if:Ljava/lang/String;

.field public new:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->do:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->if:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->for:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->new:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/v2/GMGdtOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMGdtOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/GMGdtOption;-><init>(Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;Lcom/bytedance/msdk/api/v2/GMGdtOption$1;)V

    return-object v0
.end method

.method public setOpensdkVer(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->if:Ljava/lang/String;

    return-object p0
.end method

.method public setSupportH265(Z)Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->for:Z

    return-object p0
.end method

.method public setSupportSplashZoomout(Z)Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->new:Z

    return-object p0
.end method

.method public setWxInstalled(Z)Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->do:Z

    return-object p0
.end method
