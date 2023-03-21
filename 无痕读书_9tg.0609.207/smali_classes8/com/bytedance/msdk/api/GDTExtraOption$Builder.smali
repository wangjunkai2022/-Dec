.class public final Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
.super Ljava/lang/Object;
.source "GDTExtraOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/GDTExtraOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I

.field public const:Z

.field public do:Z

.field public else:I

.field public for:Z

.field public goto:I

.field public if:Z

.field public new:Z

.field public this:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->class:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/msdk/api/GDTExtraOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/GDTExtraOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption;-><init>(Lcom/bytedance/msdk/api/GDTExtraOption$Builder;Lcom/bytedance/msdk/api/GDTExtraOption$1;)V

    return-object v0
.end method

.method public setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->else:I

    return-object p0
.end method

.method public setBrowserType(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->goto:I

    return-object p0
.end method

.method public setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->this:I

    return-object p0
.end method

.method public setFeedExpressType(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->class:I

    return-object p0
.end method

.method public setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->if:Z

    return-object p0
.end method

.method public setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->for:Z

    return-object p0
.end method

.method public setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->do:Z

    return-object p0
.end method

.method public setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->new:Z

    return-object p0
.end method

.method public setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->case:I

    return-object p0
.end method

.method public setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->try:I

    return-object p0
.end method

.method public setHeight(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->catch:I

    return-object p0
.end method

.method public setSplashPreLoad(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->const:Z

    return-object p0
.end method

.method public setWidth(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->break:I

    return-object p0
.end method
