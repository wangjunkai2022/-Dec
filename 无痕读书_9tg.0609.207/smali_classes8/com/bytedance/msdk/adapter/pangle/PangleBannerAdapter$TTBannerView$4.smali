.class public Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->new:Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TTBannerView onRenderFail -> code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",msg="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK_banner"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-virtual {p3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "TTBannerView onRenderSuccess \u6e32\u67d3\u6210\u529f\uff01\uff01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TTMediationSDK_banner"

    invoke-static {p3, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    iget-object p3, p2, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->if:Landroid/view/View;

    instance-of p3, p3, Landroid/widget/FrameLayout;

    if-eqz p3, :cond_0

    iget-object p2, p2, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->removeFromParent(Landroid/view/View;)V

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    iget-object p2, p2, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->if:Landroid/view/View;

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;->do:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->new:Z

    const/16 p1, 0x12

    :goto_0
    :pswitch_0
    const/16 p2, 0xd

    const/16 p3, 0xd

    :goto_1
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    return-void

    :goto_2
    :pswitch_3
    packed-switch p1, :pswitch_data_2

    goto :goto_4

    :goto_3
    :pswitch_4
    nop

    goto :goto_3

    :goto_4
    const/16 p1, 0xc

    goto :goto_2

    :pswitch_5
    const/16 p3, 0xf

    const/16 p1, 0xd

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
