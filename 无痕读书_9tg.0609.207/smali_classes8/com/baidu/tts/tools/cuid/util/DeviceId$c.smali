.class public Lcom/baidu/tts/tools/cuid/util/DeviceId$c;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/tools/cuid/util/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Ljava/lang/Throwable;)V

    return v0
.end method
