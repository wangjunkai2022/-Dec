.class public final Lcom/tencent/bugly/proguard/ae;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/af;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Lcom/tencent/bugly/proguard/ah;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ah;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    new-instance p0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
