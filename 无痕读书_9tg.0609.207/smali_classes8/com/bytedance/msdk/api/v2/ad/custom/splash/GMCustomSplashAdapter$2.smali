.class public Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$2;
.super Ljava/lang/Object;
.source "GMCustomSplashAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callSplashAdShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$2;->do:Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$2;->do:Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$2$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter$2;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkShow(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    return-void
.end method
