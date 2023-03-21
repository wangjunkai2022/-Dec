.class public Lbykvm_19do/bykvm_19do/bykvm_19do/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;
    }
.end annotation


# static fields
.field public static n:J

.field public static o:Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;


# instance fields
.field public final a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

.field public final b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

.field public c:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

.field public d:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:I

.field public h:J

.field public volatile i:Z

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Lbykvm_19do/bykvm_19do/bykvm_19do/z;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/k2;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->h:J

    .line 3
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    .line 4
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)J
    .locals 9

    .line 79
    sget-wide v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->n:J

    const-wide/16 v2, 0x3e8

    .line 80
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    add-long/2addr v0, v2

    .line 81
    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a(J)V

    .line 82
    :cond_0
    sget-wide v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->n:J

    return-wide v0
.end method

.method private declared-synchronized a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    instance-of v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    .line 10
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->e:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b()J

    move-result-wide v5

    sput-wide v5, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->n:J

    .line 12
    iput-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->h:J

    .line 13
    iput-boolean p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->i:Z

    const-wide/16 v5, 0x0

    .line 14
    iput-wide v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->j:J

    .line 15
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSession, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hadUi:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " data:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p3, :cond_4

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->l:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->v()I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->k:I

    .line 22
    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->l:Ljava/lang/String;

    .line 24
    iput v6, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->k:I

    goto :goto_1

    .line 25
    :cond_3
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->k:I

    add-int/2addr v0, v6

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->k:I

    .line 26
    :goto_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    iget v6, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->k:I

    invoke-virtual {v0, p1, v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->g:I

    :cond_4
    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    .line 28
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    invoke-direct {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z;-><init>()V

    .line 29
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->e:Ljava/lang/String;

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)J

    move-result-wide v0

    iput-wide v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    .line 31
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->h:J

    iput-wide v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    .line 32
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->j:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c()I

    move-result v0

    iput v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->i:I

    .line 34
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->N()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->e:Ljava/lang/String;

    .line 36
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f:Ljava/lang/String;

    .line 37
    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->m:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    .line 39
    sget-boolean p2, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz p2, :cond_6

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gen launch, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hadUi:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)Z
    .locals 1

    .line 2
    instance-of v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    .line 4
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->j()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d()Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->o:Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/b2$a;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->o:Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->o:Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    .line 4
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->o:Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(JJ)Landroid/os/Bundle;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->f:J

    sub-long v1, p1, v1

    cmp-long v3, v1, p3

    if-lez v3, :cond_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->k:I

    const-string p4, "session_no"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->g:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->g:I

    const-string p4, "send_times"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-wide p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->f:J

    sub-long p3, p1, p3

    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    const-string v1, "current_duration"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-wide p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->h:J

    invoke-static {p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "session_start_time"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Lbykvm_19do/bykvm_19do/bykvm_19do/z;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->m:Lbykvm_19do/bykvm_19do/bykvm_19do/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->e:Ljava/lang/String;

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)J

    move-result-wide v0

    iput-wide v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    .line 76
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->e:Ljava/lang/String;

    .line 78
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            ">;)Z"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    .line 42
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)Z

    move-result v1

    .line 43
    iget-wide v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->h:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-nez v9, :cond_0

    .line 44
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->i:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0, p1, p2, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 47
    :cond_1
    iget-wide v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->j:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_2

    iget-wide v7, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iget-object v9, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v9}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->P()J

    move-result-wide v9

    add-long/2addr v9, v2

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    .line 48
    invoke-direct {p0, p1, p2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 49
    :cond_2
    iget-wide v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->h:J

    iget-wide v7, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const-wide/32 v9, 0x6ddd00

    add-long/2addr v7, v9

    cmp-long v9, v2, v7

    if-lez v9, :cond_3

    .line 50
    invoke-direct {p0, p1, p2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 51
    move-object v0, p1

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    .line 52
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    iget-wide v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iput-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->f:J

    .line 54
    iput-wide v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->j:J

    .line 55
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p2, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->j:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 57
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    const-wide/16 v1, 0x1f4

    if-eqz p2, :cond_4

    iget-wide v5, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iget-wide v7, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    sub-long/2addr v5, v7

    iget-wide v7, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->i:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-gez v3, :cond_4

    .line 58
    iget-object p2, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->k:Ljava/lang/String;

    iput-object p2, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->j:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_4
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    if-eqz p2, :cond_9

    iget-wide v5, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iget-wide v7, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    sub-long/2addr v5, v7

    iget-wide v7, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->i:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-gez v3, :cond_9

    .line 60
    iget-object p2, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->k:Ljava/lang/String;

    iput-object p2, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->j:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_5
    iget-wide v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    invoke-virtual {p0, v1, v2, v5, v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(JJ)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "play_session"

    .line 62
    invoke-static {v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    :cond_6
    iput-wide v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->f:J

    .line 64
    iget-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iput-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->j:J

    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->k()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 67
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    goto :goto_1

    .line 68
    :cond_7
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    const/4 p2, 0x0

    .line 69
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    goto :goto_1

    .line 70
    :cond_8
    instance-of v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/b2$b;

    if-nez v0, :cond_9

    .line 71
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    return v4
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->i:Z

    return v0
.end method

.method public c()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
