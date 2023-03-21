.class public final enum Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
.super Ljava/lang/Enum;
.source "GMAdConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/GMAdConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdIsReadyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

.field public static final enum AD_IS_EXPIRED:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

.field public static final enum AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

.field public static final enum AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

.field public static final synthetic do:[Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const-string v1, "ADN_NO_READY_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const-string v1, "AD_IS_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const-string v1, "AD_IS_EXPIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_EXPIRED:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    .line 4
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const-string v1, "AD_IS_NOT_READY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    .line 5
    sget-object v6, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_EXPIRED:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->do:[Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->do:[Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    invoke-virtual {v0}, [Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method
