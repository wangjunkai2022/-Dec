.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g$a;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->u()V
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
.method public println(Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->a(Z)Z

    .line 5
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->a(I)I

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->h()V

    .line 7
    :cond_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sput-wide v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->q:J

    .line 8
    sget-wide v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->r:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    sget-wide v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->q:J

    sget-wide v4, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->r:J

    sub-long v11, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-gtz v0, :cond_3

    .line 10
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->k()I

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x1

    cmp-long v0, v11, v2

    if-nez v0, :cond_6

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->j()I

    move-result v0

    if-le v0, v1, :cond_4

    const/4 v0, 0x7

    const/4 v13, 0x7

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->j()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x3

    const/4 v13, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    const/4 v13, 0x0

    goto :goto_0

    .line 13
    :cond_6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->j()I

    move-result v0

    if-le v0, v1, :cond_7

    const/4 v0, 0x5

    const/4 v13, 0x5

    goto :goto_0

    .line 14
    :cond_7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->j()I

    move-result v0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x6

    const/4 v13, 0x6

    goto :goto_0

    :cond_8
    const/4 v13, 0x1

    .line 15
    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->l()J

    move-result-wide v2

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 17
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->m()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->n()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g$d;

    move-result-object v6

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->b()J

    move-result-wide v7

    sub-long v7, v2, v7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->c()J

    move-result-wide v9

    sub-long v9, v4, v9

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->j()I

    move-result v14

    const/4 v15, 0x0

    invoke-static/range {v6 .. v15}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g$d;JJJIILjava/lang/String;)V

    .line 19
    :cond_9
    invoke-static {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->a(J)J

    .line 20
    invoke-static {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->b(J)J

    .line 21
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/g;->b(I)I

    :goto_1
    return-void
.end method
