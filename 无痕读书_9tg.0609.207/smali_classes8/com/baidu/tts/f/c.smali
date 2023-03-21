.class public final enum Lcom/baidu/tts/f/c;
.super Ljava/lang/Enum;
.source "Bitrate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/c;

.field public static final enum b:Lcom/baidu/tts/f/c;

.field public static final enum c:Lcom/baidu/tts/f/c;

.field public static final enum d:Lcom/baidu/tts/f/c;

.field public static final enum e:Lcom/baidu/tts/f/c;

.field public static final enum f:Lcom/baidu/tts/f/c;

.field public static final enum g:Lcom/baidu/tts/f/c;

.field public static final enum h:Lcom/baidu/tts/f/c;

.field public static final enum i:Lcom/baidu/tts/f/c;

.field public static final enum j:Lcom/baidu/tts/f/c;

.field public static final enum k:Lcom/baidu/tts/f/c;

.field public static final enum l:Lcom/baidu/tts/f/c;

.field public static final enum m:Lcom/baidu/tts/f/c;

.field public static final enum n:Lcom/baidu/tts/f/c;

.field public static final enum o:Lcom/baidu/tts/f/c;

.field public static final enum p:Lcom/baidu/tts/f/c;

.field public static final enum q:Lcom/baidu/tts/f/c;

.field public static final enum r:Lcom/baidu/tts/f/c;

.field public static final enum s:Lcom/baidu/tts/f/c;

.field public static final enum t:Lcom/baidu/tts/f/c;

.field public static final enum u:Lcom/baidu/tts/f/c;

.field public static final enum v:Lcom/baidu/tts/f/c;

