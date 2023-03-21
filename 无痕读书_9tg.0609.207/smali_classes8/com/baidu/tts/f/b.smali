.class public abstract enum Lcom/baidu/tts/f/b;
.super Ljava/lang/Enum;
.source "AudioEncoderFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/b;

.field public static final enum b:Lcom/baidu/tts/f/b;

.field public static final enum c:Lcom/baidu/tts/f/b;

.field public static final enum d:Lcom/baidu/tts/f/b;

.field public static final enum e:Lcom/baidu/tts/f/b;

.field public static final synthetic g:[Lcom/baidu/tts/f/b;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/baidu/tts/f/b$1;

    const-string v1, "BV"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/f/b$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/b;->a:Lcom/baidu/tts/f/b;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/b$2;

    const-string v1, "AMR"

    const/4 v3, 0x1

    const-string v4, "1"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/tts/f/b$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/b;->b:Lcom/baidu/tts/f/b;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/b$3;

    const-string v1, "OPUS"

    const/4 v4, 0x2

    const-string v5, "2"

    invoke-direct {v0, v1, v4, v5}, Lcom/baidu/tts/f/b$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/b;->c:Lcom/baidu/tts/f/b;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/b$4;

    const-string v1, "MP3"

    const/4 v5, 0x3

    const-string v6, "3"

    invoke-direct {v0, v1, v5, v6}, Lcom/baidu/tts/f/b$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/b;->d:Lcom/baidu/tts/f/b;

    .line 5
    new-instance v0, Lcom/baidu/tts/f/b$5;

    const-string v1, "PCM"

    const/4 v6, 0x4

    const-string v7, "4"

    invoke-direct {v0, v1, v6, v7}, Lcom/baidu/tts/f/b$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/b;->e:Lcom/baidu/tts/f/b;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/baidu/tts/f/b;

    .line 6
    sget-object v7, Lcom/baidu/tts/f/b;->a:Lcom/baidu/tts/f/b;

    aput-object v7, v1, v2

    sget-object v2, Lcom/baidu/tts/f/b;->b:Lcom/baidu/tts/f/b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/b;->c:Lcom/baidu/tts/f/b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/tts/f/b;->d:Lcom/baidu/tts/f/b;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/baidu/tts/f/b;->g:[Lcom/baidu/tts/f/b;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/baidu/tts/f/b;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/baidu/tts/f/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/f/b;
    .locals 5

    .line 2
    invoke-static {}, Lcom/baidu/tts/f/b;->values()[Lcom/baidu/tts/f/b;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/b;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/b;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/b;->g:[Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/f/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public abstract b()[Lcom/baidu/tts/f/c;
.end method
