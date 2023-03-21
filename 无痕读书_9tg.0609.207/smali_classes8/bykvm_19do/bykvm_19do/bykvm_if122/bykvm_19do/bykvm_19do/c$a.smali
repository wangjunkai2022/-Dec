.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c$a;
.super Ljava/lang/Object;
.source "TTInterAdInterstitialManager.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const v2, 0x9c74

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
