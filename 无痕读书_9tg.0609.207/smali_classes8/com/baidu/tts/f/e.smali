.class public final enum Lcom/baidu/tts/f/e;
.super Ljava/lang/Enum;
.source "CommandEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/e;

.field public static final enum b:Lcom/baidu/tts/f/e;

.field public static final enum c:Lcom/baidu/tts/f/e;

.field public static final enum d:Lcom/baidu/tts/f/e;

.field public static final enum e:Lcom/baidu/tts/f/e;

.field public static final enum f:Lcom/baidu/tts/f/e;

.field public static final enum g:Lcom/baidu/tts/f/e;

.field public static final synthetic h:[Lcom/baidu/tts/f/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->a:Lcom/baidu/tts/f/e;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_FINISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->b:Lcom/baidu/tts/f/e;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->c:Lcom/baidu/tts/f/e;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_STOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->d:Lcom/baidu/tts/f/e;

    .line 5
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_PAUSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->e:Lcom/baidu/tts/f/e;

    .line 6
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_RESUME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->f:Lcom/baidu/tts/f/e;

    .line 7
    new-instance v0, Lcom/baidu/tts/f/e;

    const-string v1, "SYN_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/baidu/tts/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/e;->g:Lcom/baidu/tts/f/e;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/baidu/tts/f/e;

    .line 8
    sget-object v9, Lcom/baidu/tts/f/e;->a:Lcom/baidu/tts/f/e;

    aput-object v9, v1, v2

    sget-object v2, Lcom/baidu/tts/f/e;->b:Lcom/baidu/tts/f/e;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/e;->c:Lcom/baidu/tts/f/e;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/tts/f/e;->d:Lcom/baidu/tts/f/e;

    aput-object v2, v1, v5

    sget-object v2, Lcom/baidu/tts/f/e;->e:Lcom/baidu/tts/f/e;

    aput-object v2, v1, v6

    sget-object v2, Lcom/baidu/tts/f/e;->f:Lcom/baidu/tts/f/e;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/baidu/tts/f/e;->h:[Lcom/baidu/tts/f/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/e;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/e;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/e;->h:[Lcom/baidu/tts/f/e;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/e;

    return-object v0
.end method
