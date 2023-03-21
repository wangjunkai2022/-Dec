.class public Lcom/apk/l50$do$do;
.super Ljava/lang/Object;
.source "CsjProviderSplash.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/l50$do;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/l50$do;


# direct methods
.method public constructor <init>(Lcom/apk/l50$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l50$do$do;->do:Lcom/apk/l50$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/l50$do$do;->do:Lcom/apk/l50$do;

    iget-object p2, p1, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v0, p2, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    .line 4
    invoke-virtual {p2, v0, p1}, Lcom/apk/e70;->class(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/l50$do$do;->do:Lcom/apk/l50$do;

    iget-object p2, p1, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v0, p2, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    .line 4
    invoke-virtual {p2, v0, p1}, Lcom/apk/e70;->throws(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onAdSkip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l50$do$do;->do:Lcom/apk/l50$do;

    iget-object v1, v0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onAdTimeOver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l50$do$do;->do:Lcom/apk/l50$do;

    iget-object v1, v0, Lcom/apk/l50$do;->case:Lcom/apk/l50;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/apk/l50$do;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/l50$do;->if:Lcom/apk/a70;

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method
