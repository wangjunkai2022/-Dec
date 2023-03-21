.class public Lcom/baidu/tts/tools/cuid/util/CommonParam;
.super Ljava/lang/Object;
.source "CommonParam.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "CommonParam"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
