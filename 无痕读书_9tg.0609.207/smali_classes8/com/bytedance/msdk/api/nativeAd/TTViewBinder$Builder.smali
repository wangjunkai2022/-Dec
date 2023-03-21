.class public Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
.super Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
.source "TTViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/nativeAd/TTViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->addExtra(Ljava/lang/String;I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addExtras(Ljava/util/Map;)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
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
            "Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addExtras(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->addExtras(Ljava/util/Map;)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/bytedance/msdk/api/nativeAd/TTViewBinder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder;-><init>(Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->build()Lcom/bytedance/msdk/api/nativeAd/TTViewBinder;

    move-result-object v0

    return-object v0
.end method

.method public final callToActionId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->new:I

    return-object p0
.end method

.method public bridge synthetic callToActionId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->callToActionId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final decriptionTextId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->for:I

    return-object p0
.end method

.method public descriptionTextId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->for:I

    return-object p0
.end method

.method public bridge synthetic descriptionTextId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->descriptionTextId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public groupImage1Id(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->break:I

    return-object p0
.end method

.method public bridge synthetic groupImage1Id(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->groupImage1Id(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final groupImage2Id(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->catch:I

    return-object p0
.end method

.method public bridge synthetic groupImage2Id(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->groupImage2Id(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final groupImage3Id(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->class:I

    return-object p0
.end method

.method public bridge synthetic groupImage3Id(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->groupImage3Id(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final iconImageId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->try:I

    return-object p0
.end method

.method public bridge synthetic iconImageId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->iconImageId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public logoLayoutId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->this:I

    return-object p0
.end method

.method public bridge synthetic logoLayoutId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->logoLayoutId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mainImageId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->case:I

    return-object p0
.end method

.method public bridge synthetic mainImageId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->mainImageId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mediaViewIdId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->else:I

    return-object p0
.end method

.method public bridge synthetic mediaViewIdId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->mediaViewIdId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final sourceId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->goto:I

    return-object p0
.end method

.method public bridge synthetic sourceId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->sourceId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public titleId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->if:I

    return-object p0
.end method

.method public bridge synthetic titleId(I)Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;->titleId(I)Lcom/bytedance/msdk/api/nativeAd/TTViewBinder$Builder;

    move-result-object p1

    return-object p1
.end method
