.class public Lcom/apk/c60$do;
.super Ljava/lang/Object;
.source "TrFullVideoAd.java"

# interfaces
.implements Lcom/apk/v60;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/c60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/c60;


# direct methods
.method public constructor <init>(Lcom/apk/c60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    .line 2
    iget-object v0, v0, Lcom/apk/c60;->for:Lcom/apk/v60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    .line 2
    iget-object v0, v0, Lcom/apk/c60;->for:Lcom/apk/v60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/v60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    .line 2
    iget-object v0, v0, Lcom/apk/c60;->for:Lcom/apk/v60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/v60;->onAdClose()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    .line 2
    iget-object v0, v0, Lcom/apk/c60;->for:Lcom/apk/v60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/v60;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    .line 2
    iget-object v0, v0, Lcom/apk/c60;->for:Lcom/apk/v60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/v60;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60$do;->do:Lcom/apk/c60;

    .line 2
    iget-object v0, v0, Lcom/apk/c60;->for:Lcom/apk/v60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/v60;->onVideoCached()V

    :cond_0
    return-void
.end method
