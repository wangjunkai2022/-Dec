.class public final Lcom/bytedance/msdk/api/TTVideoOption$Builder;
.super Ljava/lang/Object;
.source "TTVideoOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/TTVideoOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public do:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public for:Lcom/bytedance/msdk/api/GDTExtraOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public if:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public new:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public try:Lcom/bytedance/msdk/api/BaiduExtraOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->do:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/msdk/api/TTVideoOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/TTVideoOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/TTVideoOption;-><init>(Lcom/bytedance/msdk/api/TTVideoOption$Builder;Lcom/bytedance/msdk/api/TTVideoOption$1;)V

    return-object v0
.end method

.method public setAdmobAppVolume(F)Lcom/bytedance/msdk/api/TTVideoOption$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 1
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->if:F

    return-object p0
.end method

.method public setBaiduExtraOption(Lcom/bytedance/msdk/api/BaiduExtraOptions;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->try:Lcom/bytedance/msdk/api/BaiduExtraOptions;

    return-object p0
.end method

.method public setGDTExtraOption(Lcom/bytedance/msdk/api/GDTExtraOption;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->for:Lcom/bytedance/msdk/api/GDTExtraOption;

    return-object p0
.end method

.method public final setMuted(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->do:Z

    return-object p0
.end method

.method public final useSurfaceView(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->new:Z

    return-object p0
.end method
