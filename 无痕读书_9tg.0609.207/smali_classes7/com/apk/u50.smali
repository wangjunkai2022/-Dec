.class public Lcom/apk/u50;
.super Ljava/lang/Object;
.source "TrGdtNativeUnifiedAD.java"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# instance fields
.field public final synthetic do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field public final synthetic if:Lcom/apk/t50;


# direct methods
.method public constructor <init>(Lcom/apk/t50;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u50;->if:Lcom/apk/t50;

    iput-object p2, p0, Lcom/apk/u50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/u50;->if:Lcom/apk/t50;

    .line 2
    iget-object v0, v0, Lcom/apk/t50;->if:Lcom/apk/x60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/x60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/u50;->if:Lcom/apk/t50;

    .line 2
    iget-object v0, v0, Lcom/apk/t50;->if:Lcom/apk/x60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onADExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/u50;->if:Lcom/apk/t50;

    .line 2
    iget-object v0, v0, Lcom/apk/t50;->if:Lcom/apk/x60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/x60;->do()V

    :cond_0
    return-void
.end method

.method public onADStatusChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/u50;->if:Lcom/apk/t50;

    .line 2
    iget-object v0, v0, Lcom/apk/t50;->goto:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/apk/u50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 4
    invoke-static {v0, v1}, Lcom/apk/t50;->if(Landroid/widget/TextView;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    return-void
.end method
