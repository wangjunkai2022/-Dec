.class public final Lcom/baidu/tts/database/SpeechModelTable$1;
.super Ljava/lang/Object;
.source "SpeechModelTable.java"

# interfaces
.implements Lcom/baidu/tts/database/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/database/SpeechModelTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/client/model/ModelBags;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/database/SpeechModelTable$1;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    :try_start_0
    const-string v0, "insert into speechModel (name, version_min, version_max, language, gender, speaker, domain, quality, text_data_id, speech_data_id, id) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/database/SpeechModelTable$1;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelBags;->getModelInfos()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelInfo;

    .line 6
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMin()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMax()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getGender()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeaker()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getDomain()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getQuality()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getTextDataId()Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeechDataId()Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 18
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 19
    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x4

    .line 20
    invoke-virtual {p1, v2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x5

    .line 21
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x6

    .line 22
    invoke-virtual {p1, v2, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x7

    .line 23
    invoke-virtual {p1, v2, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v2, 0x8

    .line 24
    invoke-virtual {p1, v2, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v2, 0x9

    .line 25
    invoke-virtual {p1, v2, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v2, 0xa

    .line 26
    invoke-virtual {p1, v2, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v2, 0xb

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return v2

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
