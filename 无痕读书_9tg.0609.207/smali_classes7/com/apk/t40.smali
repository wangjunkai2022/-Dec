.class public Lcom/apk/t40;
.super Ljava/lang/Object;
.source "CsjProviderBannerList.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Landroid/app/Activity;

.field public final synthetic if:Lcom/apk/x60;

.field public final synthetic new:Lcom/apk/u40;


# direct methods
.method public constructor <init>(Lcom/apk/u40;Ljava/lang/String;Lcom/apk/x60;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    iput-object p2, p0, Lcom/apk/t40;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/t40;->if:Lcom/apk/x60;

    iput-object p4, p0, Lcom/apk/t40;->for:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    invoke-virtual {v0}, Lcom/apk/u40;->j()V

    .line 2
    iget-object v0, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    iget-object v1, p0, Lcom/apk/t40;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/t40;->if:Lcom/apk/x60;

    .line 3
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/apk/e70;->for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 3
    iput-object p1, v0, Lcom/apk/u40;->try:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 4
    iget-object p1, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    .line 5
    iget-object p1, p1, Lcom/apk/u40;->try:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 6
    new-instance v0, Lcom/apk/t40$do;

    invoke-direct {v0, p0}, Lcom/apk/t40$do;-><init>(Lcom/apk/t40;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 7
    iget-object p1, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    .line 8
    iget-object p1, p1, Lcom/apk/u40;->try:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 9
    iget-object v0, p0, Lcom/apk/t40;->for:Landroid/app/Activity;

    new-instance v1, Lcom/apk/t40$if;

    invoke-direct {v1, p0}, Lcom/apk/t40$if;-><init>(Lcom/apk/t40;)V

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 10
    iget-object p1, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    .line 11
    iget-object p1, p1, Lcom/apk/u40;->try:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 12
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    return-void

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/t40;->new:Lcom/apk/u40;

    iget-object v0, p0, Lcom/apk/t40;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/t40;->if:Lcom/apk/x60;

    const v2, 0x14440

    const-string v3, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684list\u4e3a\u7a7a"

    .line 14
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/apk/e70;->for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
