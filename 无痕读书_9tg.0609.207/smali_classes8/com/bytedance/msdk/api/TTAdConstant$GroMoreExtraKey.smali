.class public final enum Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;
.super Ljava/lang/Enum;
.source "TTAdConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/TTAdConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroMoreExtraKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum CUSTOMIZE_RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

.field public static final enum RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

.field public static final synthetic if:[Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;


# instance fields
.field public final do:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    const-string v1, "CUSTOMIZE_RIT_SCENES"

    const/4 v2, 0x0

    const-string v3, "groMore_key_customize_rit_scenes"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->CUSTOMIZE_RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    const-string v1, "RIT_SCENES"

    const/4 v3, 0x1

    const-string v4, "groMore_key_rit_scenes"

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    .line 3
    sget-object v4, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->CUSTOMIZE_RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->if:[Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->do:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->if:[Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    invoke-virtual {v0}, [Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    return-object v0
.end method


# virtual methods
.method public getExtraKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->do:Ljava/lang/String;

    return-object v0
.end method