.field public static final synthetic z:[Lcom/baidu/tts/f/c;


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:D


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcom/baidu/tts/f/c;

    const-string v1, "BV_16K"

    const/4 v2, 0x0

    const-string v3, "BV_16K"

    const-string v4, "0"

    const-wide v5, 0x40cf400000000000L    # 16000.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v7, Lcom/baidu/tts/f/c;->a:Lcom/baidu/tts/f/c;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "AMR_6K6"

    const/4 v10, 0x1

    const-string v11, "AMR_6K6"

    const-string v12, "0"

    const-wide v13, 0x40b9c80000000000L    # 6600.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->b:Lcom/baidu/tts/f/c;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "AMR_8K85"

    const/4 v3, 0x2

    const-string v4, "AMR_8K85"

    const-string v5, "1"

    const-wide v6, 0x40c1490000000000L    # 8850.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->c:Lcom/baidu/tts/f/c;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "AMR_12K65"

    const/4 v10, 0x3

    const-string v11, "AMR_12K65"

    const-string v12, "2"

    const-wide v13, 0x40c8b50000000000L    # 12650.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->d:Lcom/baidu/tts/f/c;

    .line 5
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "AMR_14K25"

    const/4 v3, 0x4

    const-string v4, "AMR_14K25"

    const-string v5, "3"

    const-wide v6, 0x40cbd50000000000L    # 14250.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->e:Lcom/baidu/tts/f/c;

    .line 6
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "AMR_15K85"

    const/4 v10, 0x5

    const-string v11, "AMR_15K85"

    const-string v12, "4"

    const-wide v13, 0x40cef50000000000L    # 15850.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->f:Lcom/baidu/tts/f/c;

    .line 7
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "AMR_18K25"

    const/4 v3, 0x6

    const-string v4, "AMR_18K25"

    const-string v5, "5"

    const-wide v6, 0x40d1d28000000000L    # 18250.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->g:Lcom/baidu/tts/f/c;

    .line 8
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "AMR_19K85"

    const/4 v10, 0x7

    const-string v11, "AMR_19K85"

    const-string v12, "6"

    const-wide v13, 0x40d3628000000000L    # 19850.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->h:Lcom/baidu/tts/f/c;

    .line 9
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "AMR_23K05"

    const/16 v3, 0x8

    const-string v4, "AMR_23K05"

    const-string v5, "7"

    const-wide v6, 0x40d6828000000000L    # 23050.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->i:Lcom/baidu/tts/f/c;

    .line 10
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "AMR_23K85"

    const/16 v10, 0x9

    const-string v11, "AMR_23K85"

    const-string v12, "8"

    const-wide v13, 0x40d74a8000000000L    # 23850.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->j:Lcom/baidu/tts/f/c;

    .line 11
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "OPUS_8K"

    const/16 v3, 0xa

    const-string v4, "OPUS_8K"

    const-string v5, "0"

    const-wide v6, 0x40bf400000000000L    # 8000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->k:Lcom/baidu/tts/f/c;

    .line 12
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "OPUS_16K"

    const/16 v10, 0xb

    const-string v11, "OPUS_16K"

    const-string v12, "1"

    const-wide v13, 0x40cf400000000000L    # 16000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->l:Lcom/baidu/tts/f/c;

    .line 13
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "OPUS_18K"

    const/16 v3, 0xc

    const-string v4, "OPUS_18K"

    const-string v5, "2"

    const-wide v6, 0x40d1940000000000L    # 18000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->m:Lcom/baidu/tts/f/c;

    .line 14
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "OPUS_20K"

    const/16 v10, 0xd

    const-string v11, "OPUS_20K"

    const-string v12, "3"

    const-wide v13, 0x40d3880000000000L    # 20000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->n:Lcom/baidu/tts/f/c;

    .line 15
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "OPUS_24K"

    const/16 v3, 0xe

    const-string v4, "OPUS_24K"

    const-string v5, "4"

    const-wide v6, 0x40d7700000000000L    # 24000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->o:Lcom/baidu/tts/f/c;

    .line 16
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "OPUS_32K"

    const/16 v10, 0xf

    const-string v11, "OPUS_32K"

    const-string v12, "5"

    const-wide v13, 0x40df400000000000L    # 32000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->p:Lcom/baidu/tts/f/c;

    .line 17
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "MP3_8K"

    const/16 v3, 0x10

    const-string v4, "MP3_8K"

    const-string v5, "0"

    const-wide v6, 0x40bf400000000000L    # 8000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->q:Lcom/baidu/tts/f/c;

    .line 18
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "MP3_11K"

    const/16 v10, 0x11

    const-string v11, "MP3_11K"

    const-string v12, "1"

    const-wide v13, 0x40c57c0000000000L    # 11000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->r:Lcom/baidu/tts/f/c;

    .line 19
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "MP3_16K"

    const/16 v3, 0x12

    const-string v4, "MP3_16K"

    const-string v5, "2"

    const-wide v6, 0x40cf400000000000L    # 16000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->s:Lcom/baidu/tts/f/c;

    .line 20
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "MP3_24K"

    const/16 v10, 0x13

    const-string v11, "MP3_24K"

    const-string v12, "3"

    const-wide v13, 0x40d7700000000000L    # 24000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->t:Lcom/baidu/tts/f/c;

    .line 21
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v2, "MP3_32K"

    const/16 v3, 0x14

    const-string v4, "MP3_32K"

    const-string v5, "4"

    const-wide v6, 0x40df400000000000L    # 32000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->u:Lcom/baidu/tts/f/c;

    .line 22
    new-instance v0, Lcom/baidu/tts/f/c;

    const-string v9, "PCM"

    const/16 v10, 0x15

    const-string v11, "PCM"

    const-string v12, "0"

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    sput-object v0, Lcom/baidu/tts/f/c;->v:Lcom/baidu/tts/f/c;

    const/16 v1, 0x16

    new-array v1, v1, [Lcom/baidu/tts/f/c;

    .line 23
    sget-object v2, Lcom/baidu/tts/f/c;->a:Lcom/baidu/tts/f/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->b:Lcom/baidu/tts/f/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->c:Lcom/baidu/tts/f/c;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->d:Lcom/baidu/tts/f/c;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->e:Lcom/baidu/tts/f/c;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->f:Lcom/baidu/tts/f/c;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->g:Lcom/baidu/tts/f/c;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->h:Lcom/baidu/tts/f/c;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->i:Lcom/baidu/tts/f/c;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->j:Lcom/baidu/tts/f/c;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->k:Lcom/baidu/tts/f/c;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->l:Lcom/baidu/tts/f/c;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->m:Lcom/baidu/tts/f/c;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->n:Lcom/baidu/tts/f/c;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->o:Lcom/baidu/tts/f/c;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->p:Lcom/baidu/tts/f/c;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->q:Lcom/baidu/tts/f/c;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->r:Lcom/baidu/tts/f/c;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->s:Lcom/baidu/tts/f/c;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->t:Lcom/baidu/tts/f/c;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/c;->u:Lcom/baidu/tts/f/c;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Lcom/baidu/tts/f/c;->z:[Lcom/baidu/tts/f/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/baidu/tts/f/c;->w:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/f/c;->x:Ljava/lang/String;

    .line 4
    iput-wide p5, p0, Lcom/baidu/tts/f/c;->y:D

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/f/c;
    .locals 5

    .line 2
    invoke-static {}, Lcom/baidu/tts/f/c;->values()[Lcom/baidu/tts/f/c;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

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

.method public static c()[Lcom/baidu/tts/f/c;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/tts/f/c;

    .line 1
    sget-object v1, Lcom/baidu/tts/f/c;->a:Lcom/baidu/tts/f/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static d()[Lcom/baidu/tts/f/c;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/baidu/tts/f/c;

    .line 1
    sget-object v1, Lcom/baidu/tts/f/c;->b:Lcom/baidu/tts/f/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->c:Lcom/baidu/tts/f/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->d:Lcom/baidu/tts/f/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->e:Lcom/baidu/tts/f/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->f:Lcom/baidu/tts/f/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->g:Lcom/baidu/tts/f/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->h:Lcom/baidu/tts/f/c;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->i:Lcom/baidu/tts/f/c;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->j:Lcom/baidu/tts/f/c;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static e()[Lcom/baidu/tts/f/c;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/tts/f/c;

    .line 1
    sget-object v1, Lcom/baidu/tts/f/c;->k:Lcom/baidu/tts/f/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->l:Lcom/baidu/tts/f/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->m:Lcom/baidu/tts/f/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->n:Lcom/baidu/tts/f/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->o:Lcom/baidu/tts/f/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->p:Lcom/baidu/tts/f/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static f()[Lcom/baidu/tts/f/c;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/tts/f/c;

    .line 1
    sget-object v1, Lcom/baidu/tts/f/c;->q:Lcom/baidu/tts/f/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->r:Lcom/baidu/tts/f/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->s:Lcom/baidu/tts/f/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->t:Lcom/baidu/tts/f/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/f/c;->u:Lcom/baidu/tts/f/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static g()[Lcom/baidu/tts/f/c;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/tts/f/c;

    .line 1
    sget-object v1, Lcom/baidu/tts/f/c;->v:Lcom/baidu/tts/f/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/c;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/c;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/c;->z:[Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/f/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/tts/f/c;->y:D

    return-wide v0
.end method
