.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;
    }
.end annotation


# static fields
.field public static this:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            "Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public do:Ljava/lang/String;

.field public else:I

.field public for:Landroid/content/Context;

.field public final goto:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

.field public if:I

.field public new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

.field public try:Lcom/qq/e/ads/nativ/NativeExpressAD;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->goto:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    return-void
.end method

.method public static do(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;Lcom/qq/e/comm/pi/AdData$VideoPlayer;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "{state:"

    .line 1
    invoke-static {p0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lcom/qq/e/comm/pi/AdData$VideoPlayer;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/qq/e/comm/pi/AdData$VideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "position:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/qq/e/comm/pi/AdData$VideoPlayer;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    throw v0
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;ZLcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V
    .locals 6
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->for:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {p3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, -0x2

    const/4 p3, -0x1

    if-nez p1, :cond_2

    new-instance p1, Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->for:Landroid/content/Context;

    .line 1
    new-instance v0, Lcom/qq/e/ads/nativ/ADSize;

    invoke-direct {v0, p3, p2}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    iget p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->else:I

    if-lez p3, :cond_1

    new-instance v0, Lcom/qq/e/ads/nativ/ADSize;

    invoke-direct {v0, p3, p2}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    :cond_1
    move-object v2, v0

    .line 2
    iget-object v3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->do:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->goto:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->for:Landroid/content/Context;

    .line 3
    new-instance v1, Lcom/qq/e/ads/nativ/ADSize;

    invoke-direct {v1, p3, p2}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    iget p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->else:I

    if-lez p3, :cond_3

    new-instance v1, Lcom/qq/e/ads/nativ/ADSize;

    invoke-direct {v1, p3, p2}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    .line 4
    :cond_3
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->do:Ljava/lang/String;

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->goto:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    :goto_0
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->try:Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMinVideoDuration(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->try:Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMaxVideoDuration(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->try:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->try:Lcom/qq/e/ads/nativ/NativeExpressAD;

    sget-object p2, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->try:Lcom/qq/e/ads/nativ/NativeExpressAD;

    sget-object p2, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->try:Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->if:I

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    :cond_6
    :goto_2
    return-void
.end method
