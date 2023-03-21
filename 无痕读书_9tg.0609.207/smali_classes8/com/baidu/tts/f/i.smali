.class public final enum Lcom/baidu/tts/f/i;
.super Ljava/lang/Enum;
.source "MethodEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/i;

.field public static final enum b:Lcom/baidu/tts/f/i;

.field public static final synthetic c:[Lcom/baidu/tts/f/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/baidu/tts/f/i;

    const-string v1, "SYNTHESIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/i;->a:Lcom/baidu/tts/f/i;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/i;

    const-string v1, "SPEAK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/i;->b:Lcom/baidu/tts/f/i;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/tts/f/i;

    .line 3
    sget-object v4, Lcom/baidu/tts/f/i;->a:Lcom/baidu/tts/f/i;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/tts/f/i;->c:[Lcom/baidu/tts/f/i;

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

.method public static a(Lcom/baidu/tts/f/i;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/i;->b:Lcom/baidu/tts/f/i;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/i;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/i;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/i;->c:[Lcom/baidu/tts/f/i;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/i;

    return-object v0
.end method
