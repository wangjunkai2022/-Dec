.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;
.super Ljava/lang/Object;
.source "AppStateHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->a:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->a:I

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

    move-result-object p1

    invoke-interface {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;->a()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->a:I

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

    move-result-object p1

    invoke-interface {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;->b()V

    :cond_0
    return-void
.end method
