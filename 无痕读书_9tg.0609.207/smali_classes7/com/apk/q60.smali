.class public Lcom/apk/q60;
.super Ljava/lang/Object;
.source "GdtProviderFullVideo.java"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/s60;

.field public final synthetic if:Lcom/apk/v60;


# direct methods
.method public constructor <init>(Lcom/apk/s60;Ljava/lang/String;Lcom/apk/v60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    iput-object p2, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->super(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onADClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->return(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onADExposure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->transient(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    invoke-virtual {v0}, Lcom/apk/h70;->l()V

    return-void
.end method

.method public onADReceive()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    iget-object v1, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->continue(Ljava/lang/String;Lcom/apk/v60;)V

    .line 6
    iget-object v3, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    iget-object v4, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v8, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    const-wide/16 v5, 0x1f40

    const/4 v7, 0x1

    .line 7
    invoke-virtual/range {v3 .. v8}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    .line 5
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->do(ILjava/lang/String;Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onRenderFail()V
    .locals 0

    return-void
.end method

.method public onRenderSuccess()V
    .locals 0

    return-void
.end method

.method public onVideoCached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/apk/f70;->new:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 5
    iget-object v0, p0, Lcom/apk/q60;->for:Lcom/apk/s60;

    iget-object v1, p0, Lcom/apk/q60;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/q60;->if:Lcom/apk/v60;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->goto(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method
