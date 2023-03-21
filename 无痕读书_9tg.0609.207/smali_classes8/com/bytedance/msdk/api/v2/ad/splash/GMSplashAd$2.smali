.class public Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;
.super Ljava/lang/Object;
.source "GMSplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/ViewGroup;

.field public final synthetic if:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;->if:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;->do:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;->if:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;->do:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
