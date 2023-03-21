.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i$a;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:J = -0x1L


# direct methods
.method public static a()J
    .locals 5

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i$a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i;->a(J)J

    .line 6
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(J)J
    .locals 5

    .line 1
    sget-wide v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide p0, v0

    .line 3
    :cond_1
    sput-wide p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i$a;->a:J

    return-wide p0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 7

    const-string v0, "libcore.io.OsConstants"

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "libcore.io.Libcore"

    .line 9
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "libcore.io.Os"

    .line 10
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "os"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "sysconf"

    const/4 v3, 0x1

    :try_start_3
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide p1
.end method

.method public static b()J
    .locals 2

    const-wide/16 v0, 0x64

    .line 1
    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/i$a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
