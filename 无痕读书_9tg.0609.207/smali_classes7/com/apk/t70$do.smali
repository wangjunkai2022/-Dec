.class public Lcom/apk/t70$do;
.super Ljava/lang/Object;
.source "GmProviderBanner.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/t70;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/t70;


# direct methods
.method public constructor <init>(Lcom/apk/t70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t70$do;->do:Lcom/apk/t70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/t70$do;->do:Lcom/apk/t70;

    iget v1, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lcom/apk/t70;->case:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lcom/apk/t70;->goto:Lcom/apk/x60;

    .line 4
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/t70$do;->do:Lcom/apk/t70;

    .line 2
    iget-object v1, v0, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/apk/t70;->case:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/t70;->goto:Lcom/apk/x60;

    const v3, 0x14440

    const-string v4, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684list\u4e3a\u7a7a"

    .line 5
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/apk/e70;->for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;->getBannerView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/t70$do;->do:Lcom/apk/t70;

    .line 7
    iget-object v3, v2, Lcom/apk/t70;->case:Ljava/lang/String;

    .line 8
    iget-object v2, v2, Lcom/apk/t70;->goto:Lcom/apk/x60;

    .line 9
    invoke-virtual {v0, v1, v3, v2}, Lcom/apk/e70;->case(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
