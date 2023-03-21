.class public abstract enum Lcom/baidu/tts/f/o;
.super Ljava/lang/Enum;
.source "UrlEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/o;

.field public static final enum b:Lcom/baidu/tts/f/o;

.field public static final enum c:Lcom/baidu/tts/f/o;

.field public static final enum d:Lcom/baidu/tts/f/o;

.field public static final enum e:Lcom/baidu/tts/f/o;

.field public static final synthetic g:[Lcom/baidu/tts/f/o;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/baidu/tts/f/o$1;

    const-string v1, "TTS_SERVER"

    const/4 v2, 0x0

    const-string v3, "https://tsn.baidu.com/text2audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/f/o$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/o$2;

    const-string v1, "MODEL_SERVER"

    const/4 v3, 0x1

    const-string v4, "https://tts.baidu.com/bos/story.php?"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/tts/f/o$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/o$3;

    const-string v1, "STATISTICS_SERVER"

    const/4 v4, 0x2

    const-string v5, "http://upl.baidu.com/offline/confirm"

    invoke-direct {v0, v1, v4, v5}, Lcom/baidu/tts/f/o$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->c:Lcom/baidu/tts/f/o;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/o$4;

    const-string v1, "STATISTICS_MODELLOAD_SERVER"

    const/4 v5, 0x3

    const-string v6, "https://upl.baidu.com/ttsdlstats"

    invoke-direct {v0, v1, v5, v6}, Lcom/baidu/tts/f/o$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->d:Lcom/baidu/tts/f/o;

    .line 5
    new-instance v0, Lcom/baidu/tts/f/o$5;

    const-string v1, "GETLICENSE_SERVER"

    const/4 v6, 0x4

    const-string v7, "https://upl.baidu.com/offline/auth"

    invoke-direct {v0, v1, v6, v7}, Lcom/baidu/tts/f/o$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->e:Lcom/baidu/tts/f/o;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/baidu/tts/f/o;

    .line 6
    sget-object v7, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    aput-object v7, v1, v2

    sget-object v2, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/o;->c:Lcom/baidu/tts/f/o;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/tts/f/o;->d:Lcom/baidu/tts/f/o;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/baidu/tts/f/o;->g:[Lcom/baidu/tts/f/o;

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
    iput-object p3, p0, Lcom/baidu/tts/f/o;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/baidu/tts/f/o$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/f/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/o;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/o;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/o;->g:[Lcom/baidu/tts/f/o;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/o;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/f/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method
