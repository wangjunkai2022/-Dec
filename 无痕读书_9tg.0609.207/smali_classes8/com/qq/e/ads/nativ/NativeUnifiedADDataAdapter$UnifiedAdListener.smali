.class public Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnifiedAdListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->d(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)Z

    move-result p1

    return-void
.end method
