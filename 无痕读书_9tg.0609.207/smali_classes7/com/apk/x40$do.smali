.class public Lcom/apk/x40$do;
.super Ljava/lang/Object;
.source "CsjProviderFullVideo.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x40;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x40;


# direct methods
.method public constructor <init>(Lcom/apk/x40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x40$do;->do:Lcom/apk/x40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/x40$do;->do:Lcom/apk/x40;

    iget-object v1, v0, Lcom/apk/x40;->for:Lcom/apk/y40;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/apk/x40;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/x40;->if:Lcom/apk/v60;

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->return(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/x40$do;->do:Lcom/apk/x40;

    iget-object v0, v0, Lcom/apk/x40;->for:Lcom/apk/y40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/h70;->l()V

    .line 4
    iget-object v0, p0, Lcom/apk/x40$do;->do:Lcom/apk/x40;

    iget-object v1, v0, Lcom/apk/x40;->for:Lcom/apk/y40;

    iget-object v2, v0, Lcom/apk/x40;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/x40;->if:Lcom/apk/v60;

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->transient(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/x40$do;->do:Lcom/apk/x40;

    iget-object v1, v0, Lcom/apk/x40;->for:Lcom/apk/y40;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/apk/x40;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/x40;->if:Lcom/apk/v60;

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->super(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/x40$do;->do:Lcom/apk/x40;

    iget-object v1, v0, Lcom/apk/x40;->for:Lcom/apk/y40;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/apk/x40;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Lcom/apk/e70;->default(Ljava/lang/String;)V

    return-void
.end method
