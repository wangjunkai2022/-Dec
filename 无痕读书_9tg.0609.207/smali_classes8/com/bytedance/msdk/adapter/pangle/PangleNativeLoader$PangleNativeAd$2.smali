.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMAdDislike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$2;->do:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDislikeCallback(Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    return-void
.end method

.method public showDislikeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$2;->do:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    :cond_0
    return-void
.end method
