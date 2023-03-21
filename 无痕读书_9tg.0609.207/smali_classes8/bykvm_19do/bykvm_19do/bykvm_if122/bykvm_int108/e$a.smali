.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;
.super Ljava/lang/Object;
.source "SdkInitEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public volatile b:Z

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:I

.field public final f:I

.field public final g:J

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b:Z

    .line 3
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->h:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->g:J

    .line 5
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->d:J

    .line 7
    iput p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->e:I

    .line 8
    iput p5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->f:I

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 4

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a:Landroid/os/Handler;

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 8

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    :try_start_1
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b:Z

    if-ne p1, v0, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--==-- \u6700\u7ec8\u4e0a\u62a5\uff1aeventType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", did: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TMe"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--==-- \u6700\u7ec8\u4e0a\u62a5\uff1aeventType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u4eceapplog\u56de\u8c03\u4e2d\u4e0a\u62a5, did: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TMe"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x31c0546f

    if-eq v2, v3, :cond_4

    const v3, 0x1018f5f5

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "sdk_init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string v2, "sdk_init_end"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    iget-wide v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->d:J

    iget v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->e:I

    iget v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->f:I

    iget-wide v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->g:J

    invoke-static/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(JIIJ)V

    goto :goto_2

    .line 11
    :cond_7
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->g:J

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a(I)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b:Z

    return p0
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a()V

    return-void
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->h:I

    return p0
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)I
    .locals 2

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->h:I

    return v0
.end method

.method public static synthetic e(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c:Ljava/lang/String;

    return-object p0
.end method
