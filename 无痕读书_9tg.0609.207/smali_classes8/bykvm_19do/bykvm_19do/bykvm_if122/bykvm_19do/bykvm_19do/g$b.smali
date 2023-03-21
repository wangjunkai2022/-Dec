.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;
.super Ljava/lang/Object;
.source "TTInterFullVideoAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->d(Lcom/bytedance/msdk/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/msdk/api/AdError;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;Lcom/bytedance/msdk/api/AdError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;->a:Lcom/bytedance/msdk/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;)Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;)Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;->a:Lcom/bytedance/msdk/api/AdError;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdShowFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    return-void
.end method
