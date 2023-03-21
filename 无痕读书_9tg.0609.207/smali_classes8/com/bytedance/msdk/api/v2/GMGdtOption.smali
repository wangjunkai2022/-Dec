.class public Lcom/bytedance/msdk/api/v2/GMGdtOption;
.super Ljava/lang/Object;
.source "GMGdtOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;
    }
.end annotation


# instance fields
.field public do:Z

.field public for:Z

.field public if:Ljava/lang/String;

.field public new:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;Lcom/bytedance/msdk/api/v2/GMGdtOption$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->do:Z

    .line 4
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->if:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->if:Ljava/lang/String;

    .line 6
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->for:Z

    .line 7
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->for:Z

    .line 8
    iget-boolean p1, p1, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->new:Z

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->new:Z

    return-void
.end method


# virtual methods
.method public getOpensdkVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->if:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportH265()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->for:Z

    return v0
.end method

.method public isSupportSplashZoomout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->new:Z

    return v0
.end method

.method public isWxInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMGdtOption;->do:Z

    return v0
.end method
