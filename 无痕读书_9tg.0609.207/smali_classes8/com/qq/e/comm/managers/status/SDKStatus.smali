.class public Lcom/qq/e/comm/managers/status/SDKStatus;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SDK_CHANNEL:I = 0x1

.field public static final SDK_EX1:Ljava/lang/String; = ""

.field public static final SDK_EX2:Ljava/lang/String; = ""

.field public static final STUB_IDENTITY:I = 0x1

.field public static final isNoPlugin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBuildInPluginVersion()I
    .locals 1

    const/16 v0, 0x548

    return v0
.end method

.method public static final getIntegrationSDKVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "4.482."

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getBuildInPluginVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getPluginVersion()I
    .locals 1

    invoke-static {}, Lcom/qq/e/comm/managers/b;->b()Lcom/qq/e/comm/managers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/qq/e/comm/managers/b;->b()Lcom/qq/e/comm/managers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/b;->c()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPluginVersion()I

    move-result v0

    return v0
.end method

.method public static final getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.482"

    return-object v0
.end method
