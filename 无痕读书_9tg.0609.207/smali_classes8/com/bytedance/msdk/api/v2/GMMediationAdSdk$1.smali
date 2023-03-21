.class public final Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;
.super Ljava/lang/Object;
.source "GMMediationAdSdk.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->preload(Landroid/app/Activity;Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic for:I

.field public final synthetic if:Ljava/util/List;

.field public final synthetic new:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->if:Ljava/util/List;

    iput p3, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->for:I

    iput p4, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->new:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 5

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->do:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->if:Ljava/util/List;

    iget v3, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->for:I

    iget v4, p0, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk$1;->new:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Landroid/app/Activity;Ljava/util/List;II)V

    return-void
.end method
