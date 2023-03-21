.class public final enum Lcom/baidu/tts/f/d;
.super Ljava/lang/Enum;
.source "CharSetEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/d;

.field public static final enum b:Lcom/baidu/tts/f/d;

.field public static final enum c:Lcom/baidu/tts/f/d;

.field public static final enum d:Lcom/baidu/tts/f/d;

.field public static final enum e:Lcom/baidu/tts/f/d;

.field public static final synthetic h:[Lcom/baidu/tts/f/d;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "GB18030"

    const/4 v2, 0x0

    const-string v3, "gb18030"

    const-string v4, "0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->a:Lcom/baidu/tts/f/d;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "BIG5"

    const/4 v3, 0x1

    const-string v4, "big5"

    const-string v5, "1"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->b:Lcom/baidu/tts/f/d;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "UTF8"

    const/4 v4, 0x2

    const-string v5, "utf-8"

    const-string v6, "2"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "GBK"

    const/4 v5, 0x3

    const-string v6, "gbk"

    const-string v7, "4"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->d:Lcom/baidu/tts/f/d;

    .line 5
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "UNICODE"

    const/4 v6, 0x4

    const-string v7, "unicode"

    const-string v8, "5"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->e:Lcom/baidu/tts/f/d;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/baidu/tts/f/d;

    .line 6
    sget-object v7, Lcom/baidu/tts/f/d;->a:Lcom/baidu/tts/f/d;

    aput-object v7, v1, v2

    sget-object v2, Lcom/baidu/tts/f/d;->b:Lcom/baidu/tts/f/d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/tts/f/d;->d:Lcom/baidu/tts/f/d;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/baidu/tts/f/d;->h:[Lcom/baidu/tts/f/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/baidu/tts/f/d;->f:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/f/d;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/f/d;
    .locals 5

    .line 2
    invoke-static {}, Lcom/baidu/tts/f/d;->values()[Lcom/baidu/tts/f/d;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/d;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/d;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/d;->h:[Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/f/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/f/d;->g:Ljava/lang/String;

    return-object v0
.end method
