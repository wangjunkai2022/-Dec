.class public Lcom/bytedance/msdk/api/TTVideoOption;
.super Ljava/lang/Object;
.source "TTVideoOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/TTVideoOption$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final do:Z

.field public for:F

.field public final if:Z

.field public new:Lcom/bytedance/msdk/api/GDTExtraOption;

.field public try:Lcom/bytedance/msdk/api/BaiduExtraOptions;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/TTVideoOption$Builder;Lcom/bytedance/msdk/api/TTVideoOption$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTVideoOption;->do:Z

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->if:F

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/TTVideoOption;->for:F

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->for:Lcom/bytedance/msdk/api/GDTExtraOption;

    .line 7
    iput-object p2, p0, Lcom/bytedance/msdk/api/TTVideoOption;->new:Lcom/bytedance/msdk/api/GDTExtraOption;

    .line 8
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->new:Z

    .line 9
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/TTVideoOption;->if:Z

    .line 10
    iget-object p1, p1, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->try:Lcom/bytedance/msdk/api/BaiduExtraOptions;

    .line 11
    iput-object p1, p0, Lcom/bytedance/msdk/api/TTVideoOption;->try:Lcom/bytedance/msdk/api/BaiduExtraOptions;

    return-void
.end method


# virtual methods
.method public getAdmobAppVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/TTVideoOption;->for:F

    return v0
.end method

.method public getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTVideoOption;->try:Lcom/bytedance/msdk/api/BaiduExtraOptions;

    return-object v0
.end method

.method public getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTVideoOption;->new:Lcom/bytedance/msdk/api/GDTExtraOption;

    return-object v0
.end method

.method public isMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTVideoOption;->do:Z

    return v0
.end method

.method public useSurfaceView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/TTVideoOption;->if:Z

    return v0
.end method
