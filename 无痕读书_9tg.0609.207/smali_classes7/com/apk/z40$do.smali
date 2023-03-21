.class public Lcom/apk/z40$do;
.super Ljava/lang/Object;
.source "GmProviderSplash.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;


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
    iput-object p1, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->class(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onAdDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->throws(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

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

.method public onAdSkip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/z40$do;->do:Lcom/apk/z40;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method
