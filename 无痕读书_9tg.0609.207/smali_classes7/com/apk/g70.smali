.class public Lcom/apk/g70;
.super Lcom/apk/f70;
.source "GdtProviderRectangle.java"


# instance fields
.field public try:Lcom/qq/e/ads/nativ/NativeExpressADView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/apk/e70;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 3
    new-instance v1, Lcom/qq/e/ads/nativ/ADSize;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    .line 4
    new-instance v2, Lcom/apk/g70$do;

    invoke-direct {v2, p0, p2, p4}, Lcom/apk/g70$do;-><init>(Lcom/apk/g70;Ljava/lang/String;Lcom/apk/x60;)V

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    .line 5
    new-instance p1, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    return-void
.end method
