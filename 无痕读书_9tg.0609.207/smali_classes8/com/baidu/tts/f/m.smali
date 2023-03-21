.class public final enum Lcom/baidu/tts/f/m;
.super Ljava/lang/Enum;
.source "TtsEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/m;

.field public static final enum b:Lcom/baidu/tts/f/m;

.field public static final enum c:Lcom/baidu/tts/f/m;

.field public static final synthetic f:[Lcom/baidu/tts/f/m;


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/baidu/tts/f/m;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    const-string v3, "just online"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/baidu/tts/f/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/m;->a:Lcom/baidu/tts/f/m;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/m;

    const-string v1, "OFFLINE"

    const/4 v3, 0x1

    const-string v4, "just offline"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/baidu/tts/f/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/m;->b:Lcom/baidu/tts/f/m;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/m;

    const-string v1, "MIX"

    const/4 v4, 0x2

    const-string v5, "if online cannot use switch from online to offline"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/baidu/tts/f/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/m;->c:Lcom/baidu/tts/f/m;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/baidu/tts/f/m;

    .line 4
    sget-object v5, Lcom/baidu/tts/f/m;->a:Lcom/baidu/tts/f/m;

    aput-object v5, v1, v2

    sget-object v2, Lcom/baidu/tts/f/m;->b:Lcom/baidu/tts/f/m;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/baidu/tts/f/m;->f:[Lcom/baidu/tts/f/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/baidu/tts/f/m;->d:I

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/f/m;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/m;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/m;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/m;->f:[Lcom/baidu/tts/f/m;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/m;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/f/m;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/f/m;->e:Ljava/lang/String;

    return-object v0
.end method
