.class public Lcom/apk/r60;
.super Ljava/lang/Object;
.source "GdtProviderFullVideo.java"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/s60;

.field public final synthetic if:Lcom/apk/v60;


# direct methods
.method public constructor <init>(Lcom/apk/s60;Ljava/lang/String;Lcom/apk/v60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r60;->for:Lcom/apk/s60;

    iput-object p2, p0, Lcom/apk/r60;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/r60;->if:Lcom/apk/v60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/r60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/r60;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/e70;->default(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 0

    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPageClose()V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReady(J)V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
