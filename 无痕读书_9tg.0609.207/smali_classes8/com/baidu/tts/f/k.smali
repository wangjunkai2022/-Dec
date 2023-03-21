.class public final enum Lcom/baidu/tts/f/k;
.super Ljava/lang/Enum;
.source "SampleRateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/k;

.field public static final enum b:Lcom/baidu/tts/f/k;

.field public static final enum c:Lcom/baidu/tts/f/k;

.field public static final enum d:Lcom/baidu/tts/f/k;

.field public static final synthetic g:[Lcom/baidu/tts/f/k;


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/baidu/tts/f/k;

    const-string v1, "HZ8K"

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const-string v4, "8k"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/f/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/k;->a:Lcom/baidu/tts/f/k;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/k;

    const-string v1, "HZ16K"

    const/4 v3, 0x1

    const/16 v4, 0x3e80

    const-string v5, "16k"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/baidu/tts/f/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/k;

    const-string v1, "HZ24K"

    const/4 v4, 0x2

    const/16 v5, 0x5dc0

    const-string v6, "24k"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/baidu/tts/f/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/k;->c:Lcom/baidu/tts/f/k;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/k;

    const-string v1, "HZ48K"

    const/4 v5, 0x3

    const v6, 0xbb80

    const-string v7, "48k"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/baidu/tts/f/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/k;->d:Lcom/baidu/tts/f/k;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/tts/f/k;

    .line 5
    sget-object v6, Lcom/baidu/tts/f/k;->a:Lcom/baidu/tts/f/k;

    aput-object v6, v1, v2

    sget-object v2, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/k;->c:Lcom/baidu/tts/f/k;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/baidu/tts/f/k;->g:[Lcom/baidu/tts/f/k;

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
    iput p3, p0, Lcom/baidu/tts/f/k;->e:I

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/f/k;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/k;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/k;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/k;->g:[Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/k;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/f/k;->e:I

    return v0
.end method
