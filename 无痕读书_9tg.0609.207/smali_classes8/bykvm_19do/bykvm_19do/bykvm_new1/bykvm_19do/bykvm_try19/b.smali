.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/b;
.super Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;
.source "DeviceIdTask.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;-><init>(Landroid/os/Handler;JJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->j()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;->a(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeviceIdTask] did is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;->a(J)V

    const-string v0, "[DeviceIdTask] did is null, continue check."

    .line 6
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
