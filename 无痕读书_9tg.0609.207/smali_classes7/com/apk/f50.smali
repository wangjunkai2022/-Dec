.class public Lcom/apk/f50;
.super Lcom/apk/k70;
.source "CsjProviderRectangle.java"


# instance fields
.field public else:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/k70;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/apk/e70;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 5
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 6
    invoke-virtual {p0}, Lcom/apk/k70;->j()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/apk/r70;->for(F)I

    move-result v0

    int-to-float v0, v0

    .line 7
    iget v1, p0, Lcom/apk/k70;->case:I

    int-to-float v1, v1

    .line 8
    invoke-static {v1}, Lcom/apk/r70;->for(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p3

    .line 10
    invoke-static {p1}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    new-instance v1, Lcom/apk/f50$do;

    invoke-direct {v1, p0, p2, p4, p1}, Lcom/apk/f50$do;-><init>(Lcom/apk/f50;Ljava/lang/String;Lcom/apk/x60;Landroid/app/Activity;)V

    invoke-interface {v0, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    return-void
.end method
