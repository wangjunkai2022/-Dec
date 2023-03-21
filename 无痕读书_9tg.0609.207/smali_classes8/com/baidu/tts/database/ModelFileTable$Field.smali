.class public final enum Lcom/baidu/tts/database/ModelFileTable$Field;
.super Ljava/lang/Enum;
.source "ModelFileTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/database/ModelFileTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/database/ModelFileTable$Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum b:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum c:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum d:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final enum e:Lcom/baidu/tts/database/ModelFileTable$Field;

.field public static final synthetic h:[Lcom/baidu/tts/database/ModelFileTable$Field;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    const-string v4, "integer primary key"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->a:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 2
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "LENGTH"

    const/4 v3, 0x1

    const-string v4, "length"

    const-string v5, "bigint"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->b:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 3
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "MD5"

    const/4 v4, 0x2

    const-string v5, "md5"

    const-string v6, "varchar(32)"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->c:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 4
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "NAME"

    const/4 v5, 0x3

    const-string v6, "name"

    const-string v7, "varchar(256) not null default unnamed"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->d:Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 5
    new-instance v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    const-string v1, "ABS_PATH"

    const/4 v6, 0x4

    const-string v7, "absPath"

    const-string v8, "varchar"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/baidu/tts/database/ModelFileTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->e:Lcom/baidu/tts/database/ModelFileTable$Field;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/baidu/tts/database/ModelFileTable$Field;

    .line 6
    sget-object v7, Lcom/baidu/tts/database/ModelFileTable$Field;->a:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v7, v1, v2

    sget-object v2, Lcom/baidu/tts/database/ModelFileTable$Field;->b:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/database/ModelFileTable$Field;->c:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/tts/database/ModelFileTable$Field;->d:Lcom/baidu/tts/database/ModelFileTable$Field;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/baidu/tts/database/ModelFileTable$Field;->h:[Lcom/baidu/tts/database/ModelFileTable$Field;

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
    iput-object p3, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->f:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/database/ModelFileTable$Field;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/database/ModelFileTable$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/database/ModelFileTable$Field;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/database/ModelFileTable$Field;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/database/ModelFileTable$Field;->h:[Lcom/baidu/tts/database/ModelFileTable$Field;

    invoke-virtual {v0}, [Lcom/baidu/tts/database/ModelFileTable$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/database/ModelFileTable$Field;

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/ModelFileTable$Field;->g:Ljava/lang/String;

    return-object v0
.end method
