.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g$c;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->v()V
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
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->d()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->e()J

    move-result-wide v3

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->e()J

    move-result-wide v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x5f

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->e()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->e()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v2, v0

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
