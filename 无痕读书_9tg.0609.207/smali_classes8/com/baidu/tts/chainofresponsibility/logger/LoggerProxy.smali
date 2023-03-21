.class public Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;
.super Ljava/lang/Object;
.source "LoggerProxy.java"


# static fields
.field public static a:Z


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
    sget-boolean p0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x3

    const-string p1, "TTSLOG"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x6

    const-string p1, "TTSLOG"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    const-string p1, "TTSLOG"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    :cond_0
    return-void
.end method

.method public static printable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const-string p1, "TTSLOG"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x5

    const-string p1, "TTSLOG"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    :cond_0
    return-void
.end method
