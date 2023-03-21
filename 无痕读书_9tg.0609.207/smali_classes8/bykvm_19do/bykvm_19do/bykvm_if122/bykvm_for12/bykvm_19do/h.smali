.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;
.source "DBAdapter.java"


# static fields
.field public static volatile d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    return-object p0
.end method
