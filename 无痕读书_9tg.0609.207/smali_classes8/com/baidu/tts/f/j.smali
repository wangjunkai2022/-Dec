.class public final enum Lcom/baidu/tts/f/j;
.super Ljava/lang/Enum;
.source "MixMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/j;

.field public static final enum b:Lcom/baidu/tts/f/j;

.field public static final enum c:Lcom/baidu/tts/f/j;

.field public static final enum d:Lcom/baidu/tts/f/j;

.field public static final synthetic e:[Lcom/baidu/tts/f/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/baidu/tts/f/j;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/j;

    const-string v1, "HIGH_SPEED_NETWORK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/f/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/j;->b:Lcom/baidu/tts/f/j;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/j;

    const-string v1, "HIGH_SPEED_SYNTHESIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/tts/f/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/j;->c:Lcom/baidu/tts/f/j;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/j;

    const-string v1, "HIGH_SPEED_SYNTHESIZE_WIFI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/tts/f/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/j;->d:Lcom/baidu/tts/f/j;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/tts/f/j;

    .line 5
    sget-object v6, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    aput-object v6, v1, v2

    sget-object v2, Lcom/baidu/tts/f/j;->b:Lcom/baidu/tts/f/j;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/j;->c:Lcom/baidu/tts/f/j;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/baidu/tts/f/j;->e:[Lcom/baidu/tts/f/j;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/j;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/j;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/j;->e:[Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/j;

    return-object v0
.end method
