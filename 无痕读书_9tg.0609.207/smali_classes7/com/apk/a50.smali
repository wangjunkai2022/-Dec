.class public Lcom/apk/a50;
.super Ljava/lang/Object;
.source "CsjProviderInsert.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Landroid/app/Activity;

.field public final synthetic if:Lcom/apk/w60;

.field public final synthetic new:Lcom/apk/b50;


# direct methods
.method public constructor <init>(Lcom/apk/b50;Ljava/lang/String;Lcom/apk/w60;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    iput-object p2, p0, Lcom/apk/a50;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/a50;->if:Lcom/apk/w60;

    iput-object p4, p0, Lcom/apk/a50;->for:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    iget-object v1, p0, Lcom/apk/a50;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/a50;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/apk/e70;->if(ILjava/lang/String;Ljava/lang/String;Lcom/apk/w60;)V

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

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 3
    iput-object p1, v0, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 4
    iget-object p1, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    .line 5
    iget-object p1, p1, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 6
    new-instance v0, Lcom/apk/a50$do;

    invoke-direct {v0, p0}, Lcom/apk/a50$do;-><init>(Lcom/apk/a50;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 7
    iget-object p1, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    iget-object v0, p0, Lcom/apk/a50;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/a50;->if:Lcom/apk/w60;

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->extends(Ljava/lang/String;Lcom/apk/w60;)V

    .line 9
    iget-object p1, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    .line 10
    iget-boolean v0, p1, Lcom/apk/b50;->try:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object p1, p1, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    :cond_1
    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/a50;->new:Lcom/apk/b50;

    iget-object v0, p0, Lcom/apk/a50;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/a50;->if:Lcom/apk/w60;

    const v2, 0x14440

    const-string v3, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684list\u4e3a\u7a7a"

    .line 14
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/apk/e70;->if(ILjava/lang/String;Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method
