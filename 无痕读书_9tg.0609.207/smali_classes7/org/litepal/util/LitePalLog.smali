.class public final Lorg/litepal/util/LitePalLog;
.super Ljava/lang/Object;
.source "LitePalLog.java"


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x5

.field public static level:I = 0x5


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
    sget p0, Lorg/litepal/util/LitePalLog;->level:I

    const/4 p1, 0x2

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p0, Lorg/litepal/util/LitePalLog;->level:I

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method
