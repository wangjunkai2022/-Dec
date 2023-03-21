.class public Lcom/apk/z40$if;
.super Ljava/lang/Object;
.source "GmProviderSplash.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/z40;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/z40;


# direct methods
.method public constructor <init>(Lcom/apk/z40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadTimeout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 5
    iget-object v1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    const v3, 0x1443d

    const-string v4, "csj onTimeout"

    .line 7
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onSplashAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    iget v1, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    .line 5
    iget-object v2, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 7
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onSplashAdLoadSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 5
    iget-object v1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->package(Ljava/lang/String;Lcom/apk/a70;)V

    .line 8
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 9
    iget-boolean v1, v0, Lcom/apk/z40;->catch:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v0, Lcom/apk/z40;->goto:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->showAd(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/apk/z40;->class:Z

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, v0, Lcom/apk/z40;->goto:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    iget-object v0, p0, Lcom/apk/z40$if;->do:Lcom/apk/z40;

    .line 17
    iget-object v1, v0, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    .line 18
    iget-object v0, v0, Lcom/apk/z40;->goto:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->showAd(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method
