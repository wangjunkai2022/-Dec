.class public Lcom/tencent/bugly/crashreport/BuglyLog;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 1
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const-string v0, "D"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 1
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const-string v0, "E"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 3
    :cond_0
    sget-boolean p1, Lcom/tencent/bugly/b;->c:Z

    const-string p1, "E"

    .line 4
    invoke-static {p1, p0, p2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 1
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const-string v0, "I"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCache(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/aa;->a(I)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 1
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const-string v0, "V"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 1
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const-string v0, "W"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
