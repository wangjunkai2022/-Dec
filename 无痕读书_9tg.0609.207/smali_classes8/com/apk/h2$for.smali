.class public Lcom/apk/h2$for;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Lcom/apk/k1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    .line 2
    iget-object v0, v0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/apk/t1;

    invoke-direct {v1, p0}, Lcom/apk/t1;-><init>(Lcom/apk/h2$for;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    .line 2
    iget-object v0, v0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/apk/u1;

    invoke-direct {v1, p0}, Lcom/apk/u1;-><init>(Lcom/apk/h2$for;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public if(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    .line 2
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 3
    check-cast v0, Lcom/apk/l2;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apk/l2;->if(Z)V

    .line 4
    invoke-static {}, Lcom/apk/f;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/f;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->t()Z

    :cond_0
    return-void
.end method

.method public synthetic try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    .line 2
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 3
    check-cast v0, Lcom/apk/l2;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apk/l2;->new(Z)V

    .line 4
    invoke-static {}, Lcom/apk/f;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/f;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/h2$for;->do:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->t()Z

    :cond_0
    return-void
.end method
