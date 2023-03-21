.class public Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;
.super Ljava/lang/Object;
.source "GMViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
    }
.end annotation


# instance fields
.field public final callToActionId:I

.field public final decriptionTextId:I

.field public final extras:Ljava/util/Map;
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

.field public final groupImage1Id:I

.field public final groupImage2Id:I

.field public final groupImage3Id:I

.field public final iconImageId:I

.field public final layoutId:I

.field public final logoLayoutId:I

.field public final mainImageId:I

.field public final mediaViewId:I

.field public final sourceId:I

.field public final titleId:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;)V
    .locals 1
    .param p1    # Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->do:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->layoutId:I

    .line 3
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->if:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->titleId:I

    .line 4
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->for:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->decriptionTextId:I

    .line 5
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->new:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->callToActionId:I

    .line 6
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->try:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->iconImageId:I

    .line 7
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->case:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->mainImageId:I

    .line 8
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->else:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->mediaViewId:I

    .line 9
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->goto:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->sourceId:I

    .line 10
    iget-object v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->const:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->extras:Ljava/util/Map;

    .line 11
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->break:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->groupImage1Id:I

    .line 12
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->catch:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->groupImage2Id:I

    .line 13
    iget v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->class:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->groupImage3Id:I

    .line 14
    iget p1, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder$Builder;->this:I

    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->logoLayoutId:I

    return-void
.end method
