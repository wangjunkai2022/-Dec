.class public Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$2;
.super Ljava/lang/Object;
.source "GMCustomRewardAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;->callRewardClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$2;->do:Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$2;->do:Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$2$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter$2;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkClick(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    return-void
.end method
