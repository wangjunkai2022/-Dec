.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;
    }
.end annotation


# instance fields
.field public break:Landroid/widget/FrameLayout$LayoutParams;

.field public case:I

.field public catch:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field public else:Landroid/content/Context;

.field public for:Ljava/lang/String;

.field public goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

.field public if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

.field public new:I

.field public this:Lcom/qq/e/ads/cfg/VideoOption;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;ZLcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->else:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->catch:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    new-instance p2, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$1;

    invoke-direct {p2, p0, p3}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    invoke-virtual {p3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->for:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->for:Ljava/lang/String;

    invoke-direct {p3, p1, v0, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iput-object p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    :goto_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->case:I

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->try:I

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->this:Lcom/qq/e/ads/cfg/VideoOption;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    sget-object p3, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_1
    invoke-virtual {p1, p3}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    sget-object p3, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->try:I

    if-lez p1, :cond_3

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    invoke-virtual {p3, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMinVideoDuration(I)V

    :cond_3
    iget p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->case:I

    if-lez p1, :cond_4

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    invoke-virtual {p3, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    sget-object p2, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_3
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    sget-object p2, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_3

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    :cond_7
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->if:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    if-eqz p1, :cond_8

    iget p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->new:I

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    :cond_8
    return-void
.end method
