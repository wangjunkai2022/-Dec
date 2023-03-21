.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h$b;
.super Ljava/lang/Object;
.source "TTInterNativeAdManager.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_char12/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->a(Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;Z)Z

    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->a(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;Z)V

    return-void
.end method
