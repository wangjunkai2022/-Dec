.class public final enum Lcom/baidu/tts/f/l;
.super Ljava/lang/Enum;
.source "TimeOutEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/f/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/l;

.field public static final enum b:Lcom/baidu/tts/f/l;

.field public static final enum c:Lcom/baidu/tts/f/l;

.field public static final enum d:Lcom/baidu/tts/f/l;

.field public static final synthetic g:[Lcom/baidu/tts/f/l;


# instance fields
.field public final e:J

.field public final f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcom/baidu/tts/f/l;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-wide/16 v3, 0x6

    const-wide/16 v5, 0x1770

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/tts/f/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v7, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    .line 2
    new-instance v0, Lcom/baidu/tts/f/l;

    const-string v9, "TWO_SECOND"

    const/4 v10, 0x1

    const-wide/16 v11, 0x2

    const-wide/16 v13, 0x7d0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v0, Lcom/baidu/tts/f/l;->b:Lcom/baidu/tts/f/l;

    .line 3
    new-instance v0, Lcom/baidu/tts/f/l;

    const-string v2, "THREE_SECOND"

    const/4 v3, 0x2

    const-wide/16 v4, 0x3

    const-wide/16 v6, 0xbb8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/f/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v0, Lcom/baidu/tts/f/l;->c:Lcom/baidu/tts/f/l;

    .line 4
    new-instance v0, Lcom/baidu/tts/f/l;

    const-string v9, "FOUR_SECOND"

    const/4 v10, 0x3

    const-wide/16 v11, 0x4

    const-wide/16 v13, 0xfa0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/tts/f/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v0, Lcom/baidu/tts/f/l;->d:Lcom/baidu/tts/f/l;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/tts/f/l;

    .line 5
    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/l;->b:Lcom/baidu/tts/f/l;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/f/l;->c:Lcom/baidu/tts/f/l;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/baidu/tts/f/l;->g:[Lcom/baidu/tts/f/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Lcom/baidu/tts/f/l;->e:J

    .line 3
    iput-wide p5, p0, Lcom/baidu/tts/f/l;->f:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/l;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/f/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/f/l;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/f/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/l;->g:[Lcom/baidu/tts/f/l;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/l;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/tts/f/l;->f:J

    return-wide v0
.end method

.method public b()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
