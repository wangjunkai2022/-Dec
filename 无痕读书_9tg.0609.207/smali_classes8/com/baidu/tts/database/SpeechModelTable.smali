.class public Lcom/baidu/tts/database/SpeechModelTable;
.super Ljava/lang/Object;
.source "SpeechModelTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/database/SpeechModelTable$Field;
    }
.end annotation


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "speechModel"

    const-string v1, "id=?"

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/baidu/tts/database/SpeechModelTable$Field;->values()[Lcom/baidu/tts/database/SpeechModelTable$Field;

    move-result-object v0

    const-string v1, "speechModel"

    invoke-static {v1, v0}, Lcom/baidu/tts/tools/SqlTool;->sqlCreateTable(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/baidu/tts/database/f;

    new-instance v1, Lcom/baidu/tts/database/SpeechModelTable$1;

    invoke-direct {v1, p1}, Lcom/baidu/tts/database/SpeechModelTable$1;-><init>(Lcom/baidu/tts/client/model/ModelBags;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/tts/database/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/database/f$a;)V

    .line 4
    invoke-virtual {v0}, Lcom/baidu/tts/database/f;->a()Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "speechModel"

    .line 1
    invoke-static {v0}, Lcom/baidu/tts/tools/SqlTool;->sqlDropTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
