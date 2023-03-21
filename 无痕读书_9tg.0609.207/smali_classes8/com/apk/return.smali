.class public Lcom/apk/return;
.super Ljava/lang/Object;
.source "AdFrontBackUtils.java"

# interfaces
.implements Lcom/apk/y60;


# instance fields
.field public final synthetic do:Lcom/apk/static;


# direct methods
.method public constructor <init>(Lcom/apk/static;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/return;->do:Lcom/apk/static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/b70;->case()V

    :cond_0
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->do()V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/b70;->else()V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->for()V

    :cond_0
    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 5
    iget-object p1, p1, Lcom/apk/static;->case:Lcom/apk/e60;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/apk/e60;->case()V

    .line 7
    iget-object p1, p0, Lcom/apk/return;->do:Lcom/apk/static;

    const/4 p2, 0x0

    .line 8
    iput-object p2, p1, Lcom/apk/static;->case:Lcom/apk/e60;

    :cond_1
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onAdDismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 5
    iget-object v0, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/e60;->case()V

    .line 7
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    :cond_1
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onZoomOut()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/return;->do:Lcom/apk/static;

    .line 2
    iget-object v0, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/y60;->onZoomOut()V

    :cond_0
    return-void
.end method
