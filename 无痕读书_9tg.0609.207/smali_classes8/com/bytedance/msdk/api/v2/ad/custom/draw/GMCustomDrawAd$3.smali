.class public Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;
.super Ljava/lang/Object;
.source "GMCustomDrawAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;


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
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public onPauseInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public onResumeInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
