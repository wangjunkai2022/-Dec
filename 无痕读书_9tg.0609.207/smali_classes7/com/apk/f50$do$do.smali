.class public Lcom/apk/f50$do$do;
.super Ljava/lang/Object;
.source "CsjProviderRectangle.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/f50$do;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f50$do;


# direct methods
.method public constructor <init>(Lcom/apk/f50$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f50$do$do;->do:Lcom/apk/f50$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/f50$do$do;->do:Lcom/apk/f50$do;

    iget-object p2, p1, Lcom/apk/f50$do;->new:Lcom/apk/f50;

    iget-object v0, p1, Lcom/apk/f50$do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/f50$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/apk/e70;->strictfp(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/f50$do$do;->do:Lcom/apk/f50$do;

    iget-object p2, p1, Lcom/apk/f50$do;->new:Lcom/apk/f50;

    iget-object v0, p1, Lcom/apk/f50$do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/f50$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/apk/e70;->synchronized(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/f50$do$do;->do:Lcom/apk/f50$do;

    iget-object p1, p1, Lcom/apk/f50$do;->new:Lcom/apk/f50;

    .line 2
    iget-object v0, p1, Lcom/apk/f50;->else:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/apk/f50;->else:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/f50$do$do;->do:Lcom/apk/f50$do;

    iget-object v0, p1, Lcom/apk/f50$do;->new:Lcom/apk/f50;

    iget-object v1, p1, Lcom/apk/f50$do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/f50$do;->if:Lcom/apk/x60;

    .line 6
    invoke-virtual {v0, p3, p2, v1, p1}, Lcom/apk/e70;->const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/apk/f50$do$do;->do:Lcom/apk/f50$do;

    iget-object p3, p2, Lcom/apk/f50$do;->new:Lcom/apk/f50;

    iget-object v0, p2, Lcom/apk/f50$do;->do:Ljava/lang/String;

    iget-object p2, p2, Lcom/apk/f50$do;->if:Lcom/apk/x60;

    .line 2
    invoke-virtual {p3, p1, v0, p2}, Lcom/apk/e70;->final(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
