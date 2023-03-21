.class public Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
.super Ljava/lang/Object;
.source "GMViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I

.field public const:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public do:I

.field public else:I

.field public for:I

.field public goto:I

.field public if:I

.field public new:I

.field public this:I

.field public try:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    .line 3
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->do:I

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExtras(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    return-object p0
.end method

.method public build()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;-><init>(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;)V

    return-object v0
.end method

.method public callToActionId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->new:I

    return-object p0
.end method

.method public descriptionTextId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->for:I

    return-object p0
.end method

.method public groupImage1Id(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->break:I

    return-object p0
.end method

.method public groupImage2Id(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->catch:I

    return-object p0
.end method

.method public groupImage3Id(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->class:I

    return-object p0
.end method

.method public iconImageId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->try:I

    return-object p0
.end method

.method public logoLayoutId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->this:I

    return-object p0
.end method

.method public mainImageId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->case:I

    return-object p0
.end method

.method public mediaViewIdId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->else:I

    return-object p0
.end method

.method public sourceId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->goto:I

    return-object p0
.end method

.method public titleId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->if:I

    return-object p0
.end method
