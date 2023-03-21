.class public Lcom/apk/s70$do;
.super Ljava/lang/Object;
.source "GmProviderBangDan.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/s70;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/s70;


# direct methods
.method public constructor <init>(Lcom/apk/s70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    .line 3
    iget-object v0, p1, Lcom/apk/s70;->goto:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lcom/apk/s70;->break:Lcom/apk/x60;

    const v2, 0x14440

    const-string v3, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684list\u4e3a\u7a7a"

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/apk/e70;->const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 7
    iput-object p1, v0, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 8
    iget-object p1, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    .line 9
    iget-object p1, p1, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 10
    new-instance v0, Lcom/apk/s70$do$do;

    invoke-direct {v0, p0}, Lcom/apk/s70$do$do;-><init>(Lcom/apk/s70$do;)V

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setNativeAdListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;)V

    .line 11
    iget-object p1, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    .line 12
    iget-object p1, p1, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 13
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->hasDislike()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    .line 15
    iget-object v0, p1, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 16
    iget-object p1, p1, Lcom/apk/s70;->else:Landroid/app/Activity;

    .line 17
    new-instance v1, Lcom/apk/s70$do$if;

    invoke-direct {v1, p0}, Lcom/apk/s70$do$if;-><init>(Lcom/apk/s70$do;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    .line 19
    iget-object p1, p1, Lcom/apk/s70;->class:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    .line 20
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->render()V

    return-void
.end method

.method public onAdLoadedFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    iget v1, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lcom/apk/s70;->goto:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lcom/apk/s70;->break:Lcom/apk/x60;

    .line 4
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method
