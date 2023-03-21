.class public Lcom/apk/e60$if;
.super Ljava/lang/Object;
.source "TrOpenAd.java"

# interfaces
.implements Lcom/apk/z60;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/e60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/e60;


# direct methods
.method public constructor <init>(Lcom/apk/e60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 2
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->do()V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 2
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 2
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 2
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onAdDismiss()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 2
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->for()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 5
    iget-object v1, v0, Lcom/apk/e60;->else:Lcom/apk/m60;

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/apk/e60;->if:Landroid/app/Activity;

    .line 7
    invoke-virtual {v1, v0}, Lcom/apk/m60;->else(Landroid/app/Activity;)Z

    :cond_1
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e60$if;->do:Lcom/apk/e60;

    .line 2
    iget-object v0, v0, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method

.method public try()V
    .locals 0

    return-void
.end method
