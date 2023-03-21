.class public Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;
.super Ljava/lang/Object;
.source "GMCustomBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->loadAd(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;

.field public final synthetic if:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;->for:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;->do:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;->if:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;->for:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;

    iget-object v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->private:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    iget-object v2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;->do:Landroid/content/Context;

    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->package:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    iget-object v3, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;->if:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;

    invoke-virtual {v1, v2, v0, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->loadCustom(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V

    return-void
.end method
