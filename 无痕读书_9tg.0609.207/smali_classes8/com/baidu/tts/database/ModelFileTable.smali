.class public Lcom/baidu/tts/database/ModelFileTable;
.super Ljava/lang/Object;
.source "ModelFileTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/database/ModelFileTable$Field;
    }
.end annotation


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "modelFile"

    const-string v1, "id=?"

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/baidu/tts/database/ModelFileTable$Field;->values()[Lcom/baidu/tts/database/ModelFileTable$Field;

    move-result-object v0

    const-string v1, "modelFile"

    invoke-static {v1, v0}, Lcom/baidu/tts/tools/SqlTool;->sqlCreateTable(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelFileBags;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/baidu/tts/database/f;

    new-instance v1, Lcom/baidu/tts/database/ModelFileTable$1;

    invoke-direct {v1, p1}, Lcom/baidu/tts/database/ModelFileTable$1;-><init>(Lcom/baidu/tts/client/model/ModelFileBags;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/tts/database/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/database/f$a;)V

    .line 4
    invoke-virtual {v0}, Lcom/baidu/tts/database/f;->a()Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "modelFile"

    .line 1
    invoke-static {v0}, Lcom/baidu/tts/tools/SqlTool;->sqlDropTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
