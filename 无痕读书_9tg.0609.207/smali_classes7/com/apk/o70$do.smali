.class public Lcom/apk/o70$do;
.super Ljava/lang/Object;
.source "GdtProviderSplash.java"

# interfaces
.implements Lcom/qq/e/ads/splash/SplashADZoomOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/o70;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/o70;

.field public final synthetic if:Lcom/apk/a70;


# direct methods
.method public constructor <init>(Lcom/apk/o70;Ljava/lang/String;Lcom/apk/a70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    iput-object p2, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/o70$do;->if:Lcom/apk/a70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportZoomOut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onADClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o70$do;->if:Lcom/apk/a70;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->class(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onADDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/o70;->k(Lcom/apk/o70;Ljava/lang/String;)V

    return-void
.end method

.method public onADExposure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o70$do;->if:Lcom/apk/a70;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->throws(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onADLoaded(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p1, v0, Lcom/apk/o70;->break:J

    .line 4
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 5
    iget-object p1, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    iget-object p2, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/o70$do;->if:Lcom/apk/a70;

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/apk/e70;->package(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onADPresent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v0, v0, Lcom/apk/f70;->for:Z

    return-void
.end method

.method public onADTick(J)V
    .locals 0

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/o70$do;->if:Lcom/apk/a70;

    .line 5
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onZoomOut()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/o70$do;->for:Lcom/apk/o70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/o70;->case:Z

    .line 4
    iget-object v1, p0, Lcom/apk/o70$do;->do:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/o70;->k(Lcom/apk/o70;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomOutPlayFinish()V
    .locals 0

    return-void
.end method
