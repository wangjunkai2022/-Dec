.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$3;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$3;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    :cond_0
    return-void
.end method
