.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Z = true

.field public static final c:Ljava/lang/String;

.field public static d:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_19do/o0<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/z0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->c:Ljava/lang/String;

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0$a;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/q0;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "getCdid takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackerDr"

    .line 6
    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "id"

    .line 12
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    sget-object p1, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(J)Ljava/util/Map;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getOaid takes "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrackerDr"

    .line 11
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;

    invoke-virtual {p0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Z)V

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/e;)V
    .locals 0

    .line 13
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 14
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 16
    sput-boolean p0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->b:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->b:Z

    return v0
.end method
