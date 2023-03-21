.class public Lcom/apk/z50;
.super Lcom/apk/b60;
.source "TrBangDanListAd.java"


# instance fields
.field public case:Lcom/apk/j50;

.field public final new:Landroid/app/Activity;

.field public final try:Lcom/apk/x60;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/b60;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/z50;->new:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/z50;->try:Lcom/apk/x60;

    .line 4
    iput-object p3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/z50;->case:Lcom/apk/j50;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, v0, Lcom/apk/j50;->do:Lcom/apk/i60;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v3, v1, Lcom/apk/i60;->try:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    .line 5
    iput-object v2, v1, Lcom/apk/i60;->try:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 6
    :cond_0
    iput-object v2, v0, Lcom/apk/j50;->do:Lcom/apk/i60;

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/apk/j50;->if:Lcom/apk/z70;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/apk/z70;->k()V

    .line 9
    iput-object v2, v0, Lcom/apk/j50;->if:Lcom/apk/z70;

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/apk/j50;->for:Lcom/apk/s70;

    if-eqz v1, :cond_5

    .line 11
    iget-object v3, v1, Lcom/apk/s70;->const:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {v3}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->unregisterConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    .line 12
    iget-object v3, v1, Lcom/apk/s70;->catch:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->destroy()V

    .line 14
    iput-object v2, v1, Lcom/apk/s70;->catch:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;

    .line 15
    :cond_3
    iget-object v3, v1, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {v3}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->destroy()V

    .line 17
    iput-object v2, v1, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 18
    :cond_4
    iput-object v2, v0, Lcom/apk/j50;->for:Lcom/apk/s70;

    :cond_5
    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/z50;->try:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/z50;->try:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/z50;->new:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/apk/z50;->try:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/z50;->try:Lcom/apk/x60;

    invoke-virtual {p0, p3, p4, v0}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p3, Lcom/apk/j50;

    invoke-direct {p3}, Lcom/apk/j50;-><init>()V

    iput-object p3, p0, Lcom/apk/z50;->case:Lcom/apk/j50;

    .line 9
    iget-object p4, p0, Lcom/apk/z50;->new:Landroid/app/Activity;

    iget-object v0, p0, Lcom/apk/z50;->try:Lcom/apk/x60;

    .line 10
    invoke-static {p1}, Lcom/apk/k40;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p3, v0}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    new-instance v1, Lcom/apk/i60;

    invoke-direct {v1}, Lcom/apk/i60;-><init>()V

    iput-object v1, p3, Lcom/apk/j50;->do:Lcom/apk/i60;

    .line 13
    invoke-virtual {v1, p4, p1, p2, v0}, Lcom/apk/i60;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {p1}, Lcom/apk/k40;->package(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "csj"

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "csjmb"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const-string v1, "gm"

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p3, v0}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 19
    :cond_8
    new-instance v1, Lcom/apk/s70;

    invoke-direct {v1}, Lcom/apk/s70;-><init>()V

    iput-object v1, p3, Lcom/apk/j50;->for:Lcom/apk/s70;

    .line 20
    invoke-virtual {v1, p4, p1, p2, v0}, Lcom/apk/s70;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    goto :goto_1

    :cond_9
    const-string p4, "swl"

    .line 21
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 22
    invoke-virtual {p3, p2, v0}, Lcom/apk/t60;->if(Ljava/lang/String;Lcom/apk/b70;)V

    goto :goto_1

    .line 23
    :cond_a
    invoke-virtual {p3, v0}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    goto :goto_1

    .line 24
    :cond_b
    :goto_0
    invoke-virtual {p3, v0}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    .line 25
    :cond_c
    new-instance v1, Lcom/apk/z70;

    invoke-direct {v1}, Lcom/apk/z70;-><init>()V

    iput-object v1, p3, Lcom/apk/j50;->if:Lcom/apk/z70;

    .line 26
    invoke-virtual {v1, p4, p1, p2, v0}, Lcom/apk/z70;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    :goto_1
    return-void
.end method
