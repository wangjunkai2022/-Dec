.class public Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$1;
.super Ljava/lang/Object;
.source "GMCustomDrawAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerViewForInteractionInner(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->static:Z

    .line 3
    iput-object p5, v0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->switch:Ljava/util/List;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public unregisterViewInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$1;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->unregisterViewInner()V

    return-void
.end method
