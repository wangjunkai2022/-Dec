.class public final enum Lcom/baidu/tts/database/FsFileInfoTable$Field;
.super Ljava/lang/Enum;
.source "FsFileInfoTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/database/FsFileInfoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/database/FsFileInfoTable$Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/database/FsFileInfoTable$Field;

.field public static final enum b:Lcom/baidu/tts/database/FsFileInfoTable$Field;

.field public static final synthetic e:[Lcom/baidu/tts/database/FsFileInfoTable$Field;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/baidu/tts/database/FsFileInfoTable$Field;

    const-string v1, "ABS_PATH"

    const/4 v2, 0x0

    const-string v3, "absPath"

    const-string v4, "varchar primary key"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/database/FsFileInfoTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->a:Lcom/baidu/tts/database/FsFileInfoTable$Field;

    .line 2
    new-instance v0, Lcom/baidu/tts/database/FsFileInfoTable$Field;

    const-string v1, "STATE"

    const/4 v3, 0x1

    const-string v4, "state"

    const-string v5, "integer"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/baidu/tts/database/FsFileInfoTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->b:Lcom/baidu/tts/database/FsFileInfoTable$Field;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/tts/database/FsFileInfoTable$Field;

    .line 3
    sget-object v4, Lcom/baidu/tts/database/FsFileInfoTable$Field;->a:Lcom/baidu/tts/database/FsFileInfoTable$Field;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/tts/database/FsFileInfoTable$Field;->e:[Lcom/baidu/tts/database/FsFileInfoTable$Field;

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
    iput-object p3, p0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->c:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/database/FsFileInfoTable$Field;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/database/FsFileInfoTable$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/database/FsFileInfoTable$Field;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/database/FsFileInfoTable$Field;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->e:[Lcom/baidu/tts/database/FsFileInfoTable$Field;

    invoke-virtual {v0}, [Lcom/baidu/tts/database/FsFileInfoTable$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/database/FsFileInfoTable$Field;

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/FsFileInfoTable$Field;->d:Ljava/lang/String;

    return-object v0
.end method
