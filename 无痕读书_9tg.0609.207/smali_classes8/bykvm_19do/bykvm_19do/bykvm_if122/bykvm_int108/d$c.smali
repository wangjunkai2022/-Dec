.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$c;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- AppStateListener on foreground"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(J)J

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- AppStateListener on background"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(J)V

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/b;->a()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;->a()V

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;->a()V

    :goto_0
    return-void
.end method
