.class public Lcom/apk/f00$new;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Lcom/apk/k1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/f00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f00;


# direct methods
.method public constructor <init>(Lcom/apk/f00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 3
    check-cast v0, Lcom/apk/k00;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apk/k00;->new(Z)V

    .line 4
    invoke-static {}, Lcom/apk/f;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/f;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->f()Z

    :cond_0
    return-void
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/apk/wz;

    invoke-direct {v1, p0}, Lcom/apk/wz;-><init>(Lcom/apk/f00$new;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/apk/uz;

    invoke-direct {v1, p0}, Lcom/apk/uz;-><init>(Lcom/apk/f00$new;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public if(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/apk/vz;

    invoke-direct {v1, p0, p1}, Lcom/apk/vz;-><init>(Lcom/apk/f00$new;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic new(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    invoke-static {v0}, Lcom/apk/f00;->try(Lcom/apk/f00;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/e00;->try(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 3
    check-cast v0, Lcom/apk/k00;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apk/k00;->if(Z)V

    .line 4
    invoke-static {}, Lcom/apk/f;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/f;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/f00$new;->do:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->f()Z

    :cond_0
    return-void
.end method
