.class public final enum Lcom/baidu/tts/database/SpeechModelTable$Field;
.super Ljava/lang/Enum;
.source "SpeechModelTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/database/SpeechModelTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/database/SpeechModelTable$Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum b:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum c:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum d:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum e:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum f:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum g:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum h:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum i:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum j:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final enum k:Lcom/baidu/tts/database/SpeechModelTable$Field;

.field public static final synthetic n:[Lcom/baidu/tts/database/SpeechModelTable$Field;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    const-string v4, "integer primary key"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->a:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 2
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "TEXT_DATA_ID"

    const/4 v3, 0x1

    const-string v4, "text_data_id"

    const-string v5, "integer"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->b:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 3
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "SPEECH_DATA_ID"

    const/4 v4, 0x2

    const-string v6, "speech_data_id"

    invoke-direct {v0, v1, v4, v6, v5}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->c:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 4
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "NAME"

    const/4 v6, 0x3

    const-string v7, "name"

    const-string v8, "varchar(256) not null default unnamed"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->d:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 5
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "VERSION_MIN"

    const/4 v7, 0x4

    const-string v8, "version_min"

    invoke-direct {v0, v1, v7, v8, v5}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->e:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 6
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "VERSION_MAX"

    const/4 v8, 0x5

    const-string v9, "version_max"

    invoke-direct {v0, v1, v8, v9, v5}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->f:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 7
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "LANGUAGE"

    const/4 v5, 0x6

    const-string v9, "language"

    const-string v10, "varchar(20)"

    invoke-direct {v0, v1, v5, v9, v10}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->g:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 8
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "GENDER"

    const/4 v9, 0x7

    const-string v11, "gender"

    invoke-direct {v0, v1, v9, v11, v10}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->h:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 9
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "SPEAKER"

    const/16 v10, 0x8

    const-string v11, "speaker"

    const-string v12, "varchar(256)"

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->i:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 10
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "DOMAIN"

    const/16 v11, 0x9

    const-string v12, "domain"

    const-string v13, "varchar(50)"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->j:Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 11
    new-instance v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    const-string v1, "QUALITY"

    const/16 v12, 0xa

    const-string v14, "quality"

    invoke-direct {v0, v1, v12, v14, v13}, Lcom/baidu/tts/database/SpeechModelTable$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->k:Lcom/baidu/tts/database/SpeechModelTable$Field;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/baidu/tts/database/SpeechModelTable$Field;

    .line 12
    sget-object v13, Lcom/baidu/tts/database/SpeechModelTable$Field;->a:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v13, v1, v2

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->b:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->c:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->d:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v6

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->e:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v7

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->f:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v8

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->g:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v5

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->h:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v9

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->i:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v10

    sget-object v2, Lcom/baidu/tts/database/SpeechModelTable$Field;->j:Lcom/baidu/tts/database/SpeechModelTable$Field;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/baidu/tts/database/SpeechModelTable$Field;->n:[Lcom/baidu/tts/database/SpeechModelTable$Field;

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
    iput-object p3, p0, Lcom/baidu/tts/database/SpeechModelTable$Field;->l:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/baidu/tts/database/SpeechModelTable$Field;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/database/SpeechModelTable$Field;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/database/SpeechModelTable$Field;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/database/SpeechModelTable$Field;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/database/SpeechModelTable$Field;->n:[Lcom/baidu/tts/database/SpeechModelTable$Field;

    invoke-virtual {v0}, [Lcom/baidu/tts/database/SpeechModelTable$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/database/SpeechModelTable$Field;

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/SpeechModelTable$Field;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/SpeechModelTable$Field;->m:Ljava/lang/String;

    return-object v0
.end method
