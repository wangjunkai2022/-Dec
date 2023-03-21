.class public Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$4;
.super Ljava/lang/Object;
.source "GMCustomDrawAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;


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
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$4;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasDislike()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$4;->do:Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->hasDislike()Z

    move-result v0

    return v0
.end method
