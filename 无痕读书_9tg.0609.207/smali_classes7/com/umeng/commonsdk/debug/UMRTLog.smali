.class public Lcom/umeng/commonsdk/debug/UMRTLog;
.super Ljava/lang/Object;
.source "UMRTLog.java"


# static fields
.field public static final RTLOG_ENABLE:Ljava/lang/String; = "1"

.field public static final RTLOG_PROP:Ljava/lang/String; = "debug.umeng.rtlog"

.field public static final RTLOG_TAG:Ljava/lang/String; = "MobclickRT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static sd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static se(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static shouldOutput()Z
    .locals 2

    const-string v0, "debug.umeng.rtlog"

    const-string v1, "0"

    .line 1
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static si(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static sv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static sw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/4 p1, 0x2

    .line 3
    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 4
    aget-object v3, v1, p1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 5
    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    .line 6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "> "

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :catchall_0
    return-object p0
.end method
