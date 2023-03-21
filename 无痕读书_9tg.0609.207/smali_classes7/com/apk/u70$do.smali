.class public Lcom/apk/u70$do;
.super Ljava/lang/Object;
.source "GmProviderCpFullVideo.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/interstitialFull/GMInterstitialFullAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/u70;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/u70;


# direct methods
.method public constructor <init>(Lcom/apk/u70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialFullAdLoad()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    .line 5
    iget-object v1, v0, Lcom/apk/u70;->break:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/apk/u70;->class:Lcom/apk/v60;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->continue(Ljava/lang/String;Lcom/apk/v60;)V

    .line 8
    iget-object v3, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    .line 9
    iget-object v4, v3, Lcom/apk/u70;->break:Ljava/lang/String;

    .line 10
    iget-object v8, v3, Lcom/apk/u70;->class:Lcom/apk/v60;

    const-wide/16 v5, 0x1f40

    const/4 v7, 0x1

    .line 11
    invoke-virtual/range {v3 .. v8}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    return-void
.end method

.method public onInterstitialFullCached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

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
    iget-object v0, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    .line 6
    iget-object v1, v0, Lcom/apk/u70;->break:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/apk/u70;->class:Lcom/apk/v60;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->goto(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onInterstitialFullLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    iget v1, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    .line 5
    iget-object v2, v0, Lcom/apk/u70;->break:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lcom/apk/u70;->class:Lcom/apk/v60;

    .line 7
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->do(ILjava/lang/String;Ljava/lang/String;Lcom/apk/v60;)V

    .line 8
    iget-object p1, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    .line 9
    iget-object p1, p1, Lcom/apk/u70;->const:Lcom/bytedance/msdk/api/v2/ad/interstitialFull/GMInterstitialFullAd;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/interstitialFull/GMInterstitialFullAd;->destroy()V

    .line 11
    iget-object p1, p0, Lcom/apk/u70$do;->do:Lcom/apk/u70;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Lcom/apk/u70;->const:Lcom/bytedance/msdk/api/v2/ad/interstitialFull/GMInterstitialFullAd;

    :cond_1
    return-void
.end method
