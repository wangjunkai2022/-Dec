.class public Lcom/apk/vs;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lcom/apk/us;


# instance fields
.field public do:Lcom/apk/us;

.field public if:Lcom/apk/vs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public do(Lcom/apk/ss;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Lcom/apk/us;->do(Lcom/apk/ss;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_0

    return-void
.end method

.method public for(Lcom/apk/ss;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/vs;->case()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 2
    :cond_1
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1, p1}, Lcom/apk/us;->for(Lcom/apk/ss;)V

    .line 4
    :cond_2
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_1

    return-void
.end method

.method public if(Lcom/apk/ss;ZBLcom/apk/xs;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/apk/us;->if(Lcom/apk/ss;ZBLcom/apk/xs;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_0

    return-void
.end method

.method public new(Lcom/apk/ss;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Lcom/apk/us;->new(Lcom/apk/ss;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_0

    return-void
.end method

.method public try(Lcom/apk/ss;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Lcom/apk/us;->try(Lcom/apk/ss;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_0

    return-void
.end method
