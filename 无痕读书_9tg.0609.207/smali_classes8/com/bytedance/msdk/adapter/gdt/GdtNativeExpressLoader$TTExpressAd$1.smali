.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    :cond_0
    return-void
.end method
