.class public Lcom/apk/i60$do;
.super Ljava/lang/Object;
.source "GdtProviderBangDan.java"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/i60;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/i60;

.field public final synthetic if:Lcom/apk/x60;


# direct methods
.method public constructor <init>(Lcom/apk/i60;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iput-object p2, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iget-object v0, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->strictfp(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenAdClose()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    .line 3
    iget-object v0, p1, Lcom/apk/i60;->try:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/apk/i60;->try:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iget-object v0, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->implements(Ljava/lang/String;Lcom/apk/x60;)V

    :cond_1
    return-void
.end method

.method public onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iget-object v0, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->synchronized(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iget-object v0, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    const v2, 0x14440

    const-string v3, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684list\u4e3a\u7a7a"

    .line 3
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/apk/e70;->const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 5
    iput-object p1, v0, Lcom/apk/i60;->try:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 6
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    .line 7
    iget-object p1, p1, Lcom/apk/i60;->try:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 8
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iget-object v0, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    const/4 v2, -0x1

    const-string v3, ""

    .line 2
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/apk/e70;->const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/i60$do;->for:Lcom/apk/i60;

    iget-object v1, p0, Lcom/apk/i60$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/i60$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/e70;->final(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
