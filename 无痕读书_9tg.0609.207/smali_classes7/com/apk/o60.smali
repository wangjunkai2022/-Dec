.class public Lcom/apk/o60;
.super Ljava/lang/Object;
.source "GdtProviderBannerNative.java"

# interfaces
.implements Lcom/apk/x60;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/p60;

.field public final synthetic if:Lcom/apk/x60;


# direct methods
.method public constructor <init>(Lcom/apk/p60;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    iput-object p2, p0, Lcom/apk/o60;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/o60;->if:Lcom/apk/x60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    iget-object v1, p0, Lcom/apk/o60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o60;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->switch(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public goto()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenAdClose()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    .line 3
    iget-object v1, v0, Lcom/apk/p60;->case:Lcom/apk/w50;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v1, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    .line 6
    iput-object v3, v1, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 8
    iput-object v3, v0, Lcom/apk/p60;->case:Lcom/apk/w50;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    iget-object v1, p0, Lcom/apk/o60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o60;->if:Lcom/apk/x60;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->while(Ljava/lang/String;Lcom/apk/x60;)V

    :cond_2
    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    iget-object v1, p0, Lcom/apk/o60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o60;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/apk/e70;->for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public new(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    iget-object v1, p0, Lcom/apk/o60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o60;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/e70;->case(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onAdClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/o60;->for:Lcom/apk/p60;

    iget-object v1, p0, Lcom/apk/o60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o60;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->break(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
