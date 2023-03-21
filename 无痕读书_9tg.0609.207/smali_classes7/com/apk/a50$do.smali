.class public Lcom/apk/a50$do;
.super Ljava/lang/Object;
.source "CsjProviderInsert.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/a50;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/a50;


# direct methods
.method public constructor <init>(Lcom/apk/a50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a50$do;->do:Lcom/apk/a50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/a50$do;->do:Lcom/apk/a50;

    iget-object p2, p1, Lcom/apk/a50;->new:Lcom/apk/b50;

    iget-object v0, p1, Lcom/apk/a50;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/a50;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/apk/e70;->this(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onAdDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/a50$do;->do:Lcom/apk/a50;

    iget-object v1, v0, Lcom/apk/a50;->new:Lcom/apk/b50;

    iget-object v2, v0, Lcom/apk/a50;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/a50;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->throw(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/a50$do;->do:Lcom/apk/a50;

    iget-object p2, p1, Lcom/apk/a50;->new:Lcom/apk/b50;

    iget-object v0, p1, Lcom/apk/a50;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/a50;->if:Lcom/apk/w60;

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/apk/e70;->static(Ljava/lang/String;Lcom/apk/w60;)V

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/a50$do;->do:Lcom/apk/a50;

    iget-object p2, p1, Lcom/apk/a50;->new:Lcom/apk/b50;

    .line 2
    iget-object p2, p2, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 3
    iget-object p1, p1, Lcom/apk/a50;->for:Landroid/app/Activity;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V

    return-void
.end method
