.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c$a;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c$a;->startActivitySuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c$a;->startActivityFail(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
