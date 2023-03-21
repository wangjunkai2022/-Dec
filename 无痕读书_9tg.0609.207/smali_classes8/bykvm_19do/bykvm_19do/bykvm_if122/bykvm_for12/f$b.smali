.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;
.super Ljava/lang/Object;
.source "AdEventThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(IJJIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a:I

    .line 3
    iput-wide p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->b:J

    .line 4
    iput-wide p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->c:J

    .line 5
    iput p6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->d:I

    .line 6
    iput-wide p7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->e:J

    .line 7
    iput-wide p9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->f:J

    return-void
.end method

.method public static b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;
    .locals 13

    const-string v0, "AdEventThread- policy: batchSize: "

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", routineInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    .line 3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->k()I

    move-result v3

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->n()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/4 v8, 0x5

    const-wide/32 v9, 0x240c8400

    const-wide/32 v11, 0x493e0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;-><init>(IJJIJJ)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a:I

    return v0
.end method
