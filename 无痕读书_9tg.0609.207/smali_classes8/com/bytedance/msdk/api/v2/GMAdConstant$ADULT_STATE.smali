.class public final enum Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;
.super Ljava/lang/Enum;
.source "GMAdConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/GMAdConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ADULT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGE_15:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

.field public static final enum AGE_18:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

.field public static final enum AGE_ADULT:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

.field public static final synthetic do:[Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    const-string v1, "AGE_15"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->AGE_15:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    const-string v1, "AGE_18"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->AGE_18:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    const-string v1, "AGE_ADULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->AGE_ADULT:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    .line 4
    sget-object v5, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->AGE_15:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->AGE_18:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->do:[Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->do:[Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    invoke-virtual {v0}, [Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    return-object v0
.end method
